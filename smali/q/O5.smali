.class public abstract Lq/O5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "*"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lq/O5;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)Lq/V5;
    .registers 4

    sget-object v0, Lq/R5;->i:Lq/h;

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lq/O5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/V5;

    if-nez v1, :cond_20

    new-instance v1, Lq/V5;

    sget-object v2, Lq/S5;->a:Lq/W5;

    invoke-interface {v2, p0}, Lq/W5;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object v2

    invoke-direct {v1, v2}, Lq/V5;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v1

    :cond_21
    new-instance v0, Lq/V5;

    sget-object v1, Lq/S5;->a:Lq/W5;

    invoke-interface {v1, p0}, Lq/W5;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object p0

    invoke-direct {v0, p0}, Lq/V5;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    return-object v0
.end method
