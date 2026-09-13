.class public abstract Lq/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lq/y3;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/ArrayDeque;

.field public static d:I

.field public static final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/p5;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lq/p5;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lq/j2;

    const/4 v1, 0x2

    invoke-direct {v8, v1}, Lq/j2;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lq/p5;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Lq/y3;)V
    .registers 6

    sget-object v0, Lq/p5;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lq/p5;->a:Lq/y3;

    :goto_5
    sget-object v1, Lq/p5;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/n5;

    sget v2, Lq/p5;->d:I

    invoke-interface {v1}, Lq/n5;->b()I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lq/p5;->d:I

    sget-object v2, Lq/p5;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lq/m2;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v1, v4}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    const/4 p0, 0x0

    sput p0, Lq/p5;->d:I

    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_28

    throw p0
.end method

.method public static b(Lq/n5;)V
    .registers 5

    :goto_0
    sget-object v0, Lq/p5;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x4000000

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v3, 0x200

    if-ge v1, v3, :cond_1b

    sget v1, Lq/p5;->d:I

    invoke-interface {p0}, Lq/n5;->b()I

    move-result v3

    add-int/2addr v3, v1

    if-le v3, v2, :cond_2b

    :cond_1b
    sget v1, Lq/p5;->d:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/n5;

    invoke-interface {v0}, Lq/n5;->b()I

    move-result v0

    sub-int/2addr v1, v0

    sput v1, Lq/p5;->d:I

    goto :goto_0

    :cond_2b
    invoke-interface {p0}, Lq/n5;->b()I

    move-result v1

    if-gt v1, v2, :cond_3d

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    sget v0, Lq/p5;->d:I

    invoke-interface {p0}, Lq/n5;->b()I

    move-result p0

    add-int/2addr p0, v0

    sput p0, Lq/p5;->d:I

    :cond_3d
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x800000

    if-le v0, v1, :cond_b

    goto :goto_2d

    :cond_b
    new-instance v0, Lq/o5;

    invoke-direct {v0, p0}, Lq/o5;-><init>(Ljava/lang/String;)V

    sget-object p0, Lq/p5;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_13
    sget-object v1, Lq/p5;->a:Lq/y3;

    if-nez v1, :cond_1e

    invoke-static {v0}, Lq/p5;->b(Lq/n5;)V

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    goto :goto_2b

    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1c

    sget-object p0, Lq/p5;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lq/m2;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v0, v3}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1c

    throw v0

    :cond_2d
    :goto_2d
    return-void
.end method
