.class public final Lq/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Lq/W3;

.field public final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Z


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/OverlayService;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lq/j2;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lq/j2;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    move-object v0, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lq/r2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x8

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lq/j2;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Lq/j2;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    move-object v0, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lq/r2;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lq/r2;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lq/r2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lq/r2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, ""

    iput-object v0, p0, Lq/r2;->g:Ljava/lang/String;

    new-instance v0, Lq/W3;

    invoke-direct {v0, p1}, Lq/W3;-><init>(Lcom/qiuhui/mahjong/OverlayService;)V

    iput-object v0, p0, Lq/r2;->a:Lq/W3;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-virtual {p0}, Lq/r2;->b()J

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V

    const/4 v0, 0x1

    sput-boolean v0, Lq/r;->h:Z

    const/4 v0, 0x4

    sput v0, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V

    return-void
.end method

.method public final b()J
    .registers 4

    iget-object v0, p0, Lq/r2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lq/r2;->a:Lq/W3;

    iget-object v2, v2, Lq/W3;->b:Lq/a4;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lq/a4;->a()V

    :cond_f
    return-wide v0
.end method

.method public final c(Lq/n;[F[ZLjava/util/List;ZLjava/util/List;Lq/b4;Z)V
    .registers 32

    move-object/from16 v15, p0

    move-object/from16 v5, p1

    iget-object v0, v15, Lq/r2;->a:Lq/W3;

    invoke-virtual {v0}, Lq/W3;->b()Lq/a4;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, v1, Lq/a4;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1c

    monitor-exit v1

    goto :goto_5a

    :catchall_1c
    move-exception v0

    goto/16 :goto_bf

    :cond_1f
    :try_start_1f
    iget-object v0, v1, Lq/a4;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v3, Lq/n;->e:Lq/n;

    if-ne v5, v3, :cond_2c

    const-string v3, "models/mortal_4p.qhm"

    goto :goto_2e

    :cond_2c
    const-string v3, "models/mortal_3p.qhm"

    :goto_2e
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_51
    .catchall {:try_start_1f .. :try_end_32} :catchall_1c

    :try_start_32
    iget-object v0, v1, Lq/a4;->d:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_43

    if-eqz v3, :cond_3e

    :try_start_3b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_51
    .catchall {:try_start_3b .. :try_end_3e} :catchall_1c

    :cond_3e
    monitor-exit v1

    move v0, v2

    goto :goto_5a

    :goto_41
    move-object v4, v0

    goto :goto_45

    :catchall_43
    move-exception v0

    goto :goto_41

    :goto_45
    if-eqz v3, :cond_50

    :try_start_47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception v0

    move-object v3, v0

    :try_start_4d
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw v4
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_1c

    :catch_51
    :try_start_51
    iget-object v0, v1, Lq/a4;->d:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_1c

    monitor-exit v1

    const/4 v0, 0x0

    :goto_5a
    if-nez v0, :cond_5d

    return-void

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lq/r2;->b()J

    move-result-wide v3

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v6, Lq/r;

    monitor-enter v6

    :try_start_66
    sget-wide v0, Lq/r;->o:J

    const-wide/16 v7, 0x1

    add-long v11, v0, v7

    sput-wide v11, Lq/r;->o:J

    sget-object v0, Lq/r;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    new-instance v0, Lq/m;

    move-object/from16 v16, v0

    move-wide/from16 v17, v11

    move-object/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p3

    invoke-direct/range {v16 .. v22}, Lq/m;-><init>(JLjava/util/List;ZLjava/util/List;[Z)V

    sput-object v0, Lq/r;->j:Lq/m;

    if-eqz p8, :cond_8a

    move-wide v0, v11

    goto :goto_8c

    :cond_8a
    const-wide/16 v0, -0x1

    :goto_8c
    sput-wide v0, Lq/r;->l:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lq/r;->i:Ljava/util/List;

    sput-boolean v2, Lq/r;->h:Z

    const/4 v0, 0x4

    sput v0, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_9c
    .catchall {:try_start_66 .. :try_end_9c} :catchall_bc

    monitor-exit v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v0, v15, Lq/r2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lq/n2;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object v15, v10

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v14}, Lq/n2;-><init>(Lq/r2;JLq/n;[F[ZLjava/util/List;Lq/b4;Ljava/util/List;JJ)V

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v6
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v0

    :goto_bf
    :try_start_bf
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_1c

    throw v0
.end method

.method public final close()V
    .registers 2

    invoke-virtual {p0}, Lq/r2;->b()J

    iget-object v0, p0, Lq/r2;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lq/r2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lq/r2;->a:Lq/W3;

    invoke-virtual {v0}, Lq/W3;->close()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lq/r2;->b()J

    sget-object v0, Lq/r;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    sget-object v0, Lq/r;->b:Lq/n;

    if-eqz p1, :cond_2ca

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    new-array v3, v2, [I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x7

    const/4 v11, 0x1

    const/16 v12, 0x1b

    if-ge v6, v7, :cond_df

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v13, 0x30

    if-lt v7, v13, :cond_45

    const/16 v14, 0x39

    if-gt v7, v14, :cond_45

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    :cond_45
    const/16 v14, 0x6d

    const/16 v15, 0x7a

    if-eq v7, v14, :cond_70

    const/16 v14, 0x70

    if-eq v7, v14, :cond_6d

    const/16 v14, 0x73

    if-eq v7, v14, :cond_6a

    if-ne v7, v15, :cond_56

    goto :goto_71

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "无法识别的牌组："

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    const/16 v12, 0x12

    goto :goto_71

    :cond_6d
    const/16 v12, 0x9

    goto :goto_71

    :cond_70
    move v12, v5

    :goto_71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_d7

    move v14, v5

    :goto_78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ge v14, v10, :cond_d0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v13

    if-nez v10, :cond_86

    const/4 v10, 0x5

    :cond_86
    if-ne v7, v15, :cond_8a

    move v13, v9

    goto :goto_8c

    :cond_8a
    const/16 v13, 0x9

    :goto_8c
    if-lt v10, v11, :cond_b9

    if-gt v10, v13, :cond_b9

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    aget v13, v3, v10

    add-int/2addr v13, v11

    aput v13, v3, v10

    if-gt v13, v8, :cond_9e

    add-int/lit8 v14, v14, 0x1

    const/16 v13, 0x30

    goto :goto_78

    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lq/k;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 超过 4 张"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "牌编号超出范围："

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_d3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_29

    :cond_d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "牌组前缺少数字"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_2c2

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    const/4 v4, 0x3

    rem-int/2addr v1, v4

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2ba

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_f8
    if-ge v7, v2, :cond_260

    aget v10, v3, v7

    if-eqz v10, :cond_107

    sget-object v13, Lq/n;->e:Lq/n;

    if-eq v0, v13, :cond_10b

    if-lt v7, v11, :cond_10b

    if-le v7, v9, :cond_107

    goto :goto_10b

    :cond_107
    const/16 v22, 0x9

    goto/16 :goto_256

    :cond_10b
    :goto_10b
    add-int/lit8 v10, v10, -0x1

    aput v10, v3, v7

    invoke-static {v3}, Lq/k;->l([I)I

    move-result v10

    move v14, v5

    move v15, v14

    :goto_115
    if-ge v14, v2, :cond_13c

    if-eq v0, v13, :cond_11d

    if-lt v14, v11, :cond_11d

    if-le v14, v9, :cond_137

    :cond_11d
    aget v2, v3, v14

    if-lt v2, v8, :cond_122

    goto :goto_137

    :cond_122
    add-int/lit8 v2, v2, 0x1

    aput v2, v3, v14

    invoke-static {v3}, Lq/k;->l([I)I

    move-result v2

    if-ge v2, v10, :cond_132

    aget v2, v3, v14

    sub-int/2addr v2, v11

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v15, v2

    :cond_132
    aget v2, v3, v14

    sub-int/2addr v2, v11

    aput v2, v3, v14

    :cond_137
    :goto_137
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x22

    goto :goto_115

    :cond_13c
    const v2, 0x3dcccccd  # 0.1f

    if-lt v7, v12, :cond_14c

    aget v13, v3, v7

    if-nez v13, :cond_146

    goto :goto_149

    :cond_146
    const v2, 0x3ecccccd  # 0.4f

    :goto_149
    const/16 v22, 0x9

    goto :goto_19a

    :cond_14c
    rem-int/lit8 v13, v7, 0x9

    div-int/lit8 v14, v7, 0x9

    const/16 v22, 0x9

    mul-int/lit8 v14, v14, 0x9

    const/16 v12, 0x8

    const/high16 v16, 0x3e800000  # 0.25f

    if-eqz v13, :cond_16a

    if-ne v13, v12, :cond_15d

    goto :goto_16a

    :cond_15d
    if-eq v13, v11, :cond_166

    if-ne v13, v9, :cond_162

    goto :goto_166

    :cond_162
    const v17, 0x3f333333  # 0.7f

    goto :goto_16c

    :cond_166
    :goto_166
    const v17, 0x3ee66666  # 0.45f

    goto :goto_16c

    :cond_16a
    :goto_16a
    move/from16 v17, v16

    :goto_16c
    if-lez v13, :cond_178

    add-int v18, v14, v13

    add-int/lit8 v18, v18, -0x1

    aget v18, v3, v18

    if-lez v18, :cond_178

    add-float v17, v17, v16

    :cond_178
    if-ge v13, v12, :cond_183

    add-int v12, v14, v13

    add-int/2addr v12, v11

    aget v12, v3, v12

    if-lez v12, :cond_183

    add-float v17, v17, v16

    :cond_183
    if-le v13, v11, :cond_18e

    add-int v12, v14, v13

    sub-int/2addr v12, v6

    aget v12, v3, v12

    if-lez v12, :cond_18e

    add-float v17, v17, v2

    :cond_18e
    if-ge v13, v9, :cond_198

    add-int/2addr v14, v13

    add-int/2addr v14, v6

    aget v12, v3, v14

    if-lez v12, :cond_198

    add-float v17, v17, v2

    :cond_198
    move/from16 v2, v17

    :goto_19a
    aget v12, v3, v7

    add-int/2addr v12, v11

    aput v12, v3, v7

    int-to-double v12, v15

    const-wide v16, 0x4056800000000000L  # 90.0

    div-double v12, v12, v16

    const-wide v8, 0x3fd1eb851eb851ecL  # 0.28

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const-wide v12, 0x3fe1eb851eb851ecL  # 0.56

    add-double/2addr v8, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-double v12, v12

    const-wide v16, 0x3fa70a3d70a3d70aL  # 0.045

    mul-double v12, v12, v16

    sub-double/2addr v8, v12

    float-to-double v12, v2

    const-wide v16, 0x3f947ae147ae147bL  # 0.02

    mul-double v12, v12, v16

    sub-double/2addr v8, v12

    const-wide v12, 0x3fef5c28f5c28f5cL  # 0.98

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const-wide v12, 0x3fa999999999999aL  # 0.05

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v8, v8

    if-gez v10, :cond_1e4

    const-string v9, "已成和"

    goto :goto_1fa

    :cond_1e4
    if-nez v10, :cond_1e9

    const-string v9, "听牌"

    goto :goto_1fa

    :cond_1e9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " 向听"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1fa
    const/16 v12, 0x14

    if-lt v15, v12, :cond_212

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " · 受入宽"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_20f
    move-object/from16 v19, v2

    goto :goto_23c

    :cond_212
    const/high16 v12, 0x3f000000  # 0.5f

    cmpg-float v2, v2, v12

    if-gez v2, :cond_22a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " · 清理孤张"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_20f

    :cond_22a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " · 保持牌效"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_20f

    :goto_23c
    new-instance v2, Lq/p4;

    invoke-static {v7}, Lq/k;->m(I)Ljava/lang/String;

    move-result-object v9

    const/16 v21, -0x1

    move-object v13, v2

    move v14, v7

    move v12, v15

    move-object v15, v9

    move/from16 v16, v10

    move/from16 v17, v12

    move/from16 v18, v8

    move/from16 v20, v7

    invoke-direct/range {v13 .. v21}, Lq/p4;-><init>(ILjava/lang/String;IIFLjava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_256
    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x22

    const/4 v8, 0x4

    const/4 v9, 0x7

    const/16 v12, 0x1b

    goto/16 :goto_f8

    :cond_260
    new-instance v0, Lq/o3;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lq/o3;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v2, Lq/o3;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lq/o3;-><init>(I)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v2, Lq/n4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v2, Lq/o3;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lq/o3;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lq/r;->i:Ljava/util/List;

    sput-boolean v11, Lq/r;->h:Z

    const/4 v0, 0x4

    sput v0, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V

    return-void

    :cond_2ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "切牌推荐需要 14 张牌（或 3n+2 张）"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "末尾数字缺少 m/p/s/z"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "手牌不能为空"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v1, Lq/r;

    monitor-enter v1

    if-nez p1, :cond_d

    :try_start_8
    const-string v2, ""

    goto :goto_e

    :catchall_b
    move-exception p1

    goto :goto_70

    :cond_d
    move-object v2, p1

    :goto_e
    sput-object v2, Lq/r;->d:Ljava/lang/String;

    if-nez p2, :cond_14

    const-string p2, ""

    :cond_14
    sput-object p2, Lq/r;->e:Ljava/lang/String;

    const-string p2, ""

    sput-object p2, Lq/r;->f:Ljava/lang/String;

    sput-boolean v0, Lq/r;->h:Z

    sget-object p2, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    sput-object p2, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V

    const/4 p2, 0x1

    sput-boolean p2, Lq/r;->g:Z

    const/4 p2, 0x3

    sput p2, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_b

    monitor-exit v1

    if-nez p1, :cond_3b

    const-string p1, ""

    goto :goto_47

    :cond_3b
    const-string p2, "[\\p{Cntrl}]"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6f

    const-string p2, "雀魂玩家"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6f

    iget-object p2, p0, Lq/r2;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5e

    goto :goto_6f

    :cond_5e
    iput-object p1, p0, Lq/r2;->g:Ljava/lang/String;

    :try_start_60
    iget-object p2, p0, Lq/r2;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lq/l2;

    invoke-direct {v1, p0, p1, v0}, Lq/l2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_6a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_60 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    const-string p1, ""

    iput-object p1, p0, Lq/r2;->g:Ljava/lang/String;

    :cond_6f
    :goto_6f
    return-void

    :goto_70
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_b

    throw p1
.end method

.method public final f(ZLjava/lang/Runnable;)V
    .registers 12

    invoke-virtual {p0}, Lq/r2;->b()J

    move-result-wide v2

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v0, Lq/r;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V

    new-instance v1, Lq/q;

    sget-wide v4, Lq/r;->p:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lq/r;->p:J

    invoke-direct {v1, v4, v5, p1}, Lq/q;-><init>(JZ)V

    sput-object v1, Lq/r;->k:Lq/q;

    const/4 v1, 0x0

    sput-boolean v1, Lq/r;->h:Z

    const/4 v1, 0x4

    sput v1, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V

    sget-object v1, Lq/r;->k:Lq/q;

    iget-wide v4, v1, Lq/q;->a:J
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_5a

    monitor-exit v0

    const-wide/16 v6, 0x1f40

    :try_start_30
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_46

    new-instance p2, Lq/q2;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lq/q2;-><init>(Lq/r2;JJ)V

    if-eqz p1, :cond_42

    iget-object p1, p0, Lq/r2;->d:Landroid/os/Handler;

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_45

    :cond_42
    invoke-virtual {p2}, Lq/q2;->run()V

    :goto_45
    return-void

    :catchall_46
    move-exception p2

    new-instance v8, Lq/q2;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lq/q2;-><init>(Lq/r2;JJ)V

    if-eqz p1, :cond_56

    iget-object p1, p0, Lq/r2;->d:Landroid/os/Handler;

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    :cond_56
    invoke-virtual {v8}, Lq/q2;->run()V

    :goto_59
    throw p2

    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public final g(J)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v0, p0, Lq/r2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lq/l;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/atomic/AtomicLong;->accumulateAndGet(JLjava/util/function/LongBinaryOperator;)J

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x3a98

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    add-long/2addr p1, v0

    sget-object v0, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lq/l;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAccumulate(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_3c

    invoke-static {}, Lq/r;->f()V

    :cond_3c
    invoke-virtual {p0}, Lq/r2;->b()J

    return-void
.end method
