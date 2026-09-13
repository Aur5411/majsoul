.class public final synthetic Lq/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput p2, p0, Lq/w4;->a:I

    iput-object p1, p0, Lq/w4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget v0, p0, Lq/w4;->a:I

    packed-switch v0, :pswitch_data_fe

    iget-object v0, p0, Lq/w4;->b:Landroid/content/Context;

    invoke-static {v0}, Lq/U5;->a(Landroid/content/Context;)V

    return-void

    :pswitch_b  #0x0
    iget-object v0, p0, Lq/w4;->b:Landroid/content/Context;

    const-string v1, "发现全皮肤更新 "

    const/16 v2, 0x64

    const/16 v3, 0x9

    const/4 v4, 0x0

    :try_start_14
    invoke-static {v0}, Lq/y;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lq/C4;->d(Ljava/lang/String;)Lq/J1;

    move-result-object v5

    iget-boolean v6, v5, Lq/J1;->a:Z
    :try_end_1e
    .catch Lq/B4; {:try_start_14 .. :try_end_1e} :catch_d2
    .catch Lq/z4; {:try_start_14 .. :try_end_1e} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_ba
    .catchall {:try_start_14 .. :try_end_1e} :catchall_35

    const/4 v7, 0x3

    const-string v8, "全皮肤数据已是最新"

    const-string v9, ""

    const/4 v10, 0x0

    if-eqz v6, :cond_38

    :try_start_26
    sput-object v10, Lq/C4;->e:Lq/A2;

    sput-object v9, Lq/C4;->f:Ljava/lang/String;

    invoke-static {v0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lq/A4;

    invoke-direct {v5, v7, v1, v2, v8}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_b4

    :catchall_35
    move-exception v0

    goto/16 :goto_f8

    :cond_38
    invoke-static {v0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v11, v5, Lq/J1;->b:Ljava/lang/Object;

    check-cast v11, Lq/A2;

    iget-object v11, v11, Lq/A2;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_71

    invoke-static {v0}, Lq/y;->a(Landroid/content/Context;)Lq/A2;

    move-result-object v11

    if-eqz v11, :cond_5f

    iget-object v11, v11, Lq/A2;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-static {v11}, Lq/y;->y([B)Ljava/lang/String;

    move-result-object v11

    goto :goto_61

    :cond_5f
    const-string v11, "93d3a07223fbd45d1b534f968885baf4791cd57b3888561b91dd073cc5cea8f4"

    :goto_61
    iget-object v6, v5, Lq/J1;->b:Ljava/lang/Object;

    check-cast v6, Lq/A2;

    iget-object v6, v6, Lq/A2;->b:Ljava/lang/Object;

    check-cast v6, Lq/y4;

    iget-object v6, v6, Lq/y4;->d:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_86

    :cond_71
    sput-object v10, Lq/C4;->e:Lq/A2;

    sput-object v9, Lq/C4;->f:Ljava/lang/String;

    iget-object v1, v5, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lq/y;->x(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lq/A4;

    invoke-static {v0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6, v2, v8}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_b4

    :cond_86
    iget-object v6, v5, Lq/J1;->b:Ljava/lang/Object;

    check-cast v6, Lq/A2;

    sput-object v6, Lq/C4;->e:Lq/A2;

    iget-object v6, v5, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v6, Ljava/lang/String;

    sput-object v6, Lq/C4;->f:Ljava/lang/String;

    iget-object v6, v5, Lq/J1;->b:Ljava/lang/Object;

    check-cast v6, Lq/A2;

    iget-object v6, v6, Lq/A2;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lq/J1;->b:Ljava/lang/Object;

    check-cast v1, Lq/A2;

    iget-object v1, v1, Lq/A2;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lq/A4;

    const/4 v7, 0x2

    invoke-direct {v5, v7, v6, v2, v1}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_b4
    .catch Lq/B4; {:try_start_26 .. :try_end_b4} :catch_d2
    .catch Lq/z4; {:try_start_26 .. :try_end_b4} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_b4} :catch_ba
    .catchall {:try_start_26 .. :try_end_b4} :catchall_35

    :goto_b4
    sget-object v0, Lq/C4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_de

    :catch_ba
    :try_start_ba
    invoke-static {v0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "检查失败 点击重试"

    new-instance v5, Lq/A4;

    invoke-direct {v5, v3, v0, v2, v1}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_b4

    :catch_c6
    invoke-static {v0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lq/A4;

    const-string v1, "⚠当前网络无法连接更新服务器，您可以一段时间后重试，或者建议您“科学上网”后重试。"

    invoke-direct {v5, v3, v0, v2, v1}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_b4

    :catch_d2
    invoke-static {v0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "网络延迟较高 已暂停本次检测"

    new-instance v5, Lq/A4;

    invoke-direct {v5, v3, v0, v2, v1}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_ba .. :try_end_dd} :catchall_35

    goto :goto_b4

    :goto_de
    sget-object v0, Lq/C4;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/A3;

    invoke-static {v2, v5}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto :goto_e4

    :cond_f4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void

    :goto_f8
    sget-object v1, Lq/C4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_b  #00000000
    .end packed-switch
.end method
