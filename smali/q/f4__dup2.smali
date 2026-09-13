.class public final synthetic Lq/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/OverlayService;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/OverlayService;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/f4;->a:Lcom/qiuhui/mahjong/OverlayService;

    iput-boolean p2, p0, Lq/f4;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lq/h3;)V
    .registers 8

    iget-object v0, p0, Lq/f4;->a:Lcom/qiuhui/mahjong/OverlayService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qiuhui/mahjong/OverlayService;->D:Z

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v1

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-boolean v3, p1, Lq/h3;->a:Z

    iget-boolean v4, p0, Lq/f4;->b:Z

    if-eqz v3, :cond_14

    iput-boolean v4, v0, Lcom/qiuhui/mahjong/OverlayService;->C:Z

    goto :goto_27

    :cond_14
    const-string v5, "PRESENCE_LEASE_REQUIRED"

    iget-object p1, p1, Lq/h3;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, "INVALID_PRESENCE_LEASE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_41

    :cond_27
    :goto_27
    iget-object p1, v0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    if-eq v1, v4, :cond_2f

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    :cond_2f
    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->m()V

    goto :goto_4b

    :cond_35
    if-nez v3, :cond_4b

    iget-boolean v0, v0, Lcom/qiuhui/mahjong/OverlayService;->C:Z

    if-eqz v0, :cond_4b

    const-wide/16 v0, 0x7530

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    :cond_41
    :goto_41
    if-eqz v1, :cond_4b

    iget-object p1, v0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4b
    :goto_4b
    return-void
.end method
