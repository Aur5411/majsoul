.class public final synthetic Lq/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/OverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/OverlayService;I)V
    .registers 3

    iput p2, p0, Lq/i4;->a:I

    iput-object p1, p0, Lq/i4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const/4 p1, 0x0

    iget v0, p0, Lq/i4;->a:I

    packed-switch v0, :pswitch_data_36

    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    const-string v0, "overlay"

    iget-object v1, p0, Lq/i4;->b:Lcom/qiuhui/mahjong/OverlayService;

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
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    const-string v0, "automation"

    iget-object v1, p0, Lq/i4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
    .end packed-switch
.end method
