.class public final Lq/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Lq/w3;

.field public final b:Lq/s2;

.field public final c:Lq/A2;

.field public final d:Lq/r2;

.field public final e:Landroid/os/Handler;

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/OverlayService;Lq/r2;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lq/y3;->e:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lq/y3;->g:I

    iput-object p2, p0, Lq/y3;->d:Lq/r2;

    new-instance v0, Lq/v2;

    invoke-direct {v0, p1}, Lq/v2;-><init>(Landroid/content/ContextWrapper;)V

    new-instance v1, Lq/w3;

    invoke-direct {v1, v0, p2}, Lq/w3;-><init>(Lq/v2;Lq/r2;)V

    iput-object v1, p0, Lq/y3;->a:Lq/w3;

    new-instance v1, Lq/s2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lq/s2;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lq/y3;->b:Lq/s2;

    new-instance p2, Lq/A2;

    invoke-direct {p2, p1, v0}, Lq/A2;-><init>(Landroid/content/ContextWrapper;Lq/v2;)V

    iput-object p2, p0, Lq/y3;->c:Lq/A2;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lq/y3;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lq/y3;->f:J

    const/4 v0, -0x1

    iput v0, p0, Lq/y3;->g:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_38

    monitor-exit p0

    iget-object v1, p0, Lq/y3;->a:Lq/w3;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_10
    iput-boolean v2, v1, Lq/w3;->t:Z

    iput-boolean v2, v1, Lq/w3;->u:Z

    iput-boolean v2, v1, Lq/w3;->v:Z

    invoke-virtual {v1}, Lq/w3;->c()V

    const/4 v3, 0x0

    iput-object v3, v1, Lq/w3;->o:Lq/n;

    iput-boolean v2, v1, Lq/w3;->q:Z

    iget-object v4, v1, Lq/w3;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, v1, Lq/w3;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iput-object v3, v1, Lq/w3;->y:Lq/Z1;

    iput-boolean v2, v1, Lq/w3;->z:Z

    iput v0, v1, Lq/w3;->A:I

    iget-object v0, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_35

    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method
