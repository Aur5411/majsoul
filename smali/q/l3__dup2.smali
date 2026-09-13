.class public final synthetic Lq/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/g3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lq/l3;->a:I

    iput-object p2, p0, Lq/l3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/h3;)V
    .registers 14

    iget v0, p0, Lq/l3;->a:I

    packed-switch v0, :pswitch_data_a6

    iget-object v0, p0, Lq/l3;->b:Ljava/lang/Object;

    check-cast v0, Lq/f4;

    invoke-virtual {v0, p1}, Lq/f4;->a(Lq/h3;)V

    return-void

    :pswitch_d  #0x0
    iget-object v0, p0, Lq/l3;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lq/n3;

    monitor-enter v1

    :try_start_14
    sget-object v2, Lq/n3;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    monitor-exit v1

    goto/16 :goto_a2

    :catchall_1f
    move-exception p1

    goto/16 :goto_a3

    :cond_22
    const/4 v0, 0x0

    sput-boolean v0, Lq/n3;->c:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean v4, p1, Lq/h3;->a:Z

    const-wide/32 v5, 0x493e0

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_4e

    sput-object p1, Lq/n3;->d:Lq/h3;

    sput-wide v2, Lq/n3;->e:J

    sput v0, Lq/n3;->g:I

    sput-wide v7, Lq/n3;->f:J

    iget-object v0, p1, Lq/h3;->g:Ljava/lang/String;

    sput-object v0, Lq/n3;->h:Ljava/lang/String;

    iget-wide v2, p1, Lq/h3;->h:J

    sput-wide v2, Lq/n3;->i:J

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_4c

    :cond_49
    const-wide/32 v5, 0x1b7740

    :goto_4c
    move-wide v7, v5

    goto :goto_83

    :cond_4e
    const-string v4, "NETWORK_ERROR"

    iget-object v9, p1, Lq/h3;->b:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/high16 v9, -0x8000000000000000L

    const/4 v11, 0x0

    if-eqz v4, :cond_7b

    sput-object v11, Lq/n3;->d:Lq/h3;

    sput-wide v9, Lq/n3;->e:J

    sget v4, Lq/n3;->g:I

    const/4 v7, 0x4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-wide/16 v7, 0x7530

    shl-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sget v0, Lq/n3;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lq/n3;->g:I

    add-long/2addr v2, v7

    sput-wide v2, Lq/n3;->f:J

    goto :goto_83

    :cond_7b
    sput-object v11, Lq/n3;->d:Lq/h3;

    sput-wide v9, Lq/n3;->e:J

    sput v0, Lq/n3;->g:I

    sput-wide v7, Lq/n3;->f:J

    :goto_83
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lq/n3;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_14 .. :try_end_8e} :catchall_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/e4;

    invoke-static {v1, p1, v7, v8}, Lq/n3;->a(Lq/e4;Lq/h3;J)V

    goto :goto_92

    :cond_a2
    :goto_a2
    return-void

    :goto_a3
    :try_start_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_1f

    throw p1

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method
