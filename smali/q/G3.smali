.class public final synthetic Lq/G3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;I)V
    .registers 3

    iput p2, p0, Lq/G3;->a:I

    iput-object p1, p0, Lq/G3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget v0, p0, Lq/G3;->a:I

    packed-switch v0, :pswitch_data_3e

    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object v0, p0, Lq/G3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/MainActivity;->f()V

    return-void

    :pswitch_d  #0x2
    iget-object v0, p0, Lq/G3;->b:Lcom/qiuhui/mahjong/MainActivity;

    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->p:Lq/A3;

    invoke-static {v0, v1}, Lq/C4;->a(Landroid/content/Context;Lq/A3;)V

    return-void

    :pswitch_15  #0x1
    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object v0, p0, Lq/G3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lq/y;->d(Landroid/app/Activity;)V

    return-void

    :pswitch_20  #0x0
    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object v0, p0, Lq/G3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lq/y;->d(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lq/G3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    const-wide/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_15  #00000001
        :pswitch_d  #00000002
    .end packed-switch
.end method
