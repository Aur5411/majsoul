(function () {
  "use strict";
  if (window.__qiuhuiBridgeInstalled) return;
  Object.defineProperty(window, "__qiuhuiBridgeInstalled", { value: true });

  var NativeWebSocket = window.WebSocket;
  var nextSocketId = 0;
  var maxFrameBytes = 4 * 1024 * 1024;
  var frameQueue = [];
  var frameQueueBusy = false;
  // This is a stateful protocol. The high-water mark controls Worker pacing,
  // but frames are never evicted: losing one action corrupts all observations
  // until a later ActionNewRound happens to rebuild the state.
  var maxQueuedFrames = 128;
  var observedFrameQueue = [];
  var observedFrameDrainScheduled = false;
  var frameWorker = null;
  var frameWorkerReady = false;
  var frameWorkerUnavailable = false;
  var pendingWorkerFrames = 0;
  var configuredRenderWidth = Number(window.__qiuhuiRenderWidth) || 2304;
  var configuredRenderHeight = Number(window.__qiuhuiRenderHeight) || 1296;
  var highQualityWidth = configuredRenderWidth;
  var highQualityHeight = configuredRenderHeight;
  var remoteInferenceActive = window.__qiuhuiRemoteInferenceActive === true;
  var fullscreenAdaptEnabled =
    window.__qiuhuiFullscreenAdaptEnabled === true;
  var fullSkinEnabled = window.__qiuhuiFullSkinEnabled === true;
  var wideViewportEnabled = window.__qiuhuiWideViewportEnabled === true;
  var resolutionProfileTag = fullscreenAdaptEnabled
      ? (configuredRenderWidth === 2800 && configuredRenderHeight === 1260
      ? "personal-iqoo12-native-event-driven-6.9.2"
      : "public-fullscreen-2k-adaptive-1.6.8")
    : wideViewportEnabled
      ? "remote-iqoo12-20x9-6.6.8"
      : "remote-4k-strict-6.6.8";
  var resolutionHookAttempts = 0;
  var initialResolutionApplied = false;
  var observedResolutionCanvas = null;
  var resolutionMutationObserver = null;
  var resolutionRepairScheduled = false;
  var cachedGameCanvas = null;
  var roundConfirmEventId = "";
  var roundConfirmTarget = null;
  var roundConfirmStage = "";
  var openingReadyDecision = "";
  var openingReadySignature = "";
  var openingReadySince = 0;
  var activeNativeDecision = "";
  var autoSubmitStartedAt = 0;
  var autoSubmitDecision = "";
  var autoSubmitKind = "";
  var animationPriorityUntil = 0;
  var animationDrainPacingUntil = 0;
  var binaryBridgeEnabled = window.__qiuhuiBinaryBridgeEnabled === true;
  var roundEndActions = [
    "ActionHule",
    "ActionNoTile",
    "ActionLiuJu",
    "ActionEndGame"
  ];
  var newRoundActions = ["ActionNewRound"];
  var finalResultNotifications = ["NotifyGameEndResult"];
  var operationTransitionActions = [
    "ActionDiscardTile",
    "ActionDealTile",
    "ActionChiPengGang",
    "ActionAnGangAddGang",
    "ActionBaBei"
  ];
  // These actions cause Laya to remove/re-space hand sprites after the
  // packet is received.  The HUD gets a small, bounded live-coordinate
  // follow for its next recommendation so it cannot remain in a pre-meld
  // hand slot.  Discard/deal intentionally stay out of this list.
  var handLayoutTransitionActions = [
    "ActionChiPengGang",
    "ActionAnGangAddGang",
    "ActionBaBei"
  ];
  var ownOperationRequests = [
    "inputChiPengGang",
    "inputOperation"
  ];
  var fullSkinFakeRequests = [
    "changeMainCharacter",
    "changeCharacterSkin",
    "changeCharacterView",
    "changeCommonView",
    "updateCharacterSort",
    "useTitle",
    "setLoadingImage",
    "saveCommonViews",
    "useCommonView",
    "receiveCharacterRewards",
    "addFinishedEnding",
    "setRandomCharacter"
  ];
  var fullSkinResponseRequests = [
    "fetchInfo",
    "login",
    "emailLogin",
    "oauth2Login",
    "fetchAccountInfo",
    "fetchCharacterInfo",
    "fetchBagInfo",
    "fetchTitleList",
    "fetchAllCommonViews",
    "fetchRoom",
    "createRoom",
    "joinRoom",
    "authGame"
  ];
  var fullSkinNotifications = [
    "NotifyRoomPlayerUpdate",
    "NotifyAccountUpdate"
  ];
  var authGameProgressRequests = ["enterGame", "syncGame"];
  var pendingSkinMessages = {};
  var pendingSkinResponseIds = {};
  var nextSkinMessageId = 0;

  function postRaw(value) {
    try {
      window.qiuhuiBridge.postMessage(value);
      return true;
    } catch (_) {
      // The page must remain usable even when the native bridge is unavailable.
      return false;
    }
  }

  function post(value) {
    return postRaw(JSON.stringify(value));
  }

  function encodeBase64(data) {
    var bytes = null;
    if (data instanceof ArrayBuffer) {
      bytes = new Uint8Array(data);
    } else if (ArrayBuffer.isView(data)) {
      bytes = new Uint8Array(data.buffer, data.byteOffset, data.byteLength);
    }
    if (!bytes) return "";
    var parts = [];
    var offset = 0;
    var chunkSize = 0xc000;
    while (offset < bytes.length) {
      var end = Math.min(bytes.length, offset + chunkSize);
      parts.push(btoa(String.fromCharCode.apply(null, bytes.subarray(offset, end))));
      offset = end;
    }
    return parts.join("");
  }

  function decodeBase64(value) {
    try {
      var binary = atob(String(value || ""));
      var output = new Uint8Array(binary.length);
      for (var index = 0; index < binary.length; index += 1) {
        output[index] = binary.charCodeAt(index) & 0xff;
      }
      return output.buffer;
    } catch (_) {
      return null;
    }
  }

  function isLiqiRequest(data) {
    var bytes = data instanceof ArrayBuffer
      ? new Uint8Array(data)
      : ArrayBuffer.isView(data)
        ? new Uint8Array(data.buffer, data.byteOffset, data.byteLength)
        : null;
    return !!(bytes && bytes.length >= 4 && bytes[0] === 2);
  }

  function isLiqiResponse(data) {
    var bytes = data instanceof ArrayBuffer
      ? new Uint8Array(data)
      : ArrayBuffer.isView(data)
        ? new Uint8Array(data.buffer, data.byteOffset, data.byteLength)
        : null;
    return !!(bytes && bytes.length >= 4 && bytes[0] === 3);
  }

  function isLiqiNotification(data) {
    var bytes = data instanceof ArrayBuffer
      ? new Uint8Array(data)
      : ArrayBuffer.isView(data)
        ? new Uint8Array(data.buffer, data.byteOffset, data.byteLength)
        : null;
    return !!(bytes && bytes.length >= 3 && bytes[0] === 1);
  }

  function liqiMessageId(data) {
    var bytes = data instanceof ArrayBuffer
      ? new Uint8Array(data)
      : ArrayBuffer.isView(data)
        ? new Uint8Array(data.buffer, data.byteOffset, data.byteLength)
        : null;
    if (!bytes || bytes.length < 3) return -1;
    return (bytes[1] & 0xff) | ((bytes[2] & 0xff) << 8);
  }

  function fullSkinFakeRequestIn(data) {
    if (!fullSkinEnabled || !isLiqiRequest(data)) return false;
    return !!actionNameIn(data, fullSkinFakeRequests);
  }

  function fullSkinResponseRequestIn(data) {
    if (!fullSkinEnabled || !isLiqiRequest(data)) return false;
    return actionNameIn(data, fullSkinResponseRequests);
  }

  function postSkinFrame(kind, socketId, data, token) {
    if (!fullSkinEnabled) return false;
    var encoded = encodeBase64(data);
    if (!encoded) return false;
    var payload = {
      kind: kind,
      socketId: socketId,
      data: encoded
    };
    if (token) payload.token = token;
    return post(payload);
  }

  Object.defineProperty(window, "__qiuhuiSkinUnlockReceive", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (json) {
      if (!fullSkinEnabled) return false;
      try {
        var payload = JSON.parse(String(json || ""));
        if (payload.kind === "skin_response_result") {
          var pending = pendingSkinMessages[payload.token];
          if (!pending) return false;
          delete pendingSkinMessages[payload.token];
          if (pending.timeoutId) clearTimeout(pending.timeoutId);
          if (payload.data) {
            var rewritten = decodeBase64(payload.data);
            pending.dispatch(rewritten || pending.data);
          } else {
            pending.dispatch(pending.data);
          }
          return true;
        }
        if (payload.fake === true && payload.responses && payload.socketId) {
          for (var index = 0; index < payload.responses.length; index += 1) {
            var frame = decodeBase64(payload.responses[index]);
            if (frame && pendingSkinMessages["socket:" + payload.socketId]) {
              pendingSkinMessages["socket:" + payload.socketId].dispatch(frame);
            }
          }
          return true;
        }
      } catch (_) {}
      return false;
    }
  });

  Object.defineProperty(window, "__qiuhuiSetActiveDecision", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (decisionId) {
      activeNativeDecision = String(decisionId == null ? "" : decisionId);
      return activeNativeDecision.length > 0;
    }
  });

  Object.defineProperty(window, "__qiuhuiCanFallbackDecision", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (decisionId) {
      return activeNativeDecision.length > 0
        && activeNativeDecision === String(decisionId == null ? "" : decisionId);
    }
  });

  Object.defineProperty(window, "__qiuhuiClearRecommendations", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function () {
      activeNativeDecision = "";
      try {
        if (window.AyakaCatHUD && typeof window.AyakaCatHUD.clear === "function") {
          window.AyakaCatHUD.clear();
        }
      } catch (_) {}
      return true;
    }
  });

  Object.defineProperty(window, "__qiuhuiHasOperationRecommendations", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function () {
      return activeNativeDecision.length > 0;
    }
  });

  Object.defineProperty(window, "__qiuhuiDismissOperationRecommendations", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: window.__qiuhuiClearRecommendations
  });

  function animationPriorityActive() {
    return animationPriorityRemaining() > 0;
  }

  function animationPriorityRemaining() {
    if (typeof performance === "undefined") return 0;
    return Math.max(0, animationPriorityUntil - performance.now());
  }

  Object.defineProperty(window, "__qiuhuiPrioritizeAnimation", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (milliseconds) {
      var duration = Math.max(0, Math.min(15000, Number(milliseconds) || 0));
      if (typeof performance !== "undefined") {
        // Keep assistant protocol work out of the complete protected window.
        // Frames stay ordered and are drained progressively afterwards, so a
        // new-round packet cannot overtake the result transition.
        var bridgePause = Math.min(duration, 8000);
        var now = performance.now();
        animationPriorityUntil = Math.max(
          animationPriorityUntil, now + bridgePause);
        animationDrainPacingUntil = Math.max(
          animationDrainPacingUntil, animationPriorityUntil + 600);
      }
      // Keep the canvas allocation stable during the win/meld animation.
      // Resizing a live Unity framebuffer is itself a large GPU stall. The
      // assistant-side protocol conversion is deferred instead, leaving the
      // renderer and audio thread uninterrupted at the selected resolution.
      return true;
    }
  });

  Object.defineProperty(window, "__qiuhuiSetRemoteInferenceActive", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (active) {
      remoteInferenceActive = active === true;
      if (!qualityProfileActive()) {
        if (resolutionMutationObserver) {
          resolutionMutationObserver.disconnect();
          resolutionMutationObserver = null;
          observedResolutionCanvas = null;
        }
        return true;
      }
      animationPriorityUntil = 0;
      animationDrainPacingUntil = 0;
      initialResolutionApplied = false;
      startResolutionEnforcement();
      if (frameQueue.length && !frameQueueBusy) {
        frameQueueBusy = true;
        setTimeout(flushFrame, 0);
      }
      scheduleObservedFrameDrain();
      return true;
    }
  });

  function actionNameIn(data, actionNames) {
    var bytes = null;
    if (data instanceof ArrayBuffer) {
      bytes = new Uint8Array(data);
    } else if (ArrayBuffer.isView(data)) {
      bytes = new Uint8Array(data.buffer, data.byteOffset, data.byteLength);
    }
    if (!bytes) return "";
    // ActionPrototype.name is near the beginning of a Liqi notification.
    // Limiting the scan avoids adding measurable work to ordinary frames.
    var limit = Math.min(bytes.length, 1024);
    for (var actionIndex = 0;
         actionIndex < actionNames.length;
         actionIndex += 1) {
      var action = actionNames[actionIndex];
      for (var offset = 0; offset <= limit - action.length; offset += 1) {
        var matched = true;
        for (var character = 0;
             character < action.length;
             character += 1) {
          if (bytes[offset + character] !== action.charCodeAt(character)) {
            matched = false;
            break;
          }
        }
        if (matched) {
          // Match a complete Liqi method/action token. Without this boundary
          // check, "login" also matched the periodic "loginBeat" heartbeat,
          // routing every heartbeat through the skin response path and
          // occasionally delaying game audio/network work.
          var before = offset > 0 ? bytes[offset - 1] : 0;
          var afterIndex = offset + action.length;
          var after = afterIndex < bytes.length ? bytes[afterIndex] : 0;
          var beforeIsIdentifier =
            (before >= 48 && before <= 57)
            || (before >= 65 && before <= 90)
            || (before >= 97 && before <= 122)
            || before === 95;
          var afterIsIdentifier =
            (after >= 48 && after <= 57)
            || (after >= 65 && after <= 90)
            || (after >= 97 && after <= 122)
            || after === 95;
          if (!beforeIsIdentifier && !afterIsIdentifier) return action;
        }
      }
    }
    return "";
  }

  function roundEndActionIn(data) {
    return actionNameIn(data, roundEndActions);
  }

  function actionAnimationPause(action) {
    // The page itself is the bottleneck on high-refresh phones. Do not hold
    // assistant frames behind meld/kan/kita animations; send them to native/PC
    // immediately so the recommendation has no artificial empty window.
    if (action === "ActionChiPengGang") return 0;
    if (action === "ActionAnGangAddGang") return 0;
    if (action === "ActionBaBei") return 0;
    return 0;
  }

  function protectNativeForOwnOperation(data) {
    var request = actionNameIn(data, ownOperationRequests);
    if (!request) return false;
    // Do not pause the page-side frame queue here. The game has already sent
    // its request and must receive the resulting action without an artificial
    // bridge delay. Native only cancels stale inference and freezes assistant
    // UI work while the local meld animation starts.
    // inputOperation also carries ordinary discards. Never apply the local
    // meld headroom to it, or a fast next draw can inherit a needless 1.5 s
    // inference delay. Chi/pon/open-kan use inputChiPengGang and keep the early
    // protection; concealed-kan/kita receive precise guards from their Action.
    post({
      kind: "local_action_submitted",
      milliseconds: 0
    });
    return true;
  }

  function ensureFrameWorker() {
    if (frameWorker || frameWorkerUnavailable) return frameWorker;
    try {
      var workerSource = [
        '"use strict";',
        'function encode(buffer){',
        'var bytes=new Uint8Array(buffer),parts=[],offset=0,chunkSize=0xc000;',
        'while(offset<bytes.length){',
        'var end=Math.min(bytes.length,offset+chunkSize);',
        'parts.push(btoa(String.fromCharCode.apply(null,bytes.subarray(offset,end))));',
        'offset=end;',
        '}',
        'return parts.join("");',
        '}',
        'function packet(buffer,socketId,direction){',
        'var output=new ArrayBuffer(buffer.byteLength+12),view=new DataView(output);',
        'view.setUint8(0,0x51);view.setUint8(1,0x48);view.setUint8(2,1);',
        'view.setUint8(3,direction==="in"?1:0);',
        'view.setUint32(4,socketId>>>0,true);',
        'view.setUint32(8,buffer.byteLength>>>0,true);',
        'new Uint8Array(output,12).set(new Uint8Array(buffer));',
        'return output;',
        '}',
        'self.onmessage=function(event){',
        'var item=event.data;',
        'try{',
        'if(item.control){self.postMessage(item.control);}',
        'else if(item.binary){',
        'var framed=packet(item.buffer,item.socketId,item.direction);',
        'self.postMessage({kind:"binary",buffer:framed},[framed]);',
        '}else{',
        'self.postMessage(JSON.stringify({kind:"frame",socketId:item.socketId,',
        'direction:item.direction,data:encode(item.buffer)}));',
        '}',
        '}catch(_){self.postMessage("");}',
        '};',
        'self.postMessage("__ready__");'
      ].join("\n");
      var workerUrl = URL.createObjectURL(
        new Blob([workerSource], { type: "application/javascript" })
      );
      frameWorker = new Worker(workerUrl);
      URL.revokeObjectURL(workerUrl);
      frameWorker.onmessage = function (event) {
        if (event.data === "__ready__") {
          frameWorkerReady = true;
          return;
        }
        pendingWorkerFrames = Math.max(0, pendingWorkerFrames - 1);
        if (event.data
            && event.data.kind === "binary"
            && event.data.buffer instanceof ArrayBuffer) {
          postRaw(event.data.buffer);
          return;
        }
        if (typeof event.data === "string" && event.data.length > 0) {
          postRaw(event.data);
        }
      };
      frameWorker.onerror = function () {
        try {
          frameWorker.terminate();
        } catch (_) {}
        frameWorker = null;
        frameWorkerReady = false;
        frameWorkerUnavailable = true;
        pendingWorkerFrames = 0;
      };
    } catch (_) {
      frameWorker = null;
      frameWorkerUnavailable = true;
    }
    return frameWorker;
  }

  function enqueueWorkerControl(value) {
    var serialized = JSON.stringify(value);
    var worker = ensureFrameWorker();
    if (worker
        && frameWorkerReady
        && (frameQueueBusy
          || frameQueue.length > 0
          || pendingWorkerFrames >= maxQueuedFrames)) {
      // Controls and binary frames share one protocol timeline. Never let a
      // round-end hint jump ahead of older frames waiting for Worker capacity.
      frameQueue.push({ control: serialized });
      if (!frameQueueBusy) {
        frameQueueBusy = true;
        setTimeout(flushFrame, 0);
      }
      return true;
    }
    if (worker && frameWorkerReady) {
      try {
        pendingWorkerFrames += 1;
        worker.postMessage({ control: serialized });
        return true;
      } catch (_) {
        pendingWorkerFrames = Math.max(0, pendingWorkerFrames - 1);
      }
    }
    return postRaw(serialized);
  }

  function safeUrl(value) {
    try {
      var url = new URL(String(value), location.href);
      return url.origin + url.pathname;
    } catch (_) {
      return "";
    }
  }

  function isTextEditor(element) {
    if (!element) return false;
    var tag = String(element.tagName || "").toLowerCase();
    return tag === "input"
      || tag === "textarea"
      || element.isContentEditable === true;
  }

  function dismissKeyboard() {
    var active = document.activeElement;
    if (isTextEditor(active) && typeof active.blur === "function") {
      active.blur();
    }
    post({ kind: "keyboard_hide" });
  }

  function qualityProfileActive() {
    return remoteInferenceActive || fullscreenAdaptEnabled;
  }

  function viewportAspect() {
    // screen dimensions remain stable when OriginOS transient bars, the IME,
    // or the display cutout changes innerWidth/innerHeight. Using the latter
    // made the live WebGL buffer repeatedly shrink and grow during play.
    var width = Number(screen.width) || Number(window.innerWidth) || 16;
    var height = Number(screen.height) || Number(window.innerHeight) || 9;
    if (height > width) {
      var rotated = width;
      width = height;
      height = rotated;
    }
    return Math.max(1.35, Math.min(2.45, width / Math.max(1, height)));
  }

  function refreshAdaptiveResolution() {
    if (!fullscreenAdaptEnabled) return false;
    var aspect = viewportAspect();
    var baseAspect = configuredRenderWidth / configuredRenderHeight;
    var width;
    var height;
    if (aspect >= baseAspect) {
      width = configuredRenderWidth;
      height = Math.round(width / aspect);
    } else {
      height = configuredRenderHeight;
      width = Math.round(height * aspect);
    }
    // Preserve each device's actual landscape ratio. The lower bounds cover
    // square-ish foldables through ultra-wide phones without forcing a
    // handset-specific 16:9/20:9 drawing buffer.
    width = Math.max(1280, Math.min(4096, width));
    height = Math.max(640, Math.min(2304, height));
    if ((width & 1) !== 0) width += 1;
    if ((height & 1) !== 0) height += 1;
    if (highQualityWidth === width && highQualityHeight === height) {
      return false;
    }
    highQualityWidth = width;
    highQualityHeight = height;
    initialResolutionApplied = false;
    return true;
  }

  function installFullscreenStyle() {
    var viewport = document.querySelector('meta[name="viewport"]');
    if (!viewport) {
      viewport = document.createElement("meta");
      viewport.name = "viewport";
      (document.head || document.documentElement).appendChild(viewport);
    }
    viewport.content =
      "width=device-width,height=device-height,initial-scale=1,maximum-scale=1," +
      "user-scalable=no,viewport-fit=cover";
    var style = document.getElementById("__qiuhuiFullscreenStyle");
    if (!fullscreenAdaptEnabled) {
      if (style && style.parentNode) style.parentNode.removeChild(style);
      return;
    }
    if (!style) {
      style = document.createElement("style");
      style.id = "__qiuhuiFullscreenStyle";
      (document.head || document.documentElement).appendChild(style);
    }
    style.textContent =
      "html,body{width:100vw!important;height:100vh!important;" +
      "margin:0!important;padding:0!important;overflow:hidden!important;}" +
      "#unity-container,#game-container,#layaContainer{" +
      "position:fixed!important;inset:0!important;width:100vw!important;" +
      "height:100vh!important;max-width:none!important;max-height:none!important;}" +
      "#unity-canvas,#layaCanvas{position:absolute!important;inset:0!important;" +
      "width:100vw!important;height:100vh!important;max-width:none!important;" +
      "max-height:none!important;object-fit:fill!important;}";
  }

  function forceWideCanvasLayout() {
    if (!fullscreenAdaptEnabled) return false;
    var canvas = findGameCanvas();
    if (!canvas) return false;
    try {
      canvas.style.setProperty("position", "absolute", "important");
      canvas.style.setProperty("left", "0", "important");
      canvas.style.setProperty("top", "0", "important");
      canvas.style.setProperty("width", "100vw", "important");
      canvas.style.setProperty("height", "100vh", "important");
      canvas.style.setProperty("max-width", "none", "important");
      canvas.style.setProperty("max-height", "none", "important");
      canvas.style.setProperty("object-fit", "fill", "important");
      var parent = canvas.parentElement;
      var depth = 0;
      while (parent && parent !== document.body && depth < 4) {
        if (depth === 0) {
          parent.style.setProperty("position", "fixed", "important");
          parent.style.setProperty("inset", "0", "important");
          parent.style.setProperty("transform", "none", "important");
        }
        parent.style.setProperty("width", "100vw", "important");
        parent.style.setProperty("height", "100vh", "important");
        parent.style.setProperty("max-width", "none", "important");
        parent.style.setProperty("max-height", "none", "important");
        parent.style.setProperty("overflow", "hidden", "important");
        parent = parent.parentElement;
        depth += 1;
      }
      scheduleViewportReport();
      return true;
    } catch (_) {
      return false;
    }
  }

  function installUnityCreationHook() {
    var currentFactory = null;

    function wrappedFactory(factory) {
      if (typeof factory !== "function"
          || factory.__qiuhuiUnityCreation === true) {
        return factory;
      }
      var wrapped = function (canvas, config, progress) {
        try {
          config = config || {};
          if (qualityProfileActive()) {
            config.matchWebGLToCanvasSize = false;
            config.devicePixelRatio = 1;
            config.webglContextAttributes = Object.assign(
              {},
              config.webglContextAttributes || {},
              {
                alpha: false,
                antialias: false,
                desynchronized: true,
                powerPreference: "high-performance",
                preserveDrawingBuffer: false
              });
          }
        } catch (_) {}
        var result = factory.call(this, canvas, config, progress);
        try {
          if (result && typeof result.then === "function") {
            result.then(function () {
              initialResolutionApplied = false;
              applyHighQualityResolution();
              setTimeout(applyHighQualityResolution, 120);
              setTimeout(applyHighQualityResolution, 600);
            });
          }
        } catch (_) {}
        return result;
      };
      Object.defineProperty(wrapped, "__qiuhuiUnityCreation", { value: true });
      return wrapped;
    }

    try {
      if (typeof window.createUnityInstance === "function") {
        window.createUnityInstance = wrappedFactory(window.createUnityInstance);
        return;
      }
      Object.defineProperty(window, "createUnityInstance", {
        configurable: true,
        enumerable: true,
        get: function () {
          return currentFactory;
        },
        set: function (value) {
          currentFactory = wrappedFactory(value);
        }
      });
    } catch (_) {}
  }

  function installWideViewportHooks() {
    if (!wideViewportEnabled) return true;
    var landscapePatched = false;
    /*
     * Keep Mahjong Soul's original calculate16by9Size wrapper available, then
     * expand only the WebGL surface. Assistant HUD/taps use the 20:9 surface
     * with a small native-like side inset instead of the old centred 16:9 box.
     */
    try {
      var landscape = window.applyLandscapeMode;
      if (typeof landscape === "function") {
        if (landscape.__qiuhuiWideViewport !== true) {
          var wrappedLandscape = function () {
            var result = landscape.apply(this, arguments);
            forceWideCanvasLayout();
            return result;
          };
          Object.defineProperty(wrappedLandscape, "__qiuhuiWideViewport", {
            value: true
          });
          window.applyLandscapeMode = wrappedLandscape;
        }
        landscapePatched = true;
      }
    } catch (_) {}
    var layoutApplied = forceWideCanvasLayout();
    return landscapePatched || layoutApplied;
  }

  function storeHighQualityResolution() {
    refreshAdaptiveResolution();
    try {
      var saved = JSON.parse(localStorage.getItem("unityResolution") || "null");
      if (!saved
          || Number(saved.width) !== highQualityWidth
          || Number(saved.height) !== highQualityHeight) {
        localStorage.setItem("unityResolution", JSON.stringify({
          width: highQualityWidth,
          height: highQualityHeight
        }));
      }
    } catch (_) {
      // Storage may be temporarily unavailable during an early document phase.
    }
  }

  function findGameCanvas() {
    if (cachedGameCanvas && cachedGameCanvas.isConnected) {
      return cachedGameCanvas;
    }
    var preferred = document.getElementById("unity-canvas")
      || document.getElementById("layaCanvas");
    if (preferred) {
      cachedGameCanvas = preferred;
      return preferred;
    }
    var canvases = document.querySelectorAll("canvas");
    var best = null;
    var bestArea = 0;
    for (var index = 0; index < canvases.length; index += 1) {
      var rect = canvases[index].getBoundingClientRect();
      var area = Math.max(0, rect.width) * Math.max(0, rect.height);
      if (area > bestArea) {
        best = canvases[index];
        bestArea = area;
      }
    }
    cachedGameCanvas = best;
    return best;
  }

  function applyHighQualityResolution() {
    refreshAdaptiveResolution();
    storeHighQualityResolution();
    var canvas = findGameCanvas();
    if (!canvas) {
      return false;
    }
    if (Number(canvas.width) === highQualityWidth
        && Number(canvas.height) === highQualityHeight) {
      initialResolutionApplied = true;
      observeResolutionChanges(canvas);
      return true;
    }
    try {
      // Always go through Mahjong Soul's own resolution controller when it is
      // available. Directly assigning canvas.width/height can be overwritten
      // by Unity on the next frame, which made the old "4K" value cosmetic.
      var controller = typeof ResolutionController !== "undefined"
        ? ResolutionController
        : null;
      if (controller && typeof controller.setResolution === "function") {
        controller.setResolution(highQualityWidth, highQualityHeight);
      } else {
        canvas.width = highQualityWidth;
        canvas.height = highQualityHeight;
      }
      // Some wrapper revisions update only the stored resolution. Keep the
      // actual WebGL drawing buffer in sync after the controller has run.
      if (Number(canvas.width) !== highQualityWidth) {
        canvas.width = highQualityWidth;
      }
      if (Number(canvas.height) !== highQualityHeight) {
        canvas.height = highQualityHeight;
      }
    } catch (_) {
      canvas.width = highQualityWidth;
      canvas.height = highQualityHeight;
    }
    initialResolutionApplied = Number(canvas.width) === highQualityWidth
      && Number(canvas.height) === highQualityHeight;
    observeResolutionChanges(canvas);
    if (wideViewportEnabled) forceWideCanvasLayout();
    return initialResolutionApplied;
  }

  function scheduleResolutionRepair() {
    if (resolutionRepairScheduled || !qualityProfileActive()) return;
    resolutionRepairScheduled = true;
    var repair = function () {
      resolutionRepairScheduled = false;
      if (!qualityProfileActive()) return;
      if (animationPriorityActive()) {
        setTimeout(
          scheduleResolutionRepair,
          Math.ceil(animationPriorityRemaining()) + 16);
        return;
      }
      var canvas = findGameCanvas();
      if (canvas
          && (Number(canvas.width) !== highQualityWidth
            || Number(canvas.height) !== highQualityHeight)) {
        initialResolutionApplied = false;
        applyHighQualityResolution();
      }
    };
    if (typeof requestIdleCallback === "function"
        && document.visibilityState !== "hidden") {
      requestIdleCallback(repair, { timeout: 120 });
    } else {
      setTimeout(repair, 32);
    }
  }

  function observeResolutionChanges(canvas) {
    if (!canvas || observedResolutionCanvas === canvas) return;
    if (resolutionMutationObserver) resolutionMutationObserver.disconnect();
    observedResolutionCanvas = canvas;
    if (typeof MutationObserver !== "function") return;
    resolutionMutationObserver = new MutationObserver(function () {
      if (Number(canvas.width) !== highQualityWidth
          || Number(canvas.height) !== highQualityHeight) {
        scheduleResolutionRepair();
      }
    });
    resolutionMutationObserver.observe(canvas, {
      attributes: true,
      attributeFilter: ["width", "height"]
    });
  }

  function startResolutionEnforcement() {
    if (!qualityProfileActive()) return;
    applyHighQualityResolution();
    observeResolutionChanges(findGameCanvas());
  }

  function patchResolutionController(controller) {
    if (!controller || typeof controller.setResolution !== "function") {
      return false;
    }
    var setResolution = controller.setResolution;
    if (setResolution.__qiuhuiStrict4k !== true) {
      var wrappedSetResolution = function () {
        if (!qualityProfileActive()) {
          return setResolution.apply(this, arguments);
        }
        refreshAdaptiveResolution();
        var args = Array.prototype.slice.call(arguments);
        args[0] = highQualityWidth;
        args[1] = highQualityHeight;
        return setResolution.apply(this, args);
      };
      Object.defineProperty(wrappedSetResolution, "__qiuhuiStrict4k", {
        value: true
      });
      controller.setResolution = wrappedSetResolution;
    }

    // onUnityReady invokes AutoResolution after the canvas exists. On mobile
    // that method can silently replace the IQOO 12 native drawing buffer with
    // a lower adaptive tier, producing visible softness during a match.
    var autoResolution = controller.AutoResolution;
    if (typeof autoResolution === "function"
        && autoResolution.__qiuhuiStrict4k !== true) {
      var wrappedAutoResolution = function () {
        if (!qualityProfileActive()) {
          return autoResolution.apply(this, arguments);
        }
        refreshAdaptiveResolution();
        storeHighQualityResolution();
        return controller.setResolution(
          highQualityWidth, highQualityHeight);
      };
      Object.defineProperty(wrappedAutoResolution, "__qiuhuiStrict4k", {
        value: true
      });
      controller.AutoResolution = wrappedAutoResolution;
    }

    try {
      if (controller.resolutions && Array.isArray(controller.resolutions.mobile)) {
        var mobile = controller.resolutions.mobile;
        var exists = mobile.some(function (item) {
          return item
            && Number(item.width) === highQualityWidth
            && Number(item.height) === highQualityHeight;
        });
        if (!exists) {
          mobile.push({
            width: highQualityWidth,
            height: highQualityHeight
          });
        }
      }
    } catch (_) {}
    return typeof controller.AutoResolution !== "function"
      || controller.AutoResolution.__qiuhuiStrict4k === true;
  }

  function installResolutionHooks() {
    resolutionHookAttempts += 1;
    installUnityCreationHook();
    var wideHooksPatched = installWideViewportHooks();
    var controllerPatched = false;
    var readyPatched = false;
    try {
      var controller = typeof ResolutionController !== "undefined"
        ? ResolutionController
        : null;
      if (controller) {
        if (controller.__qiuhuiResolution !== resolutionProfileTag) {
          Object.defineProperty(controller, "__qiuhuiResolution", {
            configurable: true,
            value: resolutionProfileTag
          });
        }
        controllerPatched = patchResolutionController(controller);
      }
    } catch (_) {}

    try {
      var originalReady = window.onUnityReady;
      if (typeof originalReady === "function") {
        if (originalReady.__qiuhuiResolution !== resolutionProfileTag) {
          var wrappedReady = function (instance) {
            var result = originalReady.call(this, instance);
            setTimeout(function () {
              if (!initialResolutionApplied) applyHighQualityResolution();
            }, 0);
            return result;
          };
          Object.defineProperty(wrappedReady, "__qiuhuiResolution", {
            value: resolutionProfileTag
          });
          window.onUnityReady = wrappedReady;
        }
        readyPatched = true;
      }
    } catch (_) {}

    if (!initialResolutionApplied) applyHighQualityResolution();
    if (qualityProfileActive()) startResolutionEnforcement();
    var stable = wideHooksPatched
      && (controllerPatched || initialResolutionApplied)
      && (readyPatched || initialResolutionApplied);
    if (!stable && resolutionHookAttempts < 60) {
      setTimeout(
        installResolutionHooks,
        resolutionHookAttempts < 12 ? 250 : 750);
    }
  }

  Object.defineProperty(window, "__qiuhuiSetQualityProfile", {
    value: function (width, height) {
      width = Math.round(Number(width));
      height = Math.round(Number(height));
      if (fullscreenAdaptEnabled) {
        if (!Number.isFinite(width)
            || !Number.isFinite(height)
            || width < 1280
            || height < 720
            || width > 4096
            || height > 2304) {
          return false;
        }
        configuredRenderWidth = width;
        configuredRenderHeight = height;
        refreshAdaptiveResolution();
        if (qualityProfileActive()) startResolutionEnforcement();
        return applyHighQualityResolution();
      }
      var expectedAspect = wideViewportEnabled
        ? Math.abs(width / height - 20 / 9) < .003
        : width * 9 === height * 16;
      if (!Number.isFinite(width)
          || !Number.isFinite(height)
          || width < 1280
          || height < 720
          || width > 4096
          || height > 2304
          || !expectedAspect) {
        return false;
      }
      if (highQualityWidth === width && highQualityHeight === height) {
        if (qualityProfileActive()) startResolutionEnforcement();
        return applyHighQualityResolution();
      }
      highQualityWidth = width;
      highQualityHeight = height;
      initialResolutionApplied = false;
      if (qualityProfileActive()) startResolutionEnforcement();
      return applyHighQualityResolution();
    }
  });

  var viewportReportTimer = 0;
  var observedCanvas = null;
  var canvasResizeObserver = null;

  function activeGameRect(rect) {
    var left = Number(rect.left) || 0;
    var top = Number(rect.top) || 0;
    var width = Math.max(1, Number(rect.width) || 1);
    var height = Math.max(1, Number(rect.height) || 1);
    // Fullscreen stretches only the decorative WebGL background. Mahjong
    // Soul's hand and operation controls remain in a centred 16:9 logical
    // stage, so native taps and DOM HUD markers must share that cropped rect.
    var gameAspect = 16 / 9;
    if (width / height > gameAspect + .002) {
      var fittedWidth = height * gameAspect;
      left += (width - fittedWidth) / 2;
      width = fittedWidth;
    } else if (width / height < gameAspect - .002) {
      var fittedHeight = width / gameAspect;
      top += (height - fittedHeight) / 2;
      height = fittedHeight;
    }
    return { left: left, top: top, width: width, height: height };
  }

  function reportGameViewport() {
    viewportReportTimer = 0;
    var canvas = findGameCanvas();
    if (!canvas) return;
    var canvasRect = canvas.getBoundingClientRect();
    if (canvasRect.width <= 0 || canvasRect.height <= 0) return;
    // Native fallback taps and DOM HUD share this exact rect.
    var rect = activeGameRect(canvasRect);
    post({
      kind: "game_viewport",
      left: rect.left,
      top: rect.top,
      width: rect.width,
      height: rect.height,
      viewportWidth: window.innerWidth,
      viewportHeight: window.innerHeight
    });
    if (observedCanvas !== canvas && window.ResizeObserver) {
      if (canvasResizeObserver) canvasResizeObserver.disconnect();
      observedCanvas = canvas;
      canvasResizeObserver = new ResizeObserver(scheduleViewportReport);
      canvasResizeObserver.observe(canvas);
    }
  }

  function scheduleViewportReport() {
    if (viewportReportTimer) clearTimeout(viewportReportTimer);
    viewportReportTimer = setTimeout(reportGameViewport, 80);
  }

  function gameGlobals() {
    var desktopView = typeof view !== "undefined" ? view : window.view;
    var gameApp = typeof app !== "undefined" ? app : window.app;
    var directDesktop = typeof DesktopMgr !== "undefined"
      ? DesktopMgr : window.DesktopMgr;
    var directAgent = typeof NetAgent !== "undefined"
      ? NetAgent : window.NetAgent;
    var gameManager = typeof GameMgr !== "undefined"
      ? GameMgr : window.GameMgr;
    var manager = desktopView && desktopView.DesktopMgr
      ? desktopView.DesktopMgr.Inst
      : directDesktop && directDesktop.Inst
        ? directDesktop.Inst
        : null;
    var agent = gameApp && gameApp.NetAgent
      ? gameApp.NetAgent
      : directAgent
        ? directAgent
        : desktopView && desktopView.NetAgent
          ? desktopView.NetAgent
          : gameManager && gameManager.NetAgent
            ? gameManager.NetAgent
            : null;
    return {
      manager: manager,
      agent: agent
    };
  }

  function mainPlayer(manager) {
    if (!manager) return null;
    // After reconnect or seat rotation players[0] is not guaranteed to be the
    // local player. mainrole owns the authoritative local hand.
    if (manager.mainrole && manager.mainrole.hand) return manager.mainrole;
    return manager.players && manager.players[0] ? manager.players[0] : null;
  }

  function reportAutoPlay(event, detail) {
    try {
      var payload = { kind: "auto_battle", event: event };
      if (detail) Object.keys(detail).forEach(function (key) {
        payload[key] = detail[key];
      });
      window.qiuhuiBridge.postMessage(JSON.stringify(payload));
    } catch (_) {}
  }

  function tileValue(tile) {
    try {
      return tile && tile.val ? String(tile.val.toString()) : "";
    } catch (_) {
      return "";
    }
  }

  function openingHandSignature(hand) {
    var values = [String(hand.length)];
    for (var index = 0; index < hand.length; index += 1) {
      var tile = hand[index];
      if (!tile || tile.valid === false || tile.visible === false) return "";
      var x = Number(tile.x);
      var y = Number(tile.y);
      var alpha = Number(tile.alpha);
      values.push([
        tileValue(tile),
        Number.isFinite(x) ? Math.round(x) : "",
        Number.isFinite(y) ? Math.round(y) : "",
        Number.isFinite(alpha) ? Math.round(alpha * 100) : ""
      ].join(":"));
    }
    return values.join("|");
  }

  Object.defineProperty(window, "__qiuhuiOpeningDiscardReady", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (command) {
      try {
        if (!command || typeof command !== "object") return false;
        var globals = gameGlobals();
        var manager = globals.manager;
        var player = mainPlayer(manager);
        var hand = player && player.hand;
        var expectedSize = Math.max(1, Number(command.expectedHandSize) || 14);
        var decision = String(command.decisionId || "");
        if (!manager
            || !player
            || !hand
            || hand.length < expectedSize
            || typeof player.DoDiscardTile !== "function") {
          openingReadyDecision = decision;
          openingReadySignature = "";
          openingReadySince = 0;
          return false;
        }
        var expectedTile = String(command.tile || "");
        var hasExpectedTile = false;
        for (var index = 0; index < hand.length; index += 1) {
          if (tileValue(hand[index]) === expectedTile) {
            hasExpectedTile = true;
            break;
          }
        }
        var signature = openingHandSignature(hand);
        if (!hasExpectedTile || !signature) return false;
        var now = typeof performance !== "undefined"
          && typeof performance.now === "function"
          ? performance.now()
          : Date.now();
        if (openingReadyDecision !== decision
            || openingReadySignature !== signature) {
          openingReadyDecision = decision;
          openingReadySignature = signature;
          openingReadySince = now;
          return false;
        }
        return now - openingReadySince >= 360;
      } catch (_) {
        return false;
      }
    }
  });

  Object.defineProperty(window, "__qiuhuiAutoPlay", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (command) {
      try {
        if (!command || typeof command !== "object") return false;
        var globals = gameGlobals();
        var manager = globals.manager;
        if (command.kind === "discard") {
          if (!manager) {
            reportAutoPlay("discard_not_ready", {
              decisionId: String(command.decisionId || ""), reason: "manager_missing"
            });
            return false;
          }
          var player = mainPlayer(manager);
          var hand = player && player.hand;
          if (!hand || !hand.length || typeof player.DoDiscardTile !== "function") {
            reportAutoPlay("discard_not_ready", {
              decisionId: String(command.decisionId || ""),
              reason: !hand || !hand.length ? "hand_missing" : "discard_method_missing"
            });
            return false;
          }
          var targetIndex = -1;
          var expectedTile = String(command.tile || "");
          if (command.preferDraw === true
              && hand[hand.length - 1]
              && hand[hand.length - 1].valid !== false
              && hand[hand.length - 1].visible !== false
              && tileValue(hand[hand.length - 1]) === expectedTile) {
            targetIndex = hand.length - 1;
          }
          if (targetIndex < 0) {
            for (var index = 0; index < hand.length; index += 1) {
              // A concealed-kan animation can leave retired sprites in the
              // live hand array for a few frames. Never select one of those
              // stale/hidden nodes; keep looking for the active copy. The
              // coordinate fallback uses the corrected native hand mirror.
              if (hand[index]
                  && hand[index].valid !== false
                  && hand[index].visible !== false
                  && tileValue(hand[index]) === expectedTile) {
                targetIndex = index;
                break;
              }
            }
          }
          var selectedTile = targetIndex >= 0 ? hand[targetIndex] : null;
          if (!selectedTile || selectedTile.valid === false) {
            reportAutoPlay("discard_not_ready", {
              decisionId: String(command.decisionId || ""),
              tile: expectedTile, reason: "target_tile_missing"
            });
            return false;
          }
          player._choose_pai = selectedTile;
          autoSubmitStartedAt = performance.now();
          autoSubmitDecision = String(command.decisionId || "");
          autoSubmitKind = "discard";
          if (window.__qiuhuiAutoBattleInstalled) {
            try { window.dispatchEvent(new Event("qiuhui-auto-outgoing")); } catch (_) {}
          }
          reportAutoPlay("discard_commit", {
            stage: 1,
            decisionId: String(command.decisionId || ""),
            tile: expectedTile
          });
          player.DoDiscardTile();
          // Cloud-phone WebViews often complete only the selection animation
          // on the first call. Give that animation real WebGL/input headroom,
          // then
          // submit the exact currently selected tile again. An acknowledged
          // action clears the decision token first and cancels this safely.
          setTimeout(function () {
            try {
              if (typeof window.__qiuhuiCanFallbackDecision !== "function"
                  || !window.__qiuhuiCanFallbackDecision(
                    String(command.decisionId || ""))) return;
              var liveGlobals = gameGlobals();
              var liveManager = liveGlobals.manager;
              var livePlayer = mainPlayer(liveManager);
              var liveHand = livePlayer && livePlayer.hand;
              if (!liveHand || typeof livePlayer.DoDiscardTile !== "function") return;
              var liveTile = null;
              for (var retryIndex = 0; retryIndex < liveHand.length; retryIndex += 1) {
                var candidate = liveHand[retryIndex];
                if (candidate && candidate.valid !== false
                    && candidate.visible !== false
                    && tileValue(candidate) === expectedTile) {
                  liveTile = candidate;
                  if (candidate === selectedTile) break;
                }
              }
              if (!liveTile) return;
               // Preserve the live selected object whenever it still denotes
               // the requested tile. This is the important second half of the
               // game's select-then-discard gesture; replacing it needlessly
               // can restart selection and leave the tile highlighted again.
               var currentChoice = livePlayer._choose_pai;
               if (!currentChoice || currentChoice.valid === false
                   || tileValue(currentChoice) !== expectedTile) {
                 livePlayer._choose_pai = liveTile;
               }
              try { window.dispatchEvent(new Event("qiuhui-auto-outgoing")); } catch (_) {}
              reportAutoPlay("discard_commit", {
                stage: 2,
                decisionId: String(command.decisionId || ""),
                tile: expectedTile
              });
              livePlayer.DoDiscardTile();
            } catch (_) {}
          }, 420);
          return true;
        }

        // NetAgent is sufficient to submit an operation. DesktopMgr can be
        // temporarily absent while the cloud-phone canvas rebuilds; requiring
        // it forced a coordinate fallback even though the protocol path was
        // already ready.
        if (command.kind !== "operation" || !globals.agent) {
          reportAutoPlay("operation_not_ready", {
            decisionId: String(command.decisionId || ""),
            operationType: Number(command.operationType),
            reason: command.kind !== "operation" ? "kind_mismatch" : "agent_missing"
          });
          return false;
        }
        var operationType = Number(command.operationType);
        var timeuse = Math.max(0.3, Math.min(8, Number(command.timeuse) || 1));
        if (operationType === 0) {
          globals.agent.sendReq2MJ(
            "FastTest",
            "inputChiPengGang",
            { cancel_operation: true, timeuse: timeuse }
          );
        } else if (operationType === 7) {
          globals.agent.sendReq2MJ(
            "FastTest",
            "inputOperation",
            {
              type: operationType,
              tile: String(command.tile || ""),
              moqie: command.moqie === true,
              timeuse: timeuse
            }
          );
        } else if (operationType === 10 || operationType === 11) {
          var operationPayload = {
            type: operationType,
            index: 0,
            timeuse: timeuse
          };
          if (operationType === 11) {
            operationPayload.moqie = command.moqie === true;
            delete operationPayload.index;
          }
          globals.agent.sendReq2MJ("FastTest", "inputOperation", operationPayload);
          try {
            if (manager && typeof manager.WhenDoOperation === "function") {
              manager.WhenDoOperation();
            }
          } catch (_) {
            // The request is already sent; never retry it solely for a UI cleanup failure.
          }
        } else if (operationType >= 2 && operationType <= 9) {
          globals.agent.sendReq2MJ(
            "FastTest",
            "inputChiPengGang",
            {
              type: operationType,
              index: Math.max(0, Number(command.optionIndex) || 0),
              timeuse: timeuse
            }
          );
          try {
            if (manager && typeof manager.WhenDoOperation === "function") {
              manager.WhenDoOperation();
            }
          } catch (_) {
            // The request is already sent; never retry it solely for a UI cleanup failure.
          }
        } else {
          return false;
        }
        reportAutoPlay("operation_submit", {
          decisionId: String(command.decisionId || ""),
          operationType: operationType,
          optionIndex: Math.max(0, Number(command.optionIndex) || 0)
        });
        autoSubmitStartedAt = performance.now();
        autoSubmitDecision = String(command.decisionId || "");
        autoSubmitKind = "operation";
        if (window.__qiuhuiAutoBattleInstalled) {
          try { window.dispatchEvent(new Event("qiuhui-auto-outgoing")); } catch (_) {}
        }
        // The real ActionChiPengGang/ActionAnGangAddGang/ActionBaBei packet
        // owns HUD dismissal. Keeping it until acknowledgement avoids extra
        // style work in the same task that starts the local game animation.
        return true;
      } catch (_) {
        reportAutoPlay("auto_action_error", {
          decisionId: String(command && command.decisionId || ""),
          actionKind: String(command && command.kind || ""),
          reason: "page_exception"
        });
        return false;
      }
    }
  });

  Object.defineProperty(window, "__qiuhuiConfirmRound", {
    configurable: false,
    enumerable: false,
    writable: false,
    value: function (eventId) {
      try {
        var normalizedEventId = String(eventId == null ? "" : eventId);
        if (normalizedEventId !== roundConfirmEventId) {
          roundConfirmEventId = normalizedEventId;
          roundConfirmTarget = null;
          roundConfirmStage = "";
        }
        var ui = typeof uiscript !== "undefined" ? uiscript : window.uiscript;
        if (!ui) return "waiting";
        var gameEnd = ui.UI_GameEnd && ui.UI_GameEnd.Inst;
        if (gameEnd && gameEnd.enable) return "final";
        var candidates = [
          ["win", ui.UI_Win && ui.UI_Win.Inst],
          ["score", ui.UI_ScoreChange && ui.UI_ScoreChange.Inst],
          ["draw", ui.UIMgr && ui.UIMgr.Inst && ui.UIMgr.Inst._ui_liuju]
        ];
        var roundEnd = null;
        var stage = "";
        for (var index = 0; index < candidates.length; index += 1) {
          var candidate = candidates[index][1];
          if (candidate
              && candidate.enable
              && candidate !== roundConfirmTarget
              && candidates[index][0] !== roundConfirmStage) {
            stage = candidates[index][0];
            roundEnd = candidate;
            break;
          }
        }
        if (!roundEnd) return "waiting";
        var button = roundEnd.btn_confirm;
        if (button && (button.disabled || button.visible === false)) return "waiting";
        var confirmHandler = roundEnd.onConfirm || roundEnd.onBtnConfirm;
        if (typeof confirmHandler === "function") {
          roundConfirmTarget = roundEnd;
          roundConfirmStage = stage;
          confirmHandler.call(roundEnd);
          return "confirmed:" + stage;
        }
        if (button && button.clickHandler && typeof button.clickHandler.method === "function") {
          roundConfirmTarget = roundEnd;
          roundConfirmStage = stage;
          button.clickHandler.method.call(button.clickHandler.caller || roundEnd);
          return "confirmed:" + stage;
        }
        return "waiting";
      } catch (_) {
        return "waiting";
      }
    }
  });

  storeHighQualityResolution();
  installUnityCreationHook();
  installFullscreenStyle();
  setTimeout(installResolutionHooks, 0);
  document.addEventListener("DOMContentLoaded", function () {
    installFullscreenStyle();
    installResolutionHooks();
    if (!initialResolutionApplied) applyHighQualityResolution();
    scheduleViewportReport();
    setTimeout(function () {
      if (!initialResolutionApplied) applyHighQualityResolution();
    }, 500);
    setTimeout(reportGameViewport, 500);
    setTimeout(reportGameViewport, 1500);
    setTimeout(reportGameViewport, 4000);
  }, { once: true });
  window.addEventListener("resize", function () {
    if (refreshAdaptiveResolution()) applyHighQualityResolution();
    installFullscreenStyle();
    if (wideViewportEnabled) forceWideCanvasLayout();
    scheduleViewportReport();
  }, { passive: true });
  window.addEventListener("orientationchange", function () {
    if (refreshAdaptiveResolution()) applyHighQualityResolution();
    installFullscreenStyle();
    if (wideViewportEnabled) forceWideCanvasLayout();
    scheduleViewportReport();
  }, { passive: true });
  if (window.visualViewport) {
    window.visualViewport.addEventListener(
      "resize", scheduleViewportReport, { passive: true });
  }

  document.addEventListener("keydown", function (event) {
    if (event.key === "Enter" && isTextEditor(event.target)) {
      setTimeout(dismissKeyboard, 0);
    }
  }, true);
  document.addEventListener("submit", function () {
    setTimeout(dismissKeyboard, 0);
  }, true);
  document.addEventListener("pointerdown", function (event) {
    if (isTextEditor(document.activeElement) && !isTextEditor(event.target)) {
      setTimeout(dismissKeyboard, 0);
    }
  }, true);

  function enqueueBinary(socketId, direction, buffer) {
    if (!buffer
        || buffer.byteLength > maxFrameBytes) {
      return;
    }
    var worker = ensureFrameWorker();
    if (worker && frameWorkerReady && !frameQueueBusy && frameQueue.length === 0) {
      if (pendingWorkerFrames >= maxQueuedFrames) {
        frameQueue.push({
          socketId: socketId,
          direction: direction,
          buffer: buffer
        });
        frameQueueBusy = true;
        setTimeout(flushFrame, 0);
        return;
      }
      try {
        pendingWorkerFrames += 1;
        worker.postMessage({
          socketId: socketId,
          direction: direction,
          buffer: buffer,
          binary: binaryBridgeEnabled
        }, [buffer]);
        return;
      } catch (_) {
        pendingWorkerFrames = Math.max(0, pendingWorkerFrames - 1);
        try {
          worker.terminate();
        } catch (_) {}
        frameWorker = null;
        frameWorkerReady = false;
        frameWorkerUnavailable = true;
      }
    }
    frameQueue.push({
      socketId: socketId,
      direction: direction,
      buffer: buffer
    });
    if (!frameQueueBusy) {
      frameQueueBusy = true;
      setTimeout(flushFrame, 0);
    }
  }

  function flushFrame() {
    var item = frameQueue.shift();
    if (!item) {
      frameQueueBusy = false;
      return;
    }
    var worker = ensureFrameWorker();
    if (worker && frameWorkerReady) {
      if (pendingWorkerFrames >= maxQueuedFrames) {
        frameQueue.unshift(item);
        setTimeout(flushFrame, 12);
        return;
      }
      try {
        pendingWorkerFrames += 1;
        if (item.control) {
          worker.postMessage({ control: item.control });
        } else {
          worker.postMessage({
            socketId: item.socketId,
            direction: item.direction,
            buffer: item.buffer,
            binary: binaryBridgeEnabled
          }, [item.buffer]);
        }
        setTimeout(flushFrame, 0);
        return;
      } catch (_) {
        pendingWorkerFrames = Math.max(0, pendingWorkerFrames - 1);
        try {
          worker.terminate();
        } catch (_) {}
        frameWorker = null;
        frameWorkerReady = false;
        frameWorkerUnavailable = true;
      }
    }
    if (item.control) {
      postRaw(item.control);
      setTimeout(flushFrame, 0);
      return;
    }
    var bytes = new Uint8Array(item.buffer);
    var parts = [];
    var offset = 0;
    var chunkSize = 0xc000;

    function encodeChunk() {
      var end = Math.min(bytes.length, offset + chunkSize);
      parts.push(btoa(String.fromCharCode.apply(null, bytes.subarray(offset, end))));
      offset = end;
      if (offset < bytes.length) {
        setTimeout(encodeChunk, 0);
        return;
      }
      post({
        kind: "frame",
        socketId: item.socketId,
        direction: item.direction,
        data: parts.join("")
      });
      setTimeout(flushFrame, 0);
    }
    encodeChunk();
  }

  function observeFrame(socketId, direction, data) {
    try {
      if (data instanceof ArrayBuffer) {
        enqueueBinary(socketId, direction, data.slice(0));
      } else if (ArrayBuffer.isView(data)) {
        enqueueBinary(
          socketId,
          direction,
          data.buffer.slice(data.byteOffset, data.byteOffset + data.byteLength)
        );
      }
    } catch (_) {}
  }

  function normalizedObservedData(data, callback) {
    try {
      if (data instanceof ArrayBuffer || ArrayBuffer.isView(data)) {
        callback(data);
        return;
      }
      if (data instanceof Blob) {
        data.arrayBuffer().then(callback).catch(function () { callback(null); });
        return;
      }
    } catch (_) {}
    callback(null);
  }

  function processObservedFrame(item, data) {
    if (!data) return;
    if (item.direction === "in" && item.actionChecked !== true) {
      var action = roundEndActionIn(data)
        || actionNameIn(data, operationTransitionActions);
      var finalResult = remoteInferenceActive
        ? actionNameIn(data, finalResultNotifications)
        : "";
      item.actionChecked = true;
      item.actionName = action;
      if (action && operationTransitionActions.indexOf(action) >= 0) {
        if (autoSubmitStartedAt > 0) {
          reportAutoPlay("server_ack", {
            decisionId: autoSubmitDecision,
            actionKind: autoSubmitKind,
            action: action,
            latencyMs: Math.max(0, Math.round(performance.now() - autoSubmitStartedAt))
          });
          autoSubmitStartedAt = 0;
          autoSubmitDecision = "";
          autoSubmitKind = "";
        }
        if (window.__qiuhuiAutoBattleInstalled) {
          try { window.dispatchEvent(new Event("qiuhui-auto-ack")); } catch (_) {}
        }
        if (handLayoutTransitionActions.indexOf(action) >= 0
            && window.AyakaCatHUD
            && typeof window.AyakaCatHUD.noteHandLayoutChanged === "function") {
          // Mark before clearing the old decision.  The next native
          // recommendation reads the new hand layout generation and follows
          // the live tile nodes only while the meld animation settles.
          window.AyakaCatHUD.noteHandLayoutChanged(action);
        }
        // Every game action closes the previous decision before native
        // decoding starts. A later recommendation receives a new token.
        window.__qiuhuiClearRecommendations();
      }
      if (finalResult) {
        // Final ranking is tiny, ordered state. Deferring it can let a new
        // match overtake game_end and reset the desktop event lifecycle.
        observeFrame(item.socketId, item.direction, data);
        return;
      }
      if (action && roundEndActions.indexOf(action) >= 0) {
        if (typeof window.__qiuhuiClearRecommendations === "function") {
          window.__qiuhuiClearRecommendations();
        }
        window.__qiuhuiPrioritizeAnimation(9500);
        // Route the compact hint through the same worker sequence as older
        // raw frames. It can no longer overtake an in-flight discard/meld and
        // make native state jump backwards during the win animation.
        enqueueWorkerControl({
          kind: "round_end_hint",
          finalMatch: action === "ActionEndGame"
        });
        // Deliver the matching result packet directly after its compact hint.
        // Deferring it by eight seconds allowed it to arrive after
        // ActionNewRound and incorrectly end the new hand. Native treats it as
        // metadata-only while the round guard is active.
        observeFrame(item.socketId, item.direction, data);
        return;
      }
      var pause = actionAnimationPause(action);
      if (pause > 0) {
        // Freeze the assistant copy before it reaches Android. The game has
        // already received the original WebSocket message and can render its
        // meld/kita animation immediately, while protobuf/state work remains
        // queued off the Chromium and Android critical paths.
        window.__qiuhuiPrioritizeAnimation(pause);
        observeFrame(item.socketId, item.direction, data);
        if (typeof window.__qiuhuiHasOperationRecommendations === "function"
            && window.__qiuhuiHasOperationRecommendations()) {
          window.__qiuhuiDismissOperationRecommendations();
        }
        return;
      }
      if (typeof window.__qiuhuiHasOperationRecommendations === "function"
          && window.__qiuhuiHasOperationRecommendations()
          && action) {
        window.__qiuhuiDismissOperationRecommendations();
      }
      if (action && operationTransitionActions.indexOf(action) >= 0) {
        // The game has already consumed this message. Preserve strict Liqi
        // order when handing the assistant copy to its Worker; scheduling each
        // operation in a separate idle callback allowed a following packet to
        // overtake it on busy frames.
        observeFrame(item.socketId, item.direction, data);
        return;
      }
    }
    observeFrame(item.socketId, item.direction, data);
  }

  function drainObservedFrames() {
    observedFrameDrainScheduled = false;
    var item = observedFrameQueue.shift();
    if (!item) {
      return;
    }
    // Blob conversion is asynchronous. Do not advance the queue until it has
    // completed, otherwise adjacent WebSocket frames can arrive in native in
    // a different order from the game.
    normalizedObservedData(item.data, function (data) {
      processObservedFrame(item, data);
      scheduleObservedFrameDrain();
    });
  }

  function scheduleObservedFrameDrain() {
    if (observedFrameDrainScheduled) return;
    if (!observedFrameQueue.length) return;
    observedFrameDrainScheduled = true;
    var startDrain = function () {
      drainObservedFrames();
    };
    var pacing = typeof performance !== "undefined"
      && performance.now() < animationDrainPacingUntil;
    if (pacing
        && typeof requestIdleCallback === "function"
        && document.visibilityState !== "hidden") {
      requestIdleCallback(startDrain, { timeout: 48 });
    } else if (pacing) {
      setTimeout(startDrain, 12);
    } else if (!binaryBridgeEnabled
        && typeof requestIdleCallback === "function"
        && document.visibilityState !== "hidden") {
      requestIdleCallback(startDrain, { timeout: 48 });
    } else {
      // Run after the game's own message listeners. Binary mode no longer
      // starts in the same task as WebGL message handling.
      setTimeout(startDrain, binaryBridgeEnabled ? 4 : 24);
    }
  }

  function queueObservedFrame(socketId, direction, data) {
    observedFrameQueue.push({
      socketId: socketId,
      direction: direction,
      data: data
    });
    scheduleObservedFrameDrain();
  }

  function QiuHuiWebSocket(url, protocols) {
    var socket = protocols === undefined
      ? new NativeWebSocket(url)
      : new NativeWebSocket(url, protocols);
    var socketId = ++nextSocketId;
    // Keep binary Liqi frames as ArrayBuffer. Blob mode prevents the skin
    // path from identifying response/notification headers synchronously and
    // lets room updates bypass rewriting.
    try { socket.binaryType = "arraybuffer"; } catch (_) {}
    var nativeSend = socket.send;
    var nativeAddEventListener = socket.addEventListener;
    var nativeDispatchEvent = socket.dispatchEvent;
    var skinRedispatching = false;
    var authGameRecovery = null;

    function cancelAuthGameRecovery() {
      if (!authGameRecovery) return;
      if (authGameRecovery.timeoutId) {
        clearTimeout(authGameRecovery.timeoutId);
      }
      authGameRecovery = null;
    }

    function armAuthGameRecovery(data, originalEvent) {
      cancelAuthGameRecovery();
      authGameRecovery = {
        data: data,
        event: originalEvent,
        retries: 0,
        timeoutId: 0
      };
      var recover = function () {
        var pending = authGameRecovery;
        if (!pending || socket.readyState !== NativeWebSocket.OPEN) {
          cancelAuthGameRecovery();
          return;
        }
        // A page can replace its RPC message listener while moving into the
        // match scene. If the first synthetic authGame delivery hit that tiny
        // lifecycle gap, replay the same response after the listener settles.
        // The RPC router ignores an already-consumed response id, so this is a
        // no-op on the normal path and a fail-open recovery on the rare path.
        dispatchMessage(pending.data, pending.event);
        pending.retries += 1;
        if (pending.retries >= 2) {
          cancelAuthGameRecovery();
          return;
        }
        pending.timeoutId = setTimeout(recover, 1500);
      };
      authGameRecovery.timeoutId = setTimeout(recover, 900);
    }

    function dispatchMessage(data, originalEvent) {
      var event = null;
      try {
        event = new MessageEvent("message", {
          data: data,
          origin: originalEvent && originalEvent.origin || "",
          lastEventId: originalEvent && originalEvent.lastEventId || ""
        });
      } catch (_) {
        event = { data: data, target: socket, currentTarget: socket, type: "message" };
      }
      // Re-dispatch through the browser's native EventTarget.  This preserves
      // listener order, once/capture semantics and event.target/currentTarget;
      // manually invoking every game listener made authGame intermittently
      // stall at 20% when the page changed its listener lifecycle.
      skinRedispatching = true;
      try {
        nativeDispatchEvent.call(socket, event);
      } catch (_) {
        // A failed optional skin rewrite must never block the game socket.
      } finally {
        skinRedispatching = false;
      }
    }

    if (fullSkinEnabled) {
      pendingSkinMessages["socket:" + socketId] = { dispatch: dispatchMessage };
    }

    socket.send = function (data) {
      // Always give the game/network path first use of the input task. Only
      // after a successful send do we inspect and enqueue the assistant copy.
      if (fullSkinEnabled && fullSkinFakeRequestIn(data)) {
        postSkinFrame("skin_request", socketId, data, "");
        queueObservedFrame(socketId, "out", data);
        return undefined;
      }
      var result = nativeSend.call(this, data);
      if (authGameRecovery && actionNameIn(data, authGameProgressRequests)) {
        cancelAuthGameRecovery();
      }
      var skinResponseMethod = fullSkinEnabled
        ? fullSkinResponseRequestIn(data)
        : "";
      if (skinResponseMethod) {
        var requestId = liqiMessageId(data);
        if (requestId >= 0) {
          pendingSkinResponseIds[socketId + ":" + requestId] = skinResponseMethod;
        }
        postSkinFrame("skin_request", socketId, data, "");
      }
      if (protectNativeForOwnOperation(data)
          && typeof window.__qiuhuiClearRecommendations === "function") {
        // A tile's first selection does not send a request. Reaching this point
        // means the game has actually submitted the discard/meld, so start the
        // existing compositor-only fade immediately without a layout read.
        window.__qiuhuiClearRecommendations();
      }
      queueObservedFrame(socketId, "out", data);
      return result;
    };
    nativeAddEventListener.call(socket, "open", function () {
      post({ kind: "socket_open", socketId: socketId, url: safeUrl(url) });
    });
    nativeAddEventListener.call(socket, "message", function (event) {
      // Synthetic rewritten frames come back through native dispatchEvent.
      // Let the game's real listeners receive them without observing or
      // intercepting the same frame for a second time.
      if (skinRedispatching) return;
      // The animation guard is only a maximum budget. Once the server really
      // starts the next hand, release it immediately so the new observation is
      // not held for the remainder of the previous hand's 8-second window.
      if (animationPriorityActive()
          && actionNameIn(event.data, newRoundActions)) {
        animationPriorityUntil = 0;
        animationDrainPacingUntil = 0;
      }
      if (authGameRecovery
          && (actionNameIn(event.data, newRoundActions)
            || actionNameIn(event.data, operationTransitionActions))) {
        cancelAuthGameRecovery();
      }
      var responseId = liqiMessageId(event.data);
      var skinResponseKey = socketId + ":" + responseId;
      var skinResponseMethod = pendingSkinResponseIds[skinResponseKey] || "";
      if (fullSkinEnabled
          && isLiqiResponse(event.data)
          && skinResponseMethod) {
        delete pendingSkinResponseIds[skinResponseKey];
        // This listener is registered before the page's game listeners. Stop
        // only the response selected for rewriting; all ordinary WebSocket
        // traffic remains on Chromium's untouched native event path.
        try { event.stopImmediatePropagation(); } catch (_) {}
        normalizedObservedData(event.data, function (normalized) {
          if (!normalized) {
            dispatchMessage(event.data, event);
            return;
          }
          var token = "skin:" + (++nextSkinMessageId);
          var released = false;
          pendingSkinMessages[token] = {
            socketId: socketId,
            data: normalized,
            dispatch: function (data) {
              if (released) return;
              released = true;
              var delivered = data || normalized;
              dispatchMessage(delivered, event);
              if (skinResponseMethod === "authGame") {
                armAuthGameRecovery(delivered, event);
              }
            }
          };
          postSkinFrame("skin_response", socketId, normalized, token);
          // authGame is on the critical match-loading path. It gets a strict
          // short deadline: if native rewriting misses it, deliver the
          // original response once and discard any late rewrite callback.
          // Cosmetic/account responses retain the wider compatibility budget.
          var rewriteDeadlineMs = skinResponseMethod === "authGame" ? 220 : 650;
          pendingSkinMessages[token].timeoutId = setTimeout(function () {
            var pending = pendingSkinMessages[token];
            if (pending) {
              delete pendingSkinMessages[token];
              pending.dispatch(normalized);
            }
          }, rewriteDeadlineMs);
        });
        queueObservedFrame(socketId, "in", event.data);
        return;
      }
      if (fullSkinEnabled
          && isLiqiNotification(event.data)
          && actionNameIn(event.data, fullSkinNotifications)) {
        try { event.stopImmediatePropagation(); } catch (_) {}
        normalizedObservedData(event.data, function (normalized) {
          if (!normalized) {
            dispatchMessage(event.data, event);
            return;
          }
          var token = "skin-notify:" + (++nextSkinMessageId);
          var released = false;
          pendingSkinMessages[token] = {
            socketId: socketId,
            data: normalized,
            dispatch: function (data) {
              if (released) return;
              released = true;
              dispatchMessage(data || normalized, event);
            }
          };
          postSkinFrame("skin_notification", socketId, normalized, token);
          pendingSkinMessages[token].timeoutId = setTimeout(function () {
            var pending = pendingSkinMessages[token];
            if (pending) {
              delete pendingSkinMessages[token];
              pending.dispatch(normalized);
            }
          }, 650);
        });
        queueObservedFrame(socketId, "in", event.data);
        return;
      }
      queueObservedFrame(socketId, "in", event.data);
    });
    nativeAddEventListener.call(socket, "close", function () {
      cancelAuthGameRecovery();
      post({ kind: "socket_close", socketId: socketId });
      if (fullSkinEnabled) {
        post({ kind: "skin_socket_close", socketId: socketId });
        delete pendingSkinMessages["socket:" + socketId];
        Object.keys(pendingSkinResponseIds).forEach(function (key) {
          if (key.indexOf(socketId + ":") === 0) {
            delete pendingSkinResponseIds[key];
          }
        });
        Object.keys(pendingSkinMessages).forEach(function (key) {
          var pending = pendingSkinMessages[key];
          if (pending && pending.socketId === socketId) {
            if (pending.timeoutId) clearTimeout(pending.timeoutId);
            delete pendingSkinMessages[key];
          }
        });
      }
    });
    return socket;
  }

  QiuHuiWebSocket.prototype = NativeWebSocket.prototype;
  Object.setPrototypeOf(QiuHuiWebSocket, NativeWebSocket);
  Object.defineProperties(QiuHuiWebSocket, {
    CONNECTING: { value: NativeWebSocket.CONNECTING },
    OPEN: { value: NativeWebSocket.OPEN },
    CLOSING: { value: NativeWebSocket.CLOSING },
    CLOSED: { value: NativeWebSocket.CLOSED }
  });
  window.WebSocket = QiuHuiWebSocket;

  // Start the encoder worker before the first game packet arrives. This keeps
  // even the login/opening frames away from the WebView JavaScript main thread.
  setTimeout(ensureFrameWorker, 0);

  Object.defineProperty(window, "__QiuHui", {
    value: Object.freeze({
      version: "1.6.8",
      pushEvent: function (event) {
        if (event && typeof event === "object") {
          post({ kind: "decoded_event", event: event });
        }
      }
    })
  });
  post({ kind: "bridge_ready", version: "1.6.8" });
})();
