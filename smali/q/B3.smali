.class public final synthetic Lq/B3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;I)V
    .registers 3

    iput p2, p0, Lq/B3;->a:I

    iput-object p1, p0, Lq/B3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const/4 p1, 0x0

    iget v0, p0, Lq/B3;->a:I

    packed-switch v0, :pswitch_data_4c

    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    const-string v0, "overlay"

    iget-object v1, p0, Lq/B3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "cat_recommendation_enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lq/B3;->b:Lcom/qiuhui/mahjong/MainActivity;

    sget-boolean v1, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "full_skin_enabled"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_3d

    iget-object p2, v0, Lcom/qiuhui/mahjong/MainActivity;->p:Lq/A3;

    invoke-static {v0, p2}, Lq/C4;->b(Landroid/content/Context;Lq/A3;)V

    :cond_3d
    sget-boolean p2, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-eqz p2, :cond_4a

    const-string p2, "重启游戏后生效"

    invoke-static {v0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1e  #00000000
    .end packed-switch
.end method
