.class public final synthetic Lq/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/WebGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V
    .registers 3

    iput p2, p0, Lq/t5;->a:I

    iput-object p1, p0, Lq/t5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lq/t5;->a:I

    packed-switch v0, :pswitch_data_3e

    sget-boolean p1, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object p1, p0, Lq/t5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "cat_recommendation_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    new-instance p2, Lq/s5;

    const/4 v0, 0x6

    invoke-direct {p2, p1, v0}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1d
    return-void

    :pswitch_1e  #0x0
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/t5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "enabled"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3d

    new-instance p1, Lq/s5;

    const/4 p2, 0x5

    invoke-direct {p1, v0, p2}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1e  #00000000
    .end packed-switch
.end method
