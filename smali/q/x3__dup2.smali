.class public final synthetic Lq/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq/y3;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lq/y3;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/x3;->a:Lq/y3;

    iput-wide p2, p0, Lq/x3;->b:J

    iput p4, p0, Lq/x3;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    iget-object v0, p0, Lq/x3;->a:Lq/y3;

    iget-wide v1, p0, Lq/x3;->b:J

    iget v3, p0, Lq/x3;->c:I

    monitor-enter v0

    :try_start_7
    iget-wide v4, v0, Lq/y3;->f:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_c4

    iget v1, v0, Lq/y3;->g:I

    if-ne v1, v3, :cond_c4

    iget-object v1, v0, Lq/y3;->a:Lq/w3;

    invoke-virtual {v1, v3}, Lq/w3;->p(I)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_c4

    :cond_1b
    const/4 v1, -0x1

    iput v1, v0, Lq/y3;->g:I

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_c2

    iget-object v2, v0, Lq/y3;->a:Lq/w3;

    monitor-enter v2

    :try_start_22
    iget-object v3, v2, Lq/w3;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v2, Lq/w3;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lq/w3;->t:Z

    iput-boolean v3, v2, Lq/w3;->u:Z

    iput-boolean v3, v2, Lq/w3;->v:Z

    iget-wide v4, v2, Lq/w3;->w:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lq/w3;->w:J

    iget-object v4, v2, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lq/w3;->x:Ljava/util/List;

    iput-boolean v3, v2, Lq/w3;->r:Z

    iput-boolean v3, v2, Lq/w3;->s:Z

    iput v1, v2, Lq/w3;->k:I

    iput v3, v2, Lq/w3;->l:I

    iput v3, v2, Lq/w3;->m:I

    iput v1, v2, Lq/w3;->n:I

    const/4 v4, 0x0

    iput-object v4, v2, Lq/w3;->y:Lq/Z1;

    iput-boolean v3, v2, Lq/w3;->z:Z

    iput v1, v2, Lq/w3;->A:I

    iget v5, v2, Lq/w3;->h:I

    const-wide/16 v8, 0x0

    if-ltz v5, :cond_6d

    if-ltz v5, :cond_7b

    iput v5, v2, Lq/w3;->i:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/32 v12, 0xafc8

    add-long/2addr v10, v12

    iput-wide v10, v2, Lq/w3;->j:J

    goto :goto_7b

    :cond_6d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v2, Lq/w3;->j:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_7b

    iput v1, v2, Lq/w3;->i:I

    iput-wide v8, v2, Lq/w3;->j:J

    :cond_7b
    :goto_7b
    iput v1, v2, Lq/w3;->h:I

    iput-wide v8, v2, Lq/w3;->g:J

    invoke-virtual {v2}, Lq/w3;->c()V

    iput-object v4, v2, Lq/w3;->o:Lq/n;

    iput-boolean v3, v2, Lq/w3;->q:Z
    :try_end_86
    .catchall {:try_start_22 .. :try_end_86} :catchall_bf

    monitor-exit v2

    iget-object v0, v0, Lq/y3;->d:Lq/r2;

    invoke-virtual {v0}, Lq/r2;->b()J

    iput-boolean v3, v0, Lq/r2;->h:Z

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v0, Lq/r;

    monitor-enter v0

    :try_start_93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V

    new-instance v1, Lq/q;

    sget-wide v4, Lq/r;->p:J

    add-long/2addr v4, v6

    sput-wide v4, Lq/r;->p:J

    invoke-direct {v1, v4, v5, v3}, Lq/q;-><init>(JZ)V

    sput-object v1, Lq/r;->k:Lq/q;

    const-string v1, ""

    sput-object v1, Lq/r;->f:Ljava/lang/String;

    sput-boolean v3, Lq/r;->h:Z

    sget-boolean v1, Lq/r;->g:Z

    if-eqz v1, :cond_b4

    const/4 v1, 0x3

    goto :goto_b5

    :cond_b4
    const/4 v1, 0x2

    :goto_b5
    sput v1, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_ba
    .catchall {:try_start_93 .. :try_end_ba} :catchall_bc

    monitor-exit v0

    goto :goto_c5

    :catchall_bc
    move-exception v1

    :try_start_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v1

    :catchall_bf
    move-exception v0

    :try_start_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v0

    :catchall_c2
    move-exception v1

    goto :goto_c6

    :cond_c4
    :goto_c4
    :try_start_c4
    monitor-exit v0

    :goto_c5
    return-void

    :goto_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c2

    throw v1
.end method
