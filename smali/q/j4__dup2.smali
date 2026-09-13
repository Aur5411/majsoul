.class public final synthetic Lq/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .registers 3

    iput p2, p0, Lq/j4;->a:I

    iput-object p1, p0, Lq/j4;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    const-string p1, "overlay_enabled"

    iget v0, p0, Lq/j4;->a:I

    packed-switch v0, :pswitch_data_68

    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object v0, p0, Lq/j4;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "cat_recommendation_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "full_skin_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    :cond_26
    new-instance p1, Lq/G3;

    const/4 p2, 0x3

    invoke-direct {p1, v0, p2}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2f
    return-void

    :pswitch_30  #0x1
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lq/j4;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, v0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    new-instance p2, Lq/d4;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    return-void

    :pswitch_4b  #0x0
    sget-boolean p1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object p1, p0, Lq/j4;->b:Landroid/content/ContextWrapper;

    check-cast p1, Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    iget-object p2, p1, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    new-instance v0, Lq/d4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_67
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_30  #00000001
    .end packed-switch
.end method
