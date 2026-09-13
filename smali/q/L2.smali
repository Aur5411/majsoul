.class public final Lq/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/W5;


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lq/L2;->b:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lq/L2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 4

    check-cast p0, Lq/a6;

    :try_start_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget-object p0, Lq/R5;->e:Lq/Q5;

    invoke-virtual {p0}, Lq/Q5;->b()Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lq/s2;->c:Lq/s2;

    if-nez v0, :cond_24

    new-instance v0, Lq/s2;

    sget-object v1, Lq/S5;->a:Lq/W5;

    invoke-interface {v1}, Lq/W5;->getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lq/s2;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lq/s2;->c:Lq/s2;

    :cond_24
    sget-object v0, Lq/s2;->c:Lq/s2;

    const-string v1, "Default"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lq/Q5;->b()Z

    move-result p0

    if-eqz p0, :cond_8b

    iget-object p0, v0, Lq/s2;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-interface {p0, v1}, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;->getProfile(Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    if-eqz p0, :cond_4a

    new-instance v0, Lq/s2;

    const-class v1, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-static {v1, p0}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lq/s2;-><init>(ILjava/lang/Object;)V

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    if-eqz v0, :cond_6a

    const-string p0, "WARM_UP_RENDERER_PROCESS"

    invoke-static {p0}, Lq/k;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    sget-object p0, Lq/R5;->j:Lq/h;

    invoke-virtual {p0}, Lq/i;->b()Z

    move-result p0

    if-eqz p0, :cond_65

    iget-object p0, v0, Lq/s2;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->warmUpRendererProcess()V

    goto :goto_6a

    :cond_65
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0

    :cond_6a
    :goto_6a
    if-eqz v0, :cond_95

    const-string p0, "PRECONNECT"

    invoke-static {p0}, Lq/k;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_95

    const-string p0, "https://game.maj-soul.com/1/"

    sget-object v1, Lq/R5;->k:Lq/h;

    invoke-virtual {v1}, Lq/i;->b()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v0, v0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v0, p0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->preconnect(Ljava/lang/String;)V

    goto :goto_95

    :cond_86
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0

    :cond_8b
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0

    :cond_90
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
    :try_end_95
    .catchall {:try_start_2 .. :try_end_95} :catchall_95

    :catchall_95
    :cond_95
    :goto_95
    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lq/Z5;Lq/L2;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lq/L2;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public k(Lq/Z5;Lq/c4;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
