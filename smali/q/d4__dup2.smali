.class public final synthetic Lq/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/OverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/OverlayService;I)V
    .registers 3

    iput p2, p0, Lq/d4;->a:I

    iput-object p1, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lq/d4;->a:I

    packed-switch v2, :pswitch_data_1cc

    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    if-eqz v3, :cond_14

    :try_start_11
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, v0, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->n()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->o()V

    :cond_24
    return-void

    :pswitch_25  #0xa
    iget-object v2, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    iget-object v3, v2, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v4, v2, Lcom/qiuhui/mahjong/OverlayService;->f:Lq/d4;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v3, Lq/r;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, v2, Lcom/qiuhui/mahjong/OverlayService;->n:[Landroid/widget/TextView;

    array-length v4, v3

    :goto_39
    const/4 v5, 0x0

    if-ge v1, v4, :cond_45

    aget-object v6, v3, v1

    if-eqz v6, :cond_43

    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_43
    add-int/2addr v1, v0

    goto :goto_39

    :cond_45
    iget-object v0, v2, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4b

    :cond_5b
    iget-object v0, v2, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, v2, Lcom/qiuhui/mahjong/OverlayService;->f:Lq/d4;

    sget-object v2, Lq/N2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_67  #0x9
    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    sget-boolean v2, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lq/r;->c:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_79

    iget v4, v0, Lcom/qiuhui/mahjong/OverlayService;->E:I

    if-eq v4, v3, :cond_79

    iput-boolean v1, v0, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    :cond_79
    iput v2, v0, Lcom/qiuhui/mahjong/OverlayService;->E:I

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->k()V

    return-void

    :pswitch_7f  #0x8
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v1

    iget-boolean v2, v0, Lcom/qiuhui/mahjong/OverlayService;->B:Z

    if-ne v1, v2, :cond_94

    if-eqz v1, :cond_b0

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->m()V

    goto :goto_b0

    :cond_94
    iput-boolean v1, v0, Lcom/qiuhui/mahjong/OverlayService;->B:Z

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->b:Lq/d4;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_ad

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b0

    :cond_ad
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b0
    :goto_b0
    return-void

    :pswitch_b1  #0x7
    iget-object v2, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    iget-boolean v3, v2, Lcom/qiuhui/mahjong/OverlayService;->D:Z

    if-eqz v3, :cond_b9

    goto/16 :goto_15c

    :cond_b9
    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v8

    iput-boolean v8, v2, Lcom/qiuhui/mahjong/OverlayService;->B:Z

    iget-object v3, v2, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v4, v2, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v8, :cond_ce

    iget-boolean v3, v2, Lcom/qiuhui/mahjong/OverlayService;->C:Z

    if-nez v3, :cond_ce

    goto/16 :goto_15c

    :cond_ce
    sget-object v3, Lq/n3;->a:Ljava/util/ArrayList;

    const-class v3, Lq/n3;

    monitor-enter v3

    :try_start_d3
    sget-object v4, Lq/n3;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-wide/32 v5, 0xea60

    if-nez v4, :cond_ee

    sget-wide v9, Lq/n3;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_e4
    .catchall {:try_start_d3 .. :try_end_e4} :catchall_eb

    add-long/2addr v11, v5

    cmp-long v4, v9, v11

    if-lez v4, :cond_ee

    move v4, v0

    goto :goto_ef

    :catchall_eb
    move-exception v0

    goto/16 :goto_15f

    :cond_ee
    move v4, v1

    :goto_ef
    monitor-exit v3

    if-nez v4, :cond_103

    if-eqz v8, :cond_15c

    iget-object v0, v2, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, v2, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v2, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, v2, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15c

    :cond_103
    iput-boolean v0, v2, Lcom/qiuhui/mahjong/OverlayService;->D:Z

    new-instance v3, Lq/f4;

    invoke-direct {v3, v2, v8}, Lq/f4;-><init>(Lcom/qiuhui/mahjong/OverlayService;Z)V

    const-class v4, Lq/n3;

    monitor-enter v4

    :try_start_10d
    sget-object v7, Lq/n3;->h:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_140

    sget-wide v9, Lq/n3;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v11, v5

    cmp-long v5, v9, v11

    if-gtz v5, :cond_121

    goto :goto_140

    :cond_121
    sget-object v7, Lq/n3;->h:Ljava/lang/String;

    monitor-exit v4
    :try_end_124
    .catchall {:try_start_10d .. :try_end_124} :catchall_13e

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v9, Lq/l3;

    invoke-direct {v9, v0, v3}, Lq/l3;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lq/i3;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v8, :cond_135

    const-string v0, "presence_online"

    :goto_133
    move-object v5, v0

    goto :goto_138

    :cond_135
    const-string v0, "presence_offline"

    goto :goto_133

    :goto_138
    const-string v6, ""

    invoke-static/range {v4 .. v9}, Lq/i3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLq/g3;)V

    goto :goto_15c

    :catchall_13e
    move-exception v0

    goto :goto_15d

    :cond_140
    :goto_140
    :try_start_140
    new-instance v0, Lq/h3;

    const-string v2, "PRESENCE_LEASE_REQUIRED"

    const-string v5, "需要刷新在线凭证"

    invoke-direct {v0, v1, v2, v5}, Lq/h3;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lq/m2;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v0, v5}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v4

    :cond_15c
    :goto_15c
    return-void

    :goto_15d
    monitor-exit v4
    :try_end_15e
    .catchall {:try_start_140 .. :try_end_15e} :catchall_13e

    throw v0

    :goto_15f
    :try_start_15f
    monitor-exit v3
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_eb

    throw v0

    :pswitch_161  #0x6
    sget-boolean v1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v1, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v1, v0}, Lcom/qiuhui/mahjong/OverlayService;->p(Z)V

    return-void

    :pswitch_169  #0x5
    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    iget-object v1, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_195

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_195

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    if-nez v2, :cond_178

    goto :goto_195

    :cond_178
    invoke-static {v0, v1}, Lq/y;->f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_189

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-ge v2, v3, :cond_186

    goto :goto_189

    :cond_186
    :try_start_186
    invoke-static {v1}, Lq/i2;->a(Landroid/view/View;)V
    :try_end_189
    .catch Ljava/lang/RuntimeException; {:try_start_186 .. :try_end_189} :catch_189

    :catch_189
    :cond_189
    :goto_189
    :try_start_189
    iget-object v1, v0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_192
    .catch Ljava/lang/RuntimeException; {:try_start_189 .. :try_end_192} :catch_192

    :catch_192
    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->l()V

    :cond_195
    :goto_195
    return-void

    :pswitch_196  #0x4
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v0, v1, v1}, Lcom/qiuhui/mahjong/OverlayService;->d(ZZ)V

    return-void

    :pswitch_19e  #0x3
    sget-boolean v2, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v2, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v2, v0, v1}, Lcom/qiuhui/mahjong/OverlayService;->d(ZZ)V

    return-void

    :pswitch_1a6  #0x2
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v0, v1}, Lcom/qiuhui/mahjong/OverlayService;->p(Z)V

    return-void

    :pswitch_1ae  #0x1
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->l()V

    return-void

    :pswitch_1b6  #0x0
    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lq/d4;->b:Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->n()Z

    move-result v1

    if-eqz v1, :cond_1c8

    iget-object v1, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1cb

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->o()V

    goto :goto_1cb

    :cond_1c8
    invoke-virtual {v0}, Lcom/qiuhui/mahjong/OverlayService;->i()V

    :cond_1cb
    :goto_1cb
    return-void

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_1b6  #00000000
        :pswitch_1ae  #00000001
        :pswitch_1a6  #00000002
        :pswitch_19e  #00000003
        :pswitch_196  #00000004
        :pswitch_169  #00000005
        :pswitch_161  #00000006
        :pswitch_b1  #00000007
        :pswitch_7f  #00000008
        :pswitch_67  #00000009
        :pswitch_25  #0000000a
    .end packed-switch
.end method
