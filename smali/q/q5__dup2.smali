.class public abstract synthetic Lq/q5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/os/PowerManager;)V
    .registers 1

    invoke-virtual {p0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    return-void
.end method

.method public static bridge synthetic b(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    return-void
.end method

.method public static bridge synthetic c(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    return-void
.end method
