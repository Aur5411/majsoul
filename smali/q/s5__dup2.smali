.class public final synthetic Lq/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/WebGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V
    .registers 3

    iput p2, p0, Lq/s5;->a:I

    iput-object p1, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    const-string v3, "window.__qiuhuiPrioritizeAnimation&&window.__qiuhuiPrioritizeAnimation(9500);"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lq/s5;->a:I

    packed-switch v7, :pswitch_data_140

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->e()V

    return-void

    :pswitch_15  #0x9
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->E()V

    return-void

    :pswitch_1d  #0x8
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->s()V

    return-void

    :pswitch_25  #0x7
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->B()V

    return-void

    :pswitch_2d  #0x6
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    const-string v0, "overlay"

    iget-object v1, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "cat_recommendation_enabled"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v1}, Lcom/qiuhui/mahjong/WebGameActivity;->D()V

    goto :goto_46

    :cond_43
    invoke-virtual {v1}, Lcom/qiuhui/mahjong/WebGameActivity;->h()V

    :goto_46
    return-void

    :pswitch_47  #0x5
    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    sget-boolean v1, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lq/r;->j:Lq/m;

    iget-wide v2, v1, Lq/m;->a:J

    iget-wide v4, v0, Lcom/qiuhui/mahjong/WebGameActivity;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6d

    sget-object v2, Lq/r;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    iget-wide v1, v1, Lq/m;->a:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const-wide/16 v3, -0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->h:J

    :cond_6d
    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->B()V

    iget-object v1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v2, Lq/s5;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_7e  #0x4
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->B()V

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->D()V

    sget-object v1, Lq/r;->k:Lq/q;

    iget-object v2, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_9c

    iget-wide v6, v1, Lq/q;->a:J

    iget-wide v8, v0, Lcom/qiuhui/mahjong/WebGameActivity;->i:J

    cmp-long v1, v6, v8

    if-gtz v1, :cond_97

    goto :goto_9c

    :cond_97
    iput-wide v6, v0, Lcom/qiuhui/mahjong/WebGameActivity;->i:J

    invoke-virtual {v2, v3, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_9c
    :goto_9c
    return-void

    :pswitch_9d  #0x3
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->o()V

    return-void

    :pswitch_a5  #0x2
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lq/r;->k:Lq/q;

    iget-object v6, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v6, :cond_c0

    iget-wide v7, v4, Lq/q;->a:J

    iget-wide v9, v0, Lcom/qiuhui/mahjong/WebGameActivity;->i:J

    cmp-long v4, v7, v9

    if-gtz v4, :cond_bb

    goto :goto_c0

    :cond_bb
    iput-wide v7, v0, Lcom/qiuhui/mahjong/WebGameActivity;->i:J

    invoke-virtual {v6, v3, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_c0
    :goto_c0
    invoke-static {}, Lq/r;->a()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_d6

    iget-object v1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->r:Landroid/os/Handler;

    iget-object v0, v0, Lcom/qiuhui/mahjong/WebGameActivity;->u:Lq/s5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_dc

    :cond_d6
    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->B()V

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->D()V

    :goto_dc
    return-void

    :pswitch_dd  #0x1
    iget-object v3, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    sget-boolean v5, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lq/j3;->e(Landroid/content/Context;)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v7, v9

    cmp-long v5, v7, v1

    if-lez v5, :cond_fe

    cmp-long v1, v9, v1

    if-lez v1, :cond_fe

    iget-object v0, v3, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v1, v3, Lcom/qiuhui/mahjong/WebGameActivity;->t:Lq/s5;

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_119

    :cond_fe
    invoke-static {}, Lq/j3;->m()Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-virtual {v3}, Lcom/qiuhui/mahjong/WebGameActivity;->E()V

    goto :goto_119

    :cond_108
    sget v1, Lq/r;->c:I

    if-ne v1, v0, :cond_10d

    move v4, v6

    :cond_10d
    const-string v0, "LICENSE_EXPIRED"

    invoke-static {v0, v4}, Lq/j3;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_116

    goto :goto_119

    :cond_116
    invoke-virtual {v3}, Lcom/qiuhui/mahjong/WebGameActivity;->A()V

    :goto_119
    return-void

    :pswitch_11a  #0x0
    iget-object v1, p0, Lq/s5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    sget-boolean v2, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lq/j3;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12f

    invoke-virtual {v1}, Lcom/qiuhui/mahjong/WebGameActivity;->A()V

    goto :goto_13e

    :cond_12f
    sget v3, Lq/r;->c:I

    if-ne v3, v0, :cond_135

    move v0, v6

    goto :goto_136

    :cond_135
    move v0, v4

    :goto_136
    new-instance v3, Lq/e4;

    invoke-direct {v3, v1, v0, v6}, Lq/e4;-><init>(Landroid/content/ContextWrapper;ZI)V

    invoke-static {v1, v2, v4, v3}, Lq/n3;->b(Landroid/content/Context;Ljava/lang/String;ZLq/e4;)V

    :goto_13e
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_11a  #00000000
        :pswitch_dd  #00000001
        :pswitch_a5  #00000002
        :pswitch_9d  #00000003
        :pswitch_7e  #00000004
        :pswitch_47  #00000005
        :pswitch_2d  #00000006
        :pswitch_25  #00000007
        :pswitch_1d  #00000008
        :pswitch_15  #00000009
    .end packed-switch
.end method
