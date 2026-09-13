.class public abstract Lq/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static volatile b:Lq/n;

.field public static volatile c:I

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;

.field public static volatile g:Z

.field public static volatile h:Z

.field public static volatile i:Ljava/util/List;

.field public static volatile j:Lq/m;

.field public static volatile k:Lq/q;

.field public static volatile l:J

.field public static final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final n:Ljava/util/concurrent/atomic/AtomicLong;

.field public static o:J

.field public static p:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lq/n;->e:Lq/n;

    sput-object v0, Lq/r;->b:Lq/n;

    const/4 v0, 0x1

    sput v0, Lq/r;->c:I

    const-string v0, ""

    sput-object v0, Lq/r;->d:Ljava/lang/String;

    sput-object v0, Lq/r;->e:Ljava/lang/String;

    sput-object v0, Lq/r;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lq/r;->i:Ljava/util/List;

    new-instance v0, Lq/m;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    new-array v7, v8, [Z

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lq/m;-><init>(JLjava/util/List;ZLjava/util/List;[Z)V

    sput-object v0, Lq/r;->j:Lq/m;

    new-instance v0, Lq/q;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v8}, Lq/q;-><init>(JZ)V

    sput-object v0, Lq/r;->k:Lq/q;

    const-wide/16 v0, -0x1

    sput-wide v0, Lq/r;->l:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lq/r;->n:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static a()J
    .registers 5

    sget-object v0, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_12

    return-wide v2

    :cond_12
    const-wide/32 v2, 0xf423f

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized b()V
    .registers 3

    const-class v0, Lq/r;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lq/r;->g:Z

    sget v2, Lq/r;->c:I

    if-eq v2, v1, :cond_12

    sget v1, Lq/r;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    goto :goto_12

    :catchall_10
    move-exception v1

    goto :goto_1a

    :cond_12
    :goto_12
    const/4 v1, 0x3

    sput v1, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_10

    :cond_18
    monitor-exit v0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_10

    throw v1
.end method

.method public static c()V
    .registers 2

    sget v0, Lq/r;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x2

    sput v0, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V

    :cond_b
    return-void
.end method

.method public static declared-synchronized d()V
    .registers 10

    const-class v0, Lq/r;

    monitor-enter v0

    const-wide/16 v1, -0x1

    :try_start_5
    sput-wide v1, Lq/r;->l:J

    new-instance v1, Lq/m;

    sget-wide v2, Lq/r;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lq/r;->o:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    new-array v9, v2, [Z

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lq/m;-><init>(JLjava/util/List;ZLjava/util/List;[Z)V

    sput-object v1, Lq/r;->j:Lq/m;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static e(J)Z
    .registers 4

    sget-wide v0, Lq/r;->l:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static f()V
    .registers 2

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/o;

    invoke-interface {v1}, Lq/o;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method
