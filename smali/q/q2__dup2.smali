.class public final synthetic Lq/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq/r2;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lq/r2;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/q2;->a:Lq/r2;

    iput-wide p2, p0, Lq/q2;->b:J

    iput-wide p4, p0, Lq/q2;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-wide v0, p0, Lq/q2;->b:J

    iget-wide v2, p0, Lq/q2;->c:J

    iget-object v4, p0, Lq/q2;->a:Lq/r2;

    iget-object v4, v4, Lq/r2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_3f

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v0, Lq/r;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lq/r;->k:Lq/q;

    iget-wide v4, v1, Lq/q;->a:J
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_3c

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1f

    monitor-exit v0

    goto :goto_3f

    :cond_1f
    :try_start_1f
    const-string v1, ""

    sput-object v1, Lq/r;->f:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lq/r;->h:Z

    sget-object v1, Lq/r;->k:Lq/q;

    iget-boolean v1, v1, Lq/q;->b:Z

    if-nez v1, :cond_2e

    const/4 v1, 0x4

    goto :goto_35

    :cond_2e
    sget-boolean v1, Lq/r;->g:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    goto :goto_35

    :cond_34
    const/4 v1, 0x2

    :goto_35
    sput v1, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_3c

    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1

    :cond_3f
    :goto_3f
    return-void
.end method
