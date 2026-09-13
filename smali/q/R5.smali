.class public abstract Lq/R5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/h;

.field public static final b:Lq/h;

.field public static final c:Lq/h;

.field public static final d:Lq/h;

.field public static final e:Lq/Q5;

.field public static final f:Lq/h;

.field public static final g:Lq/h;

.field public static final h:Lq/h;

.field public static final i:Lq/h;

.field public static final j:Lq/h;

.field public static final k:Lq/h;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/h;

    const-string v1, "VISUAL_STATE_CALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "OFF_SCREEN_PRERASTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_ENABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "START_SAFE_BROWSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_WHITELIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v2, "SAFE_BROWSING_ALLOWLIST"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "RECEIVE_HTTP_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_HIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->a:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "POST_WEB_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "GET_WEB_VIEW_CLIENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "GET_WEB_CHROME_CLIENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "GET_WEB_VIEW_RENDERER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/J4;

    invoke-direct {v0}, Lq/J4;-><init>()V

    new-instance v0, Lq/J4;

    invoke-direct {v0}, Lq/J4;-><init>()V

    new-instance v0, Lq/J4;

    invoke-direct {v0}, Lq/J4;-><init>()V

    new-instance v0, Lq/h;

    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/P5;

    invoke-direct {v0}, Lq/P5;-><init>()V

    new-instance v0, Lq/h;

    const-string v1, "PROXY_OVERRIDE"

    const-string v2, "PROXY_OVERRIDE:3"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "MULTI_PROCESS"

    const-string v2, "MULTI_PROCESS_QUERY"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->b:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "FORCE_DARK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "FORCE_DARK_STRATEGY"

    const-string v2, "FORCE_DARK_BEHAVIOR"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_MESSAGE_LISTENER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->c:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "DOCUMENT_START_SCRIPT"

    const-string v2, "DOCUMENT_START_SCRIPT:1"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->d:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "GET_VARIATIONS_HEADER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "GET_COOKIE_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    const-string v2, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "USER_AGENT_METADATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/Q5;

    const-string v2, "USER_AGENT_METADATA_FORM_FACTORS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lq/Q5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/Q5;

    const-string v1, "MULTI_PROFILE"

    const-string v2, "MULTI_PROFILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lq/Q5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->e:Lq/Q5;

    new-instance v0, Lq/h;

    const-string v1, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    const-string v2, "ATTRIBUTION_BEHAVIOR"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    const-string v2, "WEBVIEW_INTEGRITY_API_STATUS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "MUTE_AUDIO"

    const-string v2, "MUTE_AUDIO"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEB_AUTHENTICATION"

    const-string v2, "WEB_AUTHENTICATION"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SPECULATIVE_LOADING_STATUS"

    const-string v2, "SPECULATIVE_LOADING"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "BACK_FORWARD_CACHE"

    const-string v2, "BACK_FORWARD_CACHE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "BACK_FORWARD_CACHE_SETTINGS"

    const-string v2, "BACK_FORWARD_CACHE_SETTINGS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3"

    const-string v2, "BACK_FORWARD_CACHE_SETTINGS_V3"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4"

    const-string v2, "BACK_FORWARD_CACHE_SETTINGS_V4"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "DELETE_BROWSING_DATA"

    const-string v2, "WEB_STORAGE_DELETE_BROWSING_DATA"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/Q5;

    const-string v1, "PREFETCH_URL_V5"

    const-string v2, "PREFETCH_URL_V5"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/Q5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "ASYNC_WEBVIEW_STARTUP_V2"

    invoke-direct {v0, v1}, Lq/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/R5;->f:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "ASYNC_WEBVIEW_STARTUP"

    invoke-direct {v0, v1}, Lq/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/R5;->g:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS"

    invoke-direct {v0, v1}, Lq/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/R5;->h:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "DEFAULT_TRAFFICSTATS_TAGGING"

    const-string v2, "DEFAULT_TRAFFICSTATS_TAGGING"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "PRERENDER_URL_V2"

    const-string v2, "PRERENDER_URL_V3"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SPECULATIVE_LOADING_CONFIG_V2"

    const-string v2, "SPECULATIVE_LOADING_CONFIG_V2"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "PREFETCH_CACHE_V1"

    const-string v2, "PREFETCH_CACHE_V1"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SET_MAX_PRERENDERS_V1"

    const-string v2, "SET_MAX_PRERENDERS_V1"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "SAVE_STATE"

    const-string v2, "SAVE_STATE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "NAVIGATION_GET_WEB_RESOURCE_ERROR"

    const-string v2, "NAVIGATION_GET_WEB_RESOURCE_ERROR"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "NAVIGATION_LISTENER"

    const-string v2, "PAGE_GET_URL"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "PROVIDER_WEAKLY_REF_WEBVIEW"

    const-string v2, "PROVIDER_WEAKLY_REF_WEBVIEW"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->i:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "PAYMENT_REQUEST"

    const-string v2, "PAYMENT_REQUEST"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEBVIEW_BUILDER_EXPERIMENTAL_V1"

    const-string v2, "WEBVIEW_BUILDER_V1"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WEBVIEW_BUILDER_EXPERIMENTAL_V2"

    const-string v2, "WEBVIEW_BUILDER_V2"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "COOKIE_INTERCEPT"

    const-string v2, "COOKIE_INTERCEPT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "WARM_UP_RENDERER_PROCESS"

    const-string v2, "WARM_UP_RENDERER_PROCESS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->j:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "ORIGIN_MATCHED_HEADERS"

    const-string v2, "EXTRA_HEADER_FOR_ORIGINS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "CUSTOM_REQUEST_HEADERS"

    const-string v2, "CUSTOM_REQUEST_HEADERS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/J4;

    invoke-direct {v0}, Lq/J4;-><init>()V

    new-instance v0, Lq/J4;

    invoke-direct {v0}, Lq/J4;-><init>()V

    new-instance v0, Lq/J4;

    invoke-direct {v0}, Lq/J4;-><init>()V

    new-instance v0, Lq/h;

    const-string v1, "PRECONNECT"

    const-string v2, "PRECONNECT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/R5;->k:Lq/h;

    new-instance v0, Lq/h;

    const-string v1, "ADD_QUIC_HINTS"

    const-string v2, "ADD_QUIC_HINTS_V1"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "HYPERLINK_CONTEXT_MENU_ITEMS"

    const-string v2, "HYPERLINK_CONTEXT_MENU_ITEMS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lq/h;

    const-string v1, "JS_INJECTION_IN_FRAME_AND_WORLD"

    const-string v2, "JS_INJECTION_IN_FRAME_AND_WORLD"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a()Ljava/lang/UnsupportedOperationException;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
