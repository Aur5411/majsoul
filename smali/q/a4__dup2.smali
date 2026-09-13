.class public final Lq/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static k:Lq/a4;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lai/onnxruntime/OrtEnvironment;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/EnumMap;

.field public final f:Ljava/util/EnumMap;

.field public final g:Ljava/util/EnumMap;

.field public final h:Ljava/util/EnumMap;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/a4;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/a4;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lq/n;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lq/a4;->e:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lq/a4;->f:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lq/a4;->g:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lq/a4;->h:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lq/a4;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq/a4;->a:Landroid/content/Context;

    return-void
.end method

.method public static c(Lq/n;[F[Z)Ljava/util/List;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_164

    if-eqz v1, :cond_164

    array-length v3, v1

    iget v4, v0, Lq/n;->c:I

    if-ne v3, v4, :cond_164

    array-length v3, v2

    if-ne v3, v4, :cond_164

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_19
    if-ge v6, v4, :cond_31

    aget-boolean v7, v2, v6

    if-eqz v7, :cond_2e

    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Float;->isFinite(F)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_31
    new-instance v4, Lq/Z3;

    invoke-direct {v4, v1}, Lq/Z3;-><init>([F)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4c
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v6, v1, v6

    float-to-double v6, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    :goto_68
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-wide/high16 v12, -0x3fbc000000000000L  # -40.0

    if-eqz v11, :cond_88

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget v11, v1, v11

    float-to-double v14, v11

    sub-double/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    goto :goto_68

    :cond_88
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v11, v5

    :goto_8e
    if-ge v11, v4, :cond_15a

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v5, 0x25

    if-ge v14, v5, :cond_a1

    const/16 v16, 0x1

    goto :goto_a3

    :cond_a1
    const/16 v16, 0x0

    :goto_a3
    if-eqz v16, :cond_b4

    packed-switch v14, :pswitch_data_16c

    move/from16 v17, v14

    goto :goto_b6

    :pswitch_ab  #0x24
    const/16 v17, 0x16

    goto :goto_b6

    :pswitch_ae  #0x23
    const/16 v17, 0xd

    goto :goto_b6

    :pswitch_b1  #0x22
    const/16 v17, 0x4

    goto :goto_b6

    :cond_b4
    const/16 v17, -0x1

    :goto_b6
    if-eqz v16, :cond_cd

    packed-switch v14, :pswitch_data_176

    invoke-static/range {v17 .. v17}, Lq/k;->m(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_11f

    :pswitch_c1  #0x24
    const-string v5, "赤5索"

    goto/16 :goto_11f

    :pswitch_c5  #0x23
    const-string v5, "赤5筒"

    goto/16 :goto_11f

    :pswitch_c9  #0x22
    const-string v5, "赤5万"

    goto/16 :goto_11f

    :cond_cd
    const/4 v15, 0x0

    :goto_ce
    array-length v12, v2

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ge v15, v12, :cond_de

    aget-boolean v12, v2, v15

    if-eqz v12, :cond_db

    const/4 v15, 0x1

    goto :goto_df

    :cond_db
    add-int/lit8 v15, v15, 0x1

    goto :goto_ce

    :cond_de
    const/4 v15, 0x0

    :goto_df
    sget-object v5, Lq/n;->d:Lq/n;

    const-string v12, "立直"

    const-string v13, "碰"

    const-string v16, "杠"

    const-string v18, "荣和"

    const-string v19, "自摸"

    const-string v20, "九种九牌"

    const-string v21, "跳过"

    const-string v22, "操作"

    if-ne v0, v5, :cond_10f

    packed-switch v14, :pswitch_data_180

    :goto_f6
    move-object/from16 v12, v22

    goto :goto_11e

    :pswitch_f9  #0x2b, 0x2d
    move-object/from16 v12, v21

    goto :goto_11e

    :pswitch_fc  #0x2a, 0x2c
    move-object/from16 v12, v20

    goto :goto_11e

    :pswitch_ff  #0x29
    if-eqz v15, :cond_104

    :goto_101
    move-object/from16 v12, v19

    goto :goto_11e

    :cond_104
    move-object/from16 v12, v18

    goto :goto_11e

    :pswitch_107  #0x28
    const-string v12, "拔北/杠"

    goto :goto_11e

    :pswitch_10a  #0x27, 0x2a
    move-object/from16 v12, v16

    goto :goto_11e

    :pswitch_10d  #0x26, 0x29
    move-object v12, v13

    goto :goto_11e

    :cond_10f
    packed-switch v14, :pswitch_data_192

    goto :goto_f6

    :pswitch_113  #0x2b
    if-eqz v15, :cond_104

    goto :goto_101

    :pswitch_116  #0x28
    const-string v12, "吃（高）"

    goto :goto_11e

    :pswitch_119  #0x27
    const-string v12, "吃（中）"

    goto :goto_11e

    :pswitch_11c  #0x26
    const-string v12, "吃（低）"

    :goto_11e
    :pswitch_11e  #0x25, 0x25
    move-object v5, v12

    :goto_11f
    aget v12, v1, v14

    float-to-double v12, v12

    sub-double/2addr v12, v6

    const-wide/high16 v0, -0x3fbc000000000000L  # -40.0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    div-double/2addr v12, v9

    double-to-float v12, v12

    new-instance v13, Lq/p4;

    if-nez v11, :cond_138

    const-string v15, "Mortal 首选"

    :goto_135
    move-object/from16 v21, v15

    goto :goto_13b

    :cond_138
    const-string v15, "Mortal 备选"

    goto :goto_135

    :goto_13b
    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v23, -0x1

    move-object v15, v13

    move/from16 v16, v17

    move-object/from16 v17, v5

    move/from16 v20, v12

    move/from16 v22, v14

    invoke-direct/range {v15 .. v23}, Lq/p4;-><init>(ILjava/lang/String;IIFLjava/lang/String;II)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-wide v12, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_8e

    :cond_15a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mortal 输出或动作掩码维度不正确"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_16c
    .packed-switch 0x22
        :pswitch_b1  #00000022
        :pswitch_ae  #00000023
        :pswitch_ab  #00000024
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x22
        :pswitch_c9  #00000022
        :pswitch_c5  #00000023
        :pswitch_c1  #00000024
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x25
        :pswitch_11e  #00000025
        :pswitch_10d  #00000026
        :pswitch_10a  #00000027
        :pswitch_107  #00000028
        :pswitch_ff  #00000029
        :pswitch_fc  #0000002a
        :pswitch_f9  #0000002b
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x25
        :pswitch_11e  #00000025
        :pswitch_11c  #00000026
        :pswitch_119  #00000027
        :pswitch_116  #00000028
        :pswitch_10d  #00000029
        :pswitch_10a  #0000002a
        :pswitch_113  #0000002b
        :pswitch_fc  #0000002c
        :pswitch_f9  #0000002d
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OrtSession$RunOptions;

    if-nez v0, :cond_b

    return-void

    :cond_b
    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_18

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v1

    goto :goto_1e

    :cond_18
    const/4 v1, 0x1

    :try_start_19
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$RunOptions;->setTerminate(Z)V
    :try_end_1c
    .catch Lai/onnxruntime/OrtException; {:try_start_19 .. :try_end_1c} :catch_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    :catch_1c
    :try_start_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_16

    throw v1
.end method

.method public final b(Lq/n;)Lai/onnxruntime/OrtSession;
    .registers 7

    const-string v0, "0"

    iget-object v1, p0, Lq/a4;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lai/onnxruntime/OrtSession;

    if-eqz v2, :cond_d

    return-object v2

    :cond_d
    new-instance v2, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v2}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    :try_start_12
    sget-object v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    invoke-virtual {v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationLevel(Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->setIntraOpNumThreads(I)V

    invoke-virtual {v2, v4}, Lai/onnxruntime/OrtSession$SessionOptions;->setInterOpNumThreads(I)V

    const-string v3, "session.intra_op.allow_spinning"

    invoke-virtual {v2, v3, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addConfigEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "session.inter_op.allow_spinning"

    invoke-virtual {v2, v3, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addConfigEntry(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/a4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lq/V3;->b(Landroid/content/Context;Lq/n;)[B

    move-result-object v0
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_4e

    const/4 v3, 0x0

    :try_start_34
    iget-object v4, p0, Lq/a4;->b:Lai/onnxruntime/OrtEnvironment;

    if-nez v4, :cond_3e

    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    move-result-object v4

    iput-object v4, p0, Lq/a4;->b:Lai/onnxruntime/OrtEnvironment;

    :cond_3e
    iget-object v4, p0, Lq/a4;->b:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v4, v0, v2}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object v4
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_50

    :try_start_44
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4e

    invoke-virtual {v2}, Lai/onnxruntime/OrtSession$SessionOptions;->close()V

    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catchall_4e
    move-exception p1

    goto :goto_55

    :catchall_50
    move-exception p1

    :try_start_51
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    throw p1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_4e

    :goto_55
    :try_start_55
    invoke-virtual {v2}, Lai/onnxruntime/OrtSession$SessionOptions;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw p1
.end method

.method public final declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lq/a4;->a()V

    iget-object v0, p0, Lq/a4;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/OrtSession;

    invoke-virtual {v1}, Lai/onnxruntime/OrtSession;->close()V

    goto :goto_e

    :catchall_1e
    move-exception v0

    goto :goto_45

    :cond_20
    iget-object v0, p0, Lq/a4;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lq/a4;->e:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    iget-object v0, p0, Lq/a4;->f:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    iget-object v0, p0, Lq/a4;->g:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    iget-object v0, p0, Lq/a4;->h:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    iget-object v0, p0, Lq/a4;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lq/a4;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_1e

    monitor-exit p0

    return-void

    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_1e

    throw v0
.end method
