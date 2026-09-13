.class public abstract Lq/U5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Lq/T5;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lq/U5;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq/U5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq/U5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lq/T5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/U5;->d:Lq/T5;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1a

    sget-object v1, Lq/U5;->a:Landroid/os/Handler;

    new-instance v2, Lq/w4;

    invoke-direct {v2, p0, v0}, Lq/w4;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1a
    sget-object v1, Lq/U5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3e

    :try_start_23
    sget-object v3, Lq/U5;->d:Lq/T5;

    new-instance v4, Lq/Z5;

    invoke-direct {v4, v3}, Lq/Z5;-><init>(Lq/T5;)V

    new-instance v5, Lq/L2;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lq/L2;-><init>(I)V

    sget-object v6, Lq/O5;->a:Ljava/util/WeakHashMap;

    new-instance v6, Lq/M5;

    invoke-direct {v6, v4, v5, p0}, Lq/M5;-><init>(Lq/Z5;Lq/L2;Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lq/T5;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    goto :goto_3e

    :catchall_3b
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3e
    :goto_3e
    sget-object p0, Lq/U5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_59

    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lq/r3;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lq/r3;-><init>(I)V

    const-string v2, "qiuhui-game-dns-warmup"

    invoke-direct {p0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_59
    return-void
.end method
