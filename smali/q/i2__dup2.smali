.class public abstract synthetic Lq/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x42f00000  # 120.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRequestedFrameRate(F)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setFrameRatePowerSavingsBalanced(Z)V

    return-void
.end method

.method public static bridge synthetic c(Landroid/webkit/WebView;)V
    .registers 2

    const/high16 v0, 0x42f00000  # 120.0f

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setRequestedFrameRate(F)V

    return-void
.end method

.method public static bridge synthetic d(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setFrameRateBoostOnTouchEnabled(Z)V

    return-void
.end method
