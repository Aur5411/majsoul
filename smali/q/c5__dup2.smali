.class public final synthetic Lq/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lq/c5;->a:I

    iput-object p1, p0, Lq/c5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq/c5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget p1, p0, Lq/c5;->a:I

    packed-switch p1, :pswitch_data_72

    iget-object p1, p0, Lq/c5;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/c5;->b:Ljava/lang/Object;

    check-cast v0, Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "package:"

    const-string v2, "market://details?id="

    :try_start_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_30} :catch_31

    goto :goto_5f

    :catch_31
    const/4 v2, 0x1

    :try_start_32
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "请在手机应用商店搜索并更新 Android System WebView；若没有，请更新 Chrome"

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_55} :catch_56

    goto :goto_5f

    :catch_56
    const-string p1, "请在手机应用商店搜索并更新 Android System WebView 或 Chrome"

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_5f
    return-void

    :pswitch_60  #0x0
    iget-object p1, p0, Lq/c5;->b:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lq/c5;->c:Ljava/lang/Object;

    check-cast p1, Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_60  #00000000
    .end packed-switch
.end method
