.class public final Lq/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lq/s2;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public volatile c:Z

.field public d:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lq/s2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lq/z3;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lq/z3;->a:Lq/s2;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/z3;->c:Z

    :try_start_3
    iget-object v0, p0, Lq/z3;->d:Ljava/net/ServerSocket;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    iget-object v0, p0, Lq/z3;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
