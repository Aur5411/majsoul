.class public final synthetic Lq/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/qiuhui/mahjong/LicenseActivity;

.field public final synthetic c:Landroid/app/Dialog;

.field public final synthetic d:Lq/l2;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/qiuhui/mahjong/LicenseActivity;Landroid/app/Dialog;Lq/l2;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/f5;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lq/f5;->b:Lcom/qiuhui/mahjong/LicenseActivity;

    iput-object p3, p0, Lq/f5;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lq/f5;->d:Lq/l2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lq/f5;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2a

    :cond_9
    iget-object p1, p0, Lq/f5;->b:Lcom/qiuhui/mahjong/LicenseActivity;

    const-string v0, "usage_notice"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "accepted_version"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lq/f5;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lq/f5;->d:Lq/l2;

    invoke-virtual {p1}, Lq/l2;->run()V

    :goto_2a
    return-void
.end method
