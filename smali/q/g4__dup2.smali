.class public final synthetic Lq/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/OverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/OverlayService;I)V
    .registers 3

    iput p2, p0, Lq/g4;->a:I

    iput-object p1, p0, Lq/g4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lq/g4;->a:I

    packed-switch v3, :pswitch_data_76

    sget-boolean p1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object p1, p0, Lq/g4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "请长按以关闭悬浮窗"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1a  #0x2
    sget-boolean p1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object p1, p0, Lq/g4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->a()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_2a

    goto :goto_2f

    :cond_2a
    iput-boolean v2, p1, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    invoke-virtual {p1}, Lcom/qiuhui/mahjong/OverlayService;->l()V

    :goto_2f
    return-void

    :pswitch_30  #0x1
    sget-boolean v3, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v3, p0, Lq/g4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->a()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_40

    goto :goto_5f

    :cond_40
    iget-boolean v0, v3, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    xor-int/2addr p1, v0

    iput-boolean p1, v3, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    const-string p1, "overlay"

    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "vertical_compact"

    iget-boolean v1, v3, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v2, v3, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    invoke-virtual {v3}, Lcom/qiuhui/mahjong/OverlayService;->l()V

    :goto_5f
    return-void

    :pswitch_60  #0x0
    sget-boolean v2, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v2, p0, Lq/g4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->a()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_70

    goto :goto_75

    :cond_70
    iput-boolean p1, v2, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    invoke-virtual {v2}, Lcom/qiuhui/mahjong/OverlayService;->l()V

    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_30  #00000001
        :pswitch_1a  #00000002
    .end packed-switch
.end method
