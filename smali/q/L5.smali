.class public final Lq/L5;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;)V
    .registers 2

    iput-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-static {p2}, Lcom/qiuhui/mahjong/WebGameActivity;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-boolean p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->d:Z

    if-nez p2, :cond_19

    const/4 p2, 0x0

    iput p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->A:I

    const-string p2, ""

    iput-object p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    iget-object p1, p1, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_19

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Lcom/qiuhui/mahjong/WebGameActivity;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-boolean v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->d:Z

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_26

    iget-boolean v1, p1, Lcom/qiuhui/mahjong/WebGameActivity;->x:Z

    if-eqz v1, :cond_1b

    goto :goto_26

    :cond_1b
    new-instance v1, Lq/C5;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lq/C5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    const-string v2, "Boolean(window.AyakaCatHUD&&window.AyakaCatHUD.showImmediate)"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->e()V

    invoke-virtual {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->D()V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->u(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-static {}, Lq/r;->c()V

    :cond_3d
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    invoke-static {p2}, Lcom/qiuhui/mahjong/WebGameActivity;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->d:Z

    iput-boolean p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->x:Z

    iget-wide v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    iget-object p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string p3, "网页加载中"

    invoke-virtual {p1, p3, p2}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->d:Z

    if-nez p3, :cond_f

    const/4 v0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    :goto_13
    iput v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->A:I

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_27

    :cond_1e
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_29

    :cond_27
    :goto_27
    const-string p3, ""

    :goto_29
    iput-object p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    iget p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->A:I

    iget-object p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    const-string p3, "网页加载失败 · 点击重试"

    invoke-virtual {p1, p3, p2}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    :cond_34
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    const/16 p2, 0x190

    if-lt p1, p2, :cond_34

    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->d:Z

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    iput v0, p1, Lcom/qiuhui/mahjong/WebGameActivity;->A:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    iget-object p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    const-string p3, "网页加载失败 · 点击重试"

    invoke-virtual {p1, p3, p2}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    :cond_34
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_5
    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/qiuhui/mahjong/WebGameActivity;->d:Z

    const/16 p3, -0xb

    iput p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->A:I

    const-string p3, "SSL certificate rejected"

    iput-object p3, p1, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    const-string p3, "安全连接失败 · 请检查系统时间与网络证书"

    invoke-virtual {p1, p3, p2}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    :cond_6
    if-nez p2, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    :goto_c
    iget-object v0, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-boolean v1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->f:Z

    const/4 v2, 0x1

    if-nez v1, :cond_54

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_54

    :cond_20
    iput-boolean v2, v0, Lcom/qiuhui/mahjong/WebGameActivity;->f:Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2d
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const/4 p1, 0x0

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_42

    iput-boolean p1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->e:Z

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->G()V

    return v2

    :cond_42
    const-string p2, "网页恢复中"

    invoke-virtual {v0, p2, p1}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    new-instance p2, Lq/l2;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, Lq/l2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_54
    :goto_54
    return v2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 6

    iget-object p1, p0, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_32

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_32

    :cond_1c
    :try_start_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    const-string p2, "无法打开链接"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    return v2
.end method
