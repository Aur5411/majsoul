.class public final synthetic Lq/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq/r2;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lq/n;


# direct methods
.method public synthetic constructor <init>(Lq/r2;JJLjava/util/List;Ljava/util/List;Ljava/util/List;Lq/n;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/p2;->a:Lq/r2;

    iput-wide p2, p0, Lq/p2;->b:J

    iput-wide p4, p0, Lq/p2;->c:J

    iput-object p6, p0, Lq/p2;->d:Ljava/util/List;

    iput-object p7, p0, Lq/p2;->e:Ljava/util/List;

    iput-object p8, p0, Lq/p2;->f:Ljava/util/List;

    iput-object p9, p0, Lq/p2;->g:Lq/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 24

    move-object/from16 v1, p0

    const/4 v0, 0x1

    iget-object v2, v1, Lq/p2;->a:Lq/r2;

    iget-wide v3, v1, Lq/p2;->b:J

    iget-wide v5, v1, Lq/p2;->c:J

    iget-object v7, v1, Lq/p2;->d:Ljava/util/List;

    iget-object v8, v1, Lq/p2;->e:Ljava/util/List;

    iget-object v9, v1, Lq/p2;->f:Ljava/util/List;

    iget-object v10, v1, Lq/p2;->g:Lq/n;

    iget-object v2, v2, Lq/r2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v2, v11, v3

    if-nez v2, :cond_135

    const/16 v2, 0xb

    invoke-static {v8, v2}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    move v2, v0

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    const/4 v4, 0x4

    invoke-static {v8, v4}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v11

    if-nez v11, :cond_3f

    const/4 v11, 0x5

    invoke-static {v8, v11}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v11

    if-nez v11, :cond_3f

    const/4 v11, 0x6

    invoke-static {v8, v11}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v11

    if-eqz v11, :cond_3d

    goto :goto_3f

    :cond_3d
    move v11, v3

    goto :goto_40

    :cond_3f
    :goto_3f
    move v11, v0

    :goto_40
    invoke-static {v10, v8}, Lq/k;->i(Lq/n;Ljava/util/List;)[Z

    move-result-object v8

    move v10, v3

    :goto_45
    array-length v12, v8

    const/16 v13, 0x25

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ge v10, v12, :cond_56

    aget-boolean v12, v8, v10

    if-eqz v12, :cond_54

    move v3, v0

    goto :goto_56

    :cond_54
    add-int/2addr v10, v0

    goto :goto_45

    :cond_56
    :goto_56
    if-eqz v9, :cond_7a

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/p4;

    iget v12, v10, Lq/p4;->g:I

    invoke-virtual {v10}, Lq/p4;->h()Z

    move-result v10

    if-eqz v10, :cond_5c

    if-eqz v3, :cond_7b

    array-length v10, v8

    if-ge v12, v10, :cond_5c

    aget-boolean v10, v8, v12

    if-eqz v10, :cond_5c

    goto :goto_7b

    :cond_7a
    const/4 v12, -0x1

    :cond_7b
    :goto_7b
    if-nez v2, :cond_83

    if-nez v11, :cond_83

    if-gez v12, :cond_83

    goto/16 :goto_102

    :cond_83
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_90
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fe

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq/p4;

    iget-object v9, v8, Lq/p4;->b:Ljava/lang/String;

    const-string v10, "拔北/杠"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    if-eqz v2, :cond_ab

    const-string v9, "拔北"

    goto :goto_ad

    :cond_ab
    const-string v9, "杠"

    :cond_ad
    :goto_ad
    iget v10, v8, Lq/p4;->g:I

    if-ne v10, v13, :cond_d6

    if-ltz v12, :cond_d6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "立直 · 切 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch v12, :pswitch_data_136

    invoke-static {v12}, Lq/k;->m(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_ca

    :pswitch_c2  #0x24
    const-string v10, "赤五索"

    goto :goto_ca

    :pswitch_c5  #0x23
    const-string v10, "赤五筒"

    goto :goto_ca

    :pswitch_c8  #0x22
    const-string v10, "赤五万"

    :goto_ca
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    move/from16 v22, v12

    goto :goto_dc

    :cond_d6
    iget v10, v8, Lq/p4;->h:I

    move-object/from16 v16, v9

    move/from16 v22, v10

    :goto_dc
    new-instance v9, Lq/p4;

    iget v15, v8, Lq/p4;->a:I

    iget v10, v8, Lq/p4;->c:I

    iget v11, v8, Lq/p4;->d:I

    iget v14, v8, Lq/p4;->e:F

    iget-object v13, v8, Lq/p4;->f:Ljava/lang/String;

    iget v8, v8, Lq/p4;->g:I

    move/from16 v19, v14

    move-object v14, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v20, v13

    move/from16 v21, v8

    invoke-direct/range {v14 .. v22}, Lq/p4;-><init>(ILjava/lang/String;IIFLjava/lang/String;II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x25

    goto :goto_90

    :cond_fe
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    :goto_102
    sget-object v2, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v2, Lq/r;

    monitor-enter v2

    :try_start_107
    sget-object v3, Lq/r;->j:Lq/m;

    iget-wide v8, v3, Lq/m;->a:J
    :try_end_10b
    .catchall {:try_start_107 .. :try_end_10b} :catchall_11d

    cmp-long v3, v8, v5

    if-eqz v3, :cond_111

    monitor-exit v2

    goto :goto_135

    :cond_111
    :try_start_111
    sget-object v3, Lq/r;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    if-nez v7, :cond_11f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_128

    :catchall_11d
    move-exception v0

    goto :goto_133

    :cond_11f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_128
    sput-object v3, Lq/r;->i:Ljava/util/List;

    sput-boolean v0, Lq/r;->h:Z

    sput v4, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_131
    .catchall {:try_start_111 .. :try_end_131} :catchall_11d

    monitor-exit v2

    goto :goto_135

    :goto_133
    :try_start_133
    monitor-exit v2
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_11d

    throw v0

    :cond_135
    :goto_135
    return-void

    :pswitch_data_136
    .packed-switch 0x22
        :pswitch_c8  #00000022
        :pswitch_c5  #00000023
        :pswitch_c2  #00000024
    .end packed-switch
.end method
