/*
 * Ayaka Mahjong Assistant — exact live cat-marker DOM/CSS resource.
 * No bitmap assets are used; every cat is an SVG DOM node.
 */
(function (global) {
    'use strict';

    const ROOT_ID = 'ayaka-cat-hud';
    const DEFAULT_DELAY = 300;
    const ACTION_FADE_IN_MS = 140;
    const ACTION_FADE_OUT_MS = 220;
    let root = null;
    let markers = [];
    let pendingTimer = null;
    let fadeTimer = null;
    let repositionFrame = 0;
    let openingFollowFrame = 0;
    let openingFollowGeneration = 0;
    // Melds change both the number and the spacing of hand nodes.  Laya
    // completes that layout over several animation frames, so a single
    // position sample can still belong to the hand before chi/peng/kan/kita.
    // Keep this bounded and event-driven: no polling is performed during
    // ordinary turns.
    let handLayoutFollowFrame = 0;
    let handLayoutFollowGeneration = 0;
    let handLayoutGeneration = 0;
    let renderedHandLayoutGeneration = 0;
    let handLayoutFollowDurationMs = 1100;
    let latestPayload = [];
    let cachedCanvas = null;
    let generation = 0;

    const palettes = [
        {
            edge: '#FFFBE4',
            background: 'linear-gradient(180deg, #FFE47A 0%, #FFD258 100%)',
            catFill: '#F2A52D',
            catStroke: '#FFFDF3',
            catStrokeWidth: '5',
            catEye: '#FFFFFF',
            catGlow: 'drop-shadow(0 0 3px rgba(255,255,238,.98)) drop-shadow(0 0 9px rgba(247,174,47,.96))',
            markerAnimation: 'ayakaGoldMarkerGlow 2.1s ease-in-out infinite',
            title: '#2B2C2E',
            titleStroke: '#FFFDF5',
            numberGlow: 'rgba(255,255,255,.72)',
            textShadow: 'rgba(255, 249, 217, .55)',
            glow: 'rgba(247, 190, 54, .62)',
            highlight: 'rgba(255, 255, 238, .82)'
        },
        {
            edge: '#9AD8FF',
            background: 'linear-gradient(180deg, #58AEEE 0%, #2F79BD 100%)',
            catFill: '#3E568B',
            catStroke: '#75ACD5',
            catStrokeWidth: '2.5',
            catEye: '#EFF9FF',
            catGlow: 'drop-shadow(0 0 5px rgba(53,105,168,.80))',
            markerAnimation: '',
            title: '#F4FBFF',
            titleStroke: 'rgba(18,68,108,.58)',
            numberGlow: 'rgba(235,249,255,.46)',
            textShadow: 'rgba(6, 40, 72, .72)',
            glow: 'rgba(48, 151, 232, .60)',
            highlight: 'rgba(231, 248, 255, .72)'
        },
        {
            edge: '#9AD8FF',
            background: 'linear-gradient(180deg, #58AEEE 0%, #2F79BD 100%)',
            catFill: '#53B6E2',
            catStroke: '#8EDCFA',
            catStrokeWidth: '2.5',
            catEye: '#F8FDFF',
            catGlow: 'drop-shadow(0 0 5px rgba(78,190,234,.82))',
            markerAnimation: '',
            title: '#F4FBFF',
            titleStroke: 'rgba(18,68,108,.58)',
            numberGlow: 'rgba(235,249,255,.46)',
            textShadow: 'rgba(6, 40, 72, .72)',
            glow: 'rgba(48, 151, 232, .60)',
            highlight: 'rgba(231, 248, 255, .72)'
        }
    ];

    const animationCss = `
        @keyframes ayakaGoldMarkerGlow {
            0%, 100% {
                box-shadow:
                    inset 0 1px 0 rgba(255,255,245,.92),
                    0 0 8px rgba(247,190,54,.58),
                    0 4px 9px rgba(0,0,0,.36);
            }
            50% {
                box-shadow:
                    inset 0 1px 0 #FFFFFF,
                    0 0 7px rgba(255,255,224,.96),
                    0 0 19px rgba(255,190,42,.92),
                    0 4px 10px rgba(0,0,0,.34);
            }
        }
        @keyframes ayakaGoldCatGlow {
            0%, 100% {
                filter:
                    drop-shadow(0 0 2px rgba(255,255,240,.96))
                    drop-shadow(0 0 7px rgba(247,174,47,.88));
                transform: rotate(-6deg) scale(1);
            }
            50% {
                filter:
                    drop-shadow(0 0 4px #FFFFFF)
                    drop-shadow(0 0 13px rgba(255,190,42,1));
                transform: rotate(-6deg) scale(1.055);
            }
        }
        @keyframes ayakaVictoryCatGlow {
            0%, 100% {
                filter:
                    drop-shadow(0 0 4px #FFFFFF)
                    drop-shadow(0 0 10px rgba(255,214,68,.98));
                transform: rotate(-6deg) scale(1.03);
            }
            50% {
                filter:
                    drop-shadow(0 0 7px #FFFFFF)
                    drop-shadow(0 0 20px rgba(255,198,28,1));
                transform: rotate(-6deg) scale(1.14);
            }
        }
        @keyframes ayakaCatSpark {
            0%, 22%, 100% { opacity: .28; transform: scale(.55) rotate(0deg); }
            48% { opacity: 1; transform: scale(1.12) rotate(45deg); }
            68% { opacity: .52; transform: scale(.74) rotate(76deg); }
        }
        @keyframes ayakaMarkerFadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes ayakaMarkerFadeOut {
            from { opacity: 1; }
            to { opacity: 0; }
        }
    `;

    function createMarker(markerId, palette) {
        const marker = document.createElement('div');
        marker.id = markerId;
        marker.dataset.ayakaTileMarker = 'true';
        marker._ayakaPalette = palette;
        Object.assign(marker.style, {
            position: 'absolute',
            display: 'none',
            boxSizing: 'border-box',
            width: 'clamp(28px, 1.55vw, 36px)',
            height: '15px',
            padding: '0',
            transform: 'translate(-50%, -100%)',
            border: `.75px solid ${palette.edge}`,
            borderRadius: '3px 3px 1.5px 1.5px',
            background: palette.background,
            color: palette.title,
            fontFamily: '"Segoe UI", "Microsoft YaHei UI", sans-serif',
            fontWeight: '800',
            lineHeight: '1',
            textAlign: 'center',
            whiteSpace: 'nowrap',
            overflow: 'visible',
            textRendering: 'geometricPrecision',
            WebkitFontSmoothing: 'antialiased',
            textShadow: [
                `0 .5px .5px ${palette.textShadow}`,
                `0 0 3px ${palette.glow}`
            ].join(','),
            boxShadow: [
                `inset 0 1px 0 ${palette.highlight}`,
                `0 0 6px ${palette.glow}`,
                '0 2px 5px rgba(0, 0, 0, .32)'
            ].join(','),
            animation: palette.markerAnimation || 'none'
        });

        const svgNs = 'http://www.w3.org/2000/svg';
        const crest = document.createElementNS(svgNs, 'svg');
        crest.setAttribute('viewBox', '0 0 70 50');
        crest.setAttribute('aria-hidden', 'true');
        Object.assign(crest.style, {
            position: 'absolute',
            top: '-10px',
            right: '0px',
            width: '14px',
            height: '11px',
            overflow: 'visible',
            filter: palette.catGlow,
            transform: 'rotate(-6deg)',
            transformOrigin: '50% 78%',
            animation: palette.markerAnimation
                ? 'ayakaGoldCatGlow 2.1s ease-in-out infinite'
                : 'none'
        });

        const catFace = document.createElementNS(svgNs, 'path');
        catFace.setAttribute('d', [
            'M 7 43',
            'C 3 39, 3 32, 6 25',
            'L 9 18 L 12 8 Q 14 3, 18 7 L 24 14',
            'C 31 11, 40 11, 47 14',
            'L 54 7 Q 58 3, 61 8 L 65 18',
            'C 69 24, 71 32, 68 39',
            'C 65 46, 58 49, 49 50',
            'L 22 50 C 15 50, 10 48, 7 43 Z'
        ].join(' '));
        catFace.setAttribute('fill', palette.catFill);
        catFace.setAttribute('stroke', palette.catStroke);
        catFace.setAttribute('stroke-width', palette.catStrokeWidth);
        catFace.setAttribute('stroke-linejoin', 'round');
        catFace.setAttribute('stroke-linecap', 'round');

        const leftEye = document.createElementNS(svgNs, 'circle');
        leftEye.setAttribute('cx', '26');
        leftEye.setAttribute('cy', '30');
        leftEye.setAttribute('r', '5.5');
        leftEye.setAttribute('fill', palette.catEye);
        const rightEye = document.createElementNS(svgNs, 'circle');
        rightEye.setAttribute('cx', '49');
        rightEye.setAttribute('cy', '30');
        rightEye.setAttribute('r', '5.5');
        rightEye.setAttribute('fill', palette.catEye);
        crest.append(catFace, leftEye, rightEye);

        const titleRow = document.createElement('div');
        titleRow.dataset.markerTitleRow = 'true';
        Object.assign(titleRow.style, {
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            gap: '2px',
            width: '100%',
            height: '100%',
            boxSizing: 'border-box',
            padding: '1px 2px 0'
        });

        const title = document.createElement('span');
        title.dataset.markerLabel = 'true';
        title.textContent = '切';
        Object.assign(title.style, {
            fontSize: '10px',
            fontWeight: '900',
            letterSpacing: '0',
            color: palette.title,
            WebkitTextStroke: `.4px ${palette.titleStroke}`,
            paintOrder: 'stroke fill'
        });

        const confidence = document.createElement('span');
        confidence.dataset.confidence = 'true';
        Object.assign(confidence.style, {
            fontSize: '9px',
            fontWeight: '800',
            letterSpacing: '0',
            fontVariantNumeric: 'tabular-nums',
            color: palette.title,
            textShadow: `0 0 2px ${palette.numberGlow}`
        });
        titleRow.append(title, confidence);
        marker.append(crest, titleRow);
        return marker;
    }

    function mount(parent) {
        const previous = document.getElementById(ROOT_ID);
        if (previous) previous.remove();

        root = document.createElement('div');
        root.id = ROOT_ID;
        root.dataset.ayakaHud = 'true';
        Object.assign(root.style, {
            position: 'fixed',
            inset: '0',
            zIndex: '2147483647',
            pointerEvents: 'none',
            overflow: 'hidden',
            userSelect: 'none'
        });

        const style = document.createElement('style');
        style.textContent = animationCss;
        markers = palettes.map((palette, index) =>
            createMarker(`${ROOT_ID}-marker-${index}`, palette)
        );
        root.append(style, ...markers);
        (parent || document.documentElement).appendChild(root);
        return root;
    }

    function findGameCanvas() {
        if (cachedCanvas && cachedCanvas.isConnected) return cachedCanvas;
        const preferred = document.getElementById('unity-canvas')
            || document.getElementById('layaCanvas');
        if (preferred) {
            cachedCanvas = preferred;
            return preferred;
        }
        const canvases = document.querySelectorAll('canvas');
        let best = null;
        let bestArea = 0;
        for (let index = 0; index < canvases.length; index += 1) {
            const rect = canvases[index].getBoundingClientRect();
            const area = Math.max(0, rect.width) * Math.max(0, rect.height);
            if (area > bestArea) {
                best = canvases[index];
                bestArea = area;
            }
        }
        cachedCanvas = best;
        return best;
    }

    function activeGameRect() {
        const canvas = findGameCanvas();
        if (!canvas) return null;
        const source = canvas.getBoundingClientRect();
        let left = Number(source.left) || 0;
        let top = Number(source.top) || 0;
        let width = Math.max(1, Number(source.width) || 1);
        let height = Math.max(1, Number(source.height) || 1);
        // The fullscreen renderer paints the background across the entire
        // phone, but Mahjong Soul keeps its interactive table, hand and
        // operation buttons inside a centred 16:9 logical stage. HUD anchors
        // must follow that stage instead of the decorative ultra-wide area.
        const gameAspect = 16 / 9;
        if (width / height > gameAspect + .002) {
            const fittedWidth = height * gameAspect;
            left += (width - fittedWidth) / 2;
            width = fittedWidth;
        } else if (width / height < gameAspect - .002) {
            const fittedHeight = width / gameAspect;
            top += (height - fittedHeight) / 2;
            height = fittedHeight;
        }
        return { left, top, width, height };
    }

    /** Prefer the live Laya hand node, including the dealer's opening hand. */
    function canonicalTileValue(value) {
        const text = value == null ? '' : String(value).trim();
        const aliases = {
            '5mr': '0m', '5pr': '0p', '5sr': '0s',
            'E': '1z', 'S': '2z', 'W': '3z', 'N': '4z',
            'P': '5z', 'F': '6z', 'C': '7z'
        };
        return aliases[text] || aliases[text.toUpperCase()] || text.toLowerCase();
    }

    function liveTileValue(tile) {
        try {
            return canonicalTileValue(
                tile && tile.val && typeof tile.val.toString === 'function'
                    ? tile.val.toString()
                    : ''
            );
        } catch (_) {
            return '';
        }
    }

    function liveTilePoint(tile, stage, canvasRect) {
        if (!tile || tile.valid === false || tile.visible === false
                || typeof tile.localToGlobal !== 'function') {
            return null;
        }
        let bounds = null;
        try {
            if (typeof tile.getSelfBounds === 'function') {
                bounds = tile.getSelfBounds();
            }
            if ((!bounds || !(Number(bounds.width) > 0))
                    && typeof tile.getBounds === 'function') {
                bounds = tile.getBounds();
            }
        } catch (_) {}
        const localX = bounds && Number(bounds.width) > 0
            ? Number(bounds.x || 0) + Number(bounds.width) * .5
            : Math.max(0, Number(tile.width) || 0) * .5;
        const localY = bounds ? Number(bounds.y || 0) : 0;
        const laya = global.Laya;
        const point = laya && laya.Point
            ? new laya.Point(localX, localY)
            : { x: localX, y: localY };
        const globalPoint = tile.localToGlobal(point, true) || point;
        const stageWidth = Number(stage.width)
            || Number(stage.designWidth)
            || 1920;
        const stageHeight = Number(stage.height)
            || Number(stage.designHeight)
            || 1080;
        const x = Number(globalPoint.x);
        const y = Number(globalPoint.y);
        if (!Number.isFinite(x) || !Number.isFinite(y)
                || stageWidth <= 0 || stageHeight <= 0) {
            return null;
        }
        return {
            x: canvasRect.left + canvasRect.width * x / stageWidth,
            y: canvasRect.top + canvasRect.height * y / stageHeight
        };
    }

    function liveHandAnchor(handIndex, expectedTile, preferDraw) {
        try {
            if (!Number.isInteger(handIndex) || handIndex < 0) return null;
            const desktopView = typeof view !== 'undefined'
                ? view
                : global.view;
            const manager = desktopView
                && desktopView.DesktopMgr
                && desktopView.DesktopMgr.Inst;
            const player = manager && manager.players && manager.players[0]
                ? manager.players[0]
                : manager && manager.mainrole;
            const hand = player && player.hand;
            const laya = global.Laya;
            const stage = laya && laya.stage;
            const canvasRect = activeGameRect();
            if (!hand || !stage || !canvasRect) {
                return null;
            }

            // The protocol hand is sorted before handIndex is calculated, but
            // Mahjong Soul's live Laya array briefly keeps its deal/animation
            // order.  That mismatch is most visible on the dealer's opening
            // fourteenth tile.  Resolve the actual node by tile identity first
            // and use the historical index only as a last-resort fallback.
            const expected = canonicalTileValue(expectedTile);
            const matches = [];
            if (expected) {
                for (let index = 0; index < hand.length; index += 1) {
                    const candidate = hand[index];
                    if (liveTileValue(candidate) !== expected) continue;
                    const point = liveTilePoint(candidate, stage, canvasRect);
                    if (point) matches.push({ index, point });
                }
            }
            if (matches.length) {
                if (preferDraw) {
                    // The drawn/dealer-opening tile is the separated rightmost
                    // matching node even while the underlying array is unsorted.
                    matches.sort((left, right) =>
                        right.point.x - left.point.x || right.index - left.index);
                } else {
                    matches.sort((left, right) =>
                        left.point.x - right.point.x || left.index - right.index);
                }
                return matches[0].point;
            }
            return liveTilePoint(hand[handIndex], stage, canvasRect);
        } catch (_) {
            return null;
        }
    }

    function positionMarker(marker, markerData) {
        const actionOnly = markerData.kind === 'action';
        // Resolve by the live tile identity on every discard decision. During
        // the dealer's opening animation followDealerOpening keeps sampling
        // this point until the layout settles, so a fixed pre-deal anchor can
        // no longer leave every concealed recommendation one tile to the left.
        if (!actionOnly) {
            const handPoint = liveHandAnchor(
                Number(markerData.handIndex),
                markerData.tile,
                markerData.preferDraw === true
            );
            if (handPoint) {
                marker.style.left = `${handPoint.x}px`;
                marker.style.top = `${handPoint.y}px`;
                return;
            }
        }
        const logicalX = Number(markerData.x);
        const logicalY = Number(markerData.y) - (actionOnly ? .32 : .68);
        const rect = activeGameRect();
        if (rect && Number.isFinite(logicalX) && Number.isFinite(logicalY)) {
            marker.style.left = `${rect.left + rect.width * logicalX / 16}px`;
            marker.style.top = `${rect.top + rect.height * logicalY / 9}px`;
            return;
        }
        marker.style.left = `${logicalX / 16 * 100}%`;
        marker.style.top = `${logicalY / 9 * 100}%`;
    }

    function repositionVisibleMarkers() {
        repositionFrame = 0;
        markers.forEach((marker, index) => {
            const markerData = latestPayload[index];
            if (markerData && marker.style.display !== 'none') {
                positionMarker(marker, markerData);
            }
        });
    }

    function scheduleReposition() {
        if (repositionFrame) global.cancelAnimationFrame(repositionFrame);
        repositionFrame = global.requestAnimationFrame(repositionVisibleMarkers);
    }

    /*
     * The dealer's separated fourteenth tile is still moving when the first
     * recommendation arrives. A one-frame anchor therefore becomes one slot
     * stale after the deal animation settles. Follow only this opening marker
     * at 30 Hz for a short bounded window; ordinary turns keep the zero-cost
     * event-driven path.
     */
    function followDealerOpening(generationAtStart) {
        if (openingFollowFrame) {
            global.cancelAnimationFrame(openingFollowFrame);
            openingFollowFrame = 0;
        }
        openingFollowGeneration = generationAtStart;
        const hasPerformanceClock = global.performance
            && typeof global.performance.now === 'function';
        const startedAt = hasPerformanceClock
            ? global.performance.now()
            : Date.now();
        let lastPositionAt = 0;
        const tick = function (timestamp) {
            if (generation !== generationAtStart
                    || openingFollowGeneration !== generationAtStart
                    || !latestPayload.some(item => item && item.openingDeal === true)) {
                openingFollowFrame = 0;
                return;
            }
            const now = hasPerformanceClock
                ? (Number(timestamp) || global.performance.now())
                : Date.now();
            if (now - lastPositionAt >= 32) {
                repositionVisibleMarkers();
                lastPositionAt = now;
            }
            if (now - startedAt < 900) {
                openingFollowFrame = global.requestAnimationFrame(tick);
            } else {
                openingFollowFrame = 0;
                repositionVisibleMarkers();
            }
        };
        openingFollowFrame = global.requestAnimationFrame(tick);
    }

    /*
     * Start a short 30 Hz follow after an observed chi/peng/kan/add-kan/kita.
     * The following recommendation may arrive while the tile sprites still
     * occupy the pre-meld slots.  Re-reading the live Laya nodes until the
     * layout settles makes the marker finish over the new hand, without
     * keeping an animation loop alive for the whole game.
     */
    function followHandLayout(generationAtStart) {
        if (handLayoutFollowFrame) {
            global.cancelAnimationFrame(handLayoutFollowFrame);
            handLayoutFollowFrame = 0;
        }
        handLayoutFollowGeneration = generationAtStart;
        const hasPerformanceClock = global.performance
            && typeof global.performance.now === 'function';
        const startedAt = hasPerformanceClock
            ? global.performance.now()
            : Date.now();
        let lastPositionAt = 0;
        const tick = function (timestamp) {
            if (generation !== generationAtStart
                    || handLayoutFollowGeneration !== generationAtStart
                    || !latestPayload.some(item => item && item.kind !== 'action')) {
                handLayoutFollowFrame = 0;
                return;
            }
            const now = hasPerformanceClock
                ? (Number(timestamp) || global.performance.now())
                : Date.now();
            if (now - lastPositionAt >= 32) {
                repositionVisibleMarkers();
                lastPositionAt = now;
            }
            if (now - startedAt < handLayoutFollowDurationMs) {
                handLayoutFollowFrame = global.requestAnimationFrame(tick);
            } else {
                handLayoutFollowFrame = 0;
                repositionVisibleMarkers();
            }
        };
        handLayoutFollowFrame = global.requestAnimationFrame(tick);
    }

    function noteHandLayoutChanged(actionName) {
        // Concealed-kan removes four hand sprites and then inserts the rinshan
        // draw. Its Laya layout settles later than chi/pon/open-kan. Keep the
        // already-visible marker attached to live tile nodes throughout that
        // bounded animation without delaying the recommendation itself.
        handLayoutFollowDurationMs = actionName === 'ActionAnGangAddGang'
            ? 2200
            : 1100;
        handLayoutGeneration += 1;
        return handLayoutGeneration;
    }

    function render(markerPayload) {
        if (!root || !root.isConnected) mount();
        latestPayload = (markerPayload || []).slice(0, 3);
        if (fadeTimer) {
            global.clearTimeout(fadeTimer);
            fadeTimer = null;
        }
        markers.forEach((marker, index) => {
            marker.dataset.ayakaFading = 'false';
            const markerData = markerPayload[index];
            if (!markerData) {
                marker.style.display = 'none';
                marker.style.animation = 'none';
                marker.dataset.ayakaMarkerKind = '';
                return;
            }

            const palette = marker._ayakaPalette;
            const crest = marker.querySelector(':scope > svg');
            const face = crest && crest.querySelector('path');
            const label = marker.querySelector('[data-marker-label="true"]');
            const titleRow = marker.querySelector('[data-marker-title-row="true"]');
            const confidence = marker.querySelector('[data-confidence="true"]');

            if (face) {
                face.setAttribute(
                    'fill',
                    markerData.bright ? '#FFD84A' : palette.catFill
                );
                face.setAttribute(
                    'stroke',
                    markerData.bright ? '#FFFFFF' : palette.catStroke
                );
                face.setAttribute(
                    'stroke-width',
                    markerData.bright ? '5.5' : palette.catStrokeWidth
                );
            }
            if (crest) {
                crest.style.animation = markerData.bright
                    ? 'ayakaVictoryCatGlow 1.35s ease-in-out infinite'
                    : (palette.markerAnimation
                        ? 'ayakaGoldCatGlow 2.1s ease-in-out infinite'
                        : 'none');
                crest.style.filter = markerData.bright
                    ? 'drop-shadow(0 0 6px #FFFFFF) drop-shadow(0 0 17px rgba(255,196,26,1))'
                    : palette.catGlow;
            }

            const actionOnly = markerData.kind === 'action';
            marker.dataset.ayakaMarkerKind = actionOnly ? 'action' : 'tile';
            if (actionOnly) {
                Object.assign(marker.style, {
                    width: '20px',
                    height: '15px',
                    border: '0',
                    borderRadius: '0',
                    background: 'transparent',
                    boxShadow: 'none',
                    textShadow: 'none',
                    animation: `ayakaMarkerFadeIn ${ACTION_FADE_IN_MS}ms ease-out both`
                });
                if (titleRow) titleRow.style.display = 'none';
                if (crest) {
                    Object.assign(crest.style, {
                        top: '0px',
                        right: '1px',
                        width: '18px',
                        height: '14px'
                    });
                }
            } else {
                Object.assign(marker.style, {
                    width: 'clamp(28px, 1.55vw, 36px)',
                    height: '15px',
                    border: `.75px solid ${palette.edge}`,
                    borderRadius: '3px 3px 1.5px 1.5px',
                    background: palette.background,
                    boxShadow: [
                        `inset 0 1px 0 ${palette.highlight}`,
                        `0 0 6px ${palette.glow}`,
                        '0 2px 5px rgba(0, 0, 0, .32)'
                    ].join(','),
                    textShadow: [
                        `0 .5px .5px ${palette.textShadow}`,
                        `0 0 3px ${palette.glow}`
                    ].join(','),
                    animation: palette.markerAnimation
                        ? `ayakaMarkerFadeIn ${ACTION_FADE_IN_MS}ms ease-out both, ${palette.markerAnimation}`
                        : `ayakaMarkerFadeIn ${ACTION_FADE_IN_MS}ms ease-out both`
                });
                if (titleRow) titleRow.style.display = 'flex';
                if (label) label.textContent = markerData.label || '切';
                if (confidence) confidence.textContent = markerData.confidence;
                if (crest) {
                    Object.assign(crest.style, {
                        top: '-10px',
                        right: '0px',
                        width: '14px',
                        height: '11px'
                    });
                }
            }

            positionMarker(marker, markerData);
            marker.style.display = 'block';
        });
        // Unity may settle its canvas rect one frame after a decision update.
        scheduleReposition();
        if (latestPayload.some(item => item && item.openingDeal === true)) {
            followDealerOpening(generation);
        }
        if (renderedHandLayoutGeneration !== handLayoutGeneration) {
            renderedHandLayoutGeneration = handLayoutGeneration;
            followHandLayout(generation);
        }
    }

    function show(markerPayload, delay) {
        clearTimeout(pendingTimer);
        generation += 1;
        const currentGeneration = generation;
        const wait = delay === undefined ? DEFAULT_DELAY : Math.max(0, delay);
        pendingTimer = global.setTimeout(function () {
            if (currentGeneration !== generation) return;
            pendingTimer = null;
            render((markerPayload || []).slice(0, 3));
        }, wait);
    }

    function showImmediate(markerPayload) {
        clearTimeout(pendingTimer);
        pendingTimer = null;
        generation += 1;
        render((markerPayload || []).slice(0, 3));
    }

    function clear() {
        clearTimeout(pendingTimer);
        pendingTimer = null;
        generation += 1;
        openingFollowGeneration = generation;
        if (openingFollowFrame) global.cancelAnimationFrame(openingFollowFrame);
        openingFollowFrame = 0;
        handLayoutFollowGeneration = generation;
        if (handLayoutFollowFrame) global.cancelAnimationFrame(handLayoutFollowFrame);
        handLayoutFollowFrame = 0;
        latestPayload = [];
        if (fadeTimer) return;

        let hasVisibleMarker = false;
        markers.forEach(marker => {
            const isVisible = marker.style.display !== 'none';
            if (isVisible) {
                hasVisibleMarker = true;
                marker.dataset.ayakaFading = 'true';
                marker.style.animation =
                    `ayakaMarkerFadeOut ${ACTION_FADE_OUT_MS}ms ease-in both`;
            } else {
                marker.style.display = 'none';
                marker.style.animation = 'none';
                marker.dataset.ayakaMarkerKind = '';
            }
        });

        if (hasVisibleMarker) {
            fadeTimer = global.setTimeout(function () {
                fadeTimer = null;
                markers.forEach(marker => {
                    if (marker.dataset.ayakaFading === 'true') {
                        marker.style.display = 'none';
                        marker.style.animation = 'none';
                        marker.dataset.ayakaFading = 'false';
                        marker.dataset.ayakaMarkerKind = '';
                    }
                });
            }, ACTION_FADE_OUT_MS + 20);
        }
    }

    function destroy() {
        global.clearTimeout(pendingTimer);
        global.clearTimeout(fadeTimer);
        if (repositionFrame) global.cancelAnimationFrame(repositionFrame);
        if (openingFollowFrame) global.cancelAnimationFrame(openingFollowFrame);
        if (handLayoutFollowFrame) global.cancelAnimationFrame(handLayoutFollowFrame);
        pendingTimer = null;
        fadeTimer = null;
        repositionFrame = 0;
        openingFollowFrame = 0;
        handLayoutFollowFrame = 0;
        latestPayload = [];
        cachedCanvas = null;
        generation += 1;
        if (root) root.remove();
        root = null;
        markers = [];
        global.removeEventListener('resize', scheduleReposition);
    }

    global.addEventListener('resize', scheduleReposition, { passive: true });
    mount();
    global.AyakaCatHUD = Object.freeze({
        mount,
        show,
        showImmediate,
        noteHandLayoutChanged,
        clear,
        destroy,
        defaultDelay: DEFAULT_DELAY,
        actionFadeIn: ACTION_FADE_IN_MS,
        actionFadeOut: ACTION_FADE_OUT_MS
    });
})(window);
