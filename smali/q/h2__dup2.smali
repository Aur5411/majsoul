.class public abstract synthetic Lq/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a()I
    .registers 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic b(Landroid/app/Activity;)Landroid/view/Display;
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/content/Context;)Landroid/view/Display;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/view/View;)Landroid/view/WindowInsetsController;
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setPreferMinimalPostProcessing(Z)V

    return-void
.end method

.method public static bridge synthetic f(Landroid/view/WindowInsetsController;)V
    .registers 2

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public static bridge synthetic g(Landroid/view/WindowInsetsController;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method public static bridge synthetic h(Landroid/view/WindowInsets;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i()I
    .registers 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic j(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method
