.class public final synthetic Lq/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JLq/J5;)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lq/m3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/m3;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lq/m3;->b:J

    iput-object p4, p0, Lq/m3;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lq/e4;Lq/h3;J)V
    .registers 6

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lq/m3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/m3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq/m3;->d:Ljava/lang/Object;

    iput-wide p3, p0, Lq/m3;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget v3, v1, Lq/m3;->a:I

    packed-switch v3, :pswitch_data_1e2

    iget-object v3, v1, Lq/m3;->c:Ljava/lang/Object;

    check-cast v3, Lcom/qiuhui/mahjong/WebGameActivity;

    iget-wide v4, v1, Lq/m3;->b:J

    iget-object v6, v1, Lq/m3;->d:Ljava/lang/Object;

    check-cast v6, Lq/J5;

    sget-boolean v7, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/qiuhui/mahjong/WebGameActivity;->t(J)Z

    move-result v4

    if-eqz v4, :cond_d9

    const-string v4, "automation"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "enabled"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-wide v4, v6, Lq/J5;->a:D

    iget-wide v7, v6, Lq/J5;->b:D

    iget v2, v6, Lq/J5;->d:I

    iget-object v6, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v6, :cond_d9

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_d9

    iget-object v6, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gtz v6, :cond_45

    goto/16 :goto_d9

    :cond_45
    iget-object v6, v3, Lcom/qiuhui/mahjong/WebGameActivity;->j:Lq/K5;

    if-eqz v6, :cond_8e

    iget-wide v13, v6, Lq/K5;->c:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8e

    iget-wide v13, v6, Lq/K5;->d:D

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8e

    iget-wide v13, v6, Lq/K5;->e:D

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8e

    iget-wide v13, v6, Lq/K5;->f:D

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8e

    iget-object v13, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-double v13, v13

    iget-wide v0, v6, Lq/K5;->e:D

    div-double/2addr v13, v0

    iget-object v0, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v9, v6, Lq/K5;->f:D

    div-double/2addr v0, v9

    iget-wide v9, v6, Lq/K5;->a:D

    iget-wide v11, v6, Lq/K5;->c:D

    mul-double/2addr v11, v4

    const-wide/high16 v4, 0x4030000000000000L  # 16.0

    div-double/2addr v11, v4

    add-double/2addr v11, v9

    mul-double/2addr v11, v13

    double-to-float v4, v11

    iget-wide v9, v6, Lq/K5;->b:D

    iget-wide v5, v6, Lq/K5;->d:D

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4022000000000000L  # 9.0

    div-double/2addr v5, v7

    add-double/2addr v5, v9

    mul-double/2addr v5, v0

    double-to-float v0, v5

    goto :goto_a6

    :cond_8e
    iget-object v0, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4030000000000000L  # 16.0

    div-double/2addr v0, v4

    double-to-float v4, v0

    iget-object v0, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v7

    const-wide/high16 v5, 0x4022000000000000L  # 9.0

    div-double/2addr v0, v5

    double-to-float v0, v0

    :goto_a6
    iget-object v1, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v6, v3, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    int-to-float v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/qiuhui/mahjong/WebGameActivity;->m(FF)V

    if-le v2, v5, :cond_d9

    iget-object v2, v3, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v4, Lq/G5;

    invoke-direct {v4, v3, v1, v0}, Lq/G5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;FF)V

    const-wide/16 v0, 0x1a4

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d9
    :goto_d9
    return-void

    :pswitch_da  #0x0
    const-wide/16 v0, 0x0

    move-object/from16 v3, p0

    iget-wide v4, v3, Lq/m3;->b:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, v3, Lq/m3;->d:Ljava/lang/Object;

    check-cast v4, Lq/h3;

    iget-object v5, v3, Lq/m3;->c:Ljava/lang/Object;

    check-cast v5, Lq/e4;

    iget v6, v5, Lq/e4;->a:I

    packed-switch v6, :pswitch_data_1e8

    iget-object v2, v5, Lq/e4;->c:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/qiuhui/mahjong/WebGameActivity;

    iget-boolean v5, v5, Lq/e4;->b:Z

    sget-boolean v6, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v4, Lq/h3;->a:Z

    if-nez v6, :cond_136

    const-string v6, "NETWORK_ERROR"

    iget-object v7, v4, Lq/h3;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    iget-object v4, v2, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v5, v2, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v4, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-eqz v4, :cond_1dd

    iget-object v4, v2, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v2, v2, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1dd

    :cond_11e
    iget-object v0, v4, Lq/h3;->b:Ljava/lang/String;

    invoke-static {v0, v5}, Lq/j3;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-static {}, Lq/j3;->m()Z

    move-result v0

    if-eqz v0, :cond_1dd

    invoke-virtual {v2}, Lcom/qiuhui/mahjong/WebGameActivity;->E()V

    goto/16 :goto_1dd

    :cond_131
    invoke-virtual {v2}, Lcom/qiuhui/mahjong/WebGameActivity;->A()V

    goto/16 :goto_1dd

    :cond_136
    :try_start_136
    iget-object v5, v4, Lq/h3;->d:Ljava/lang/String;

    iget-object v6, v4, Lq/h3;->e:Ljava/lang/String;

    iget-wide v7, v4, Lq/h3;->f:J

    invoke-static {v2, v5, v6, v7, v8}, Lq/j3;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v5, v4, Lq/h3;->d:Ljava/lang/String;

    iget-wide v6, v4, Lq/h3;->f:J

    invoke-static {v2, v5, v6, v7}, Lq/k3;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/qiuhui/mahjong/WebGameActivity;->C()V

    iget-object v4, v2, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v5, v2, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v4, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-eqz v4, :cond_1dd

    iget-object v4, v2, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v5, v2, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_15b} :catch_15d

    goto/16 :goto_1dd

    :catch_15d
    invoke-virtual {v2}, Lcom/qiuhui/mahjong/WebGameActivity;->A()V

    goto/16 :goto_1dd

    :pswitch_162  #0x0
    sget-boolean v6, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v6, v5, Lq/e4;->c:Landroid/content/ContextWrapper;

    check-cast v6, Lcom/qiuhui/mahjong/OverlayService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v4, Lq/h3;->a:Z

    iget-wide v8, v4, Lq/h3;->f:J

    iget-object v10, v4, Lq/h3;->d:Ljava/lang/String;

    iget-object v11, v6, Lcom/qiuhui/mahjong/OverlayService;->b:Lq/d4;

    iget-object v12, v6, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    if-nez v7, :cond_1aa

    const-string v7, "NETWORK_ERROR"

    iget-object v4, v4, Lq/h3;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18e

    invoke-virtual {v12, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v2

    if-eqz v2, :cond_1dd

    invoke-virtual {v12, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1dd

    :cond_18e
    iget-boolean v0, v5, Lq/e4;->b:Z

    invoke-static {v4, v0}, Lq/j3;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_197

    goto :goto_1dd

    :cond_197
    const-class v5, Lq/j3;

    monitor-enter v5

    :try_start_19a
    sput-boolean v2, Lq/j3;->a:Z
    :try_end_19c
    .catchall {:try_start_19a .. :try_end_19c} :catchall_1a7

    monitor-exit v5

    invoke-static {}, Lq/k3;->b()V

    invoke-static {v6}, Lq/j3;->a(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/Service;->stopSelf()V

    goto :goto_1dd

    :catchall_1a7
    move-exception v0

    :try_start_1a8
    monitor-exit v5
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    throw v0

    :cond_1aa
    :try_start_1aa
    iget-object v4, v4, Lq/h3;->e:Ljava/lang/String;

    invoke-static {v6, v10, v4, v8, v9}, Lq/j3;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v6, v10, v8, v9}, Lq/k3;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v12, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v4

    if-eqz v4, :cond_1c5

    invoke-virtual {v12, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/qiuhui/mahjong/OverlayService;->C:Z

    invoke-virtual {v6}, Lcom/qiuhui/mahjong/OverlayService;->m()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c4} :catch_1ce

    goto :goto_1dd

    :cond_1c5
    iget-object v0, v6, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    :try_start_1c7
    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1cd} :catch_1ce

    goto :goto_1dd

    :catch_1ce
    const-class v1, Lq/j3;

    monitor-enter v1

    :try_start_1d1
    sput-boolean v2, Lq/j3;->a:Z
    :try_end_1d3
    .catchall {:try_start_1d1 .. :try_end_1d3} :catchall_1de

    monitor-exit v1

    invoke-static {}, Lq/k3;->b()V

    invoke-static {v6}, Lq/j3;->a(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/Service;->stopSelf()V

    :cond_1dd
    :goto_1dd
    return-void

    :catchall_1de
    move-exception v0

    :try_start_1df
    monitor-exit v1
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1de

    throw v0

    nop

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_da  #00000000
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_162  #00000000
    .end packed-switch
.end method
