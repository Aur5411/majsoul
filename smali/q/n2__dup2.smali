.class public final synthetic Lq/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq/r2;

.field public final synthetic b:J

.field public final synthetic c:Lq/n;

.field public final synthetic d:[F

.field public final synthetic e:[Z

.field public final synthetic f:Lq/b4;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lq/r2;JLq/n;[F[ZLjava/util/List;Lq/b4;Ljava/util/List;JJ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/n2;->a:Lq/r2;

    iput-wide p2, p0, Lq/n2;->b:J

    iput-object p4, p0, Lq/n2;->c:Lq/n;

    iput-object p5, p0, Lq/n2;->d:[F

    iput-object p6, p0, Lq/n2;->e:[Z

    iput-object p8, p0, Lq/n2;->f:Lq/b4;

    iput-object p9, p0, Lq/n2;->g:Ljava/util/List;

    iput-wide p10, p0, Lq/n2;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v10, v0, Lq/n2;->c:Lq/n;

    iget-object v1, v0, Lq/n2;->d:[F

    iget-object v2, v0, Lq/n2;->e:[Z

    iget-wide v5, v0, Lq/n2;->h:J

    iget-object v3, v0, Lq/n2;->a:Lq/r2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lq/r2;->a:Lq/W3;

    :try_start_11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_18} :catch_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_c1

    :catch_18
    :try_start_18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v3, Lq/r2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v7, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-lez v9, :cond_2f

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2f
    iget-object v7, v3, Lq/r2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_c1

    iget-wide v11, v0, Lq/n2;->b:J

    cmp-long v7, v7, v11

    if-eqz v7, :cond_3d

    goto/16 :goto_c1

    :cond_3d
    :try_start_3d
    new-instance v7, Lq/o2;

    invoke-direct {v7, v3, v11, v12}, Lq/o2;-><init>(Lq/r2;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v4, v10, v1, v2, v7}, Lq/W3;->a(Lq/n;[F[ZLq/o2;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lq/o2;->getAsBoolean()Z

    move-result v2

    if-eqz v2, :cond_51

    goto/16 :goto_c1

    :cond_51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_55} :catch_c1

    iget-object v9, v0, Lq/n2;->g:Ljava/util/List;

    if-nez v8, :cond_5a

    goto :goto_a9

    :cond_5a
    :try_start_5a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq/p4;

    iget v14, v14, Lq/p4;->g:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_c1

    const/16 v15, 0x25

    if-ne v14, v15, :cond_5e

    iget-object v13, v0, Lq/n2;->f:Lq/b4;

    if-eqz v13, :cond_88

    :try_start_74
    invoke-virtual {v13}, Lq/b4;->g()Z

    move-result v14

    if-eqz v14, :cond_88

    invoke-virtual {v7}, Lq/o2;->getAsBoolean()Z

    move-result v14
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7e} :catch_c1

    if-nez v14, :cond_88

    :try_start_80
    iget-object v14, v13, Lq/b4;->a:[F

    iget-object v13, v13, Lq/b4;->b:[Z

    invoke-virtual {v4, v10, v14, v13, v7}, Lq/W3;->a(Lq/n;[F[ZLq/o2;)Ljava/util/List;

    move-result-object v2
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_88} :catch_88

    :catch_88
    :cond_88
    :try_start_88
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a9

    invoke-static {v10, v9}, Lq/k;->i(Lq/n;Ljava/util/List;)[Z

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_94
    if-ge v15, v14, :cond_a9

    aget-boolean v16, v13, v15

    if-eqz v16, :cond_a6

    invoke-virtual {v7}, Lq/o2;->getAsBoolean()Z

    move-result v14
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9e} :catch_c1

    if-nez v14, :cond_a9

    :try_start_a0
    invoke-virtual {v4, v10, v1, v13, v7}, Lq/W3;->a(Lq/n;[F[ZLq/o2;)Ljava/util/List;

    move-result-object v1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a4} :catch_a9

    move-object v13, v1

    goto :goto_aa

    :cond_a6
    add-int/lit8 v15, v15, 0x1

    goto :goto_94

    :catch_a9
    :cond_a9
    :goto_a9
    move-object v13, v2

    :goto_aa
    :try_start_aa
    invoke-virtual {v7}, Lq/o2;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_c1

    :cond_b1
    iget-object v14, v3, Lq/r2;->d:Landroid/os/Handler;

    new-instance v15, Lq/p2;

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v11

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    invoke-direct/range {v1 .. v10}, Lq/p2;-><init>(Lq/r2;JJLjava/util/List;Ljava/util/List;Ljava/util/List;Lq/n;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c1} :catch_c1

    :catch_c1
    :goto_c1
    return-void
.end method
