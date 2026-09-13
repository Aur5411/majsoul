.class public final Lq/J;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/Serializable;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Lq/Z0;

.field public n:Lq/q4;

.field public o:Ljava/util/List;

.field public p:Lq/b3;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/J;->f:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/J;->o:Ljava/util/List;

    sget-object v0, Lq/b3;->c:Lq/b3;

    iput-object v0, p0, Lq/J;->p:Lq/b3;

    return-void
.end method


# virtual methods
.method public final B(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->N(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final D(Lq/W4;)Lq/a;
    .registers 2

    iput-object p1, p0, Lq/t2;->d:Lq/R3;

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final I()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->f:Lq/J2;

    const-class v1, Lq/Q;

    const-class v2, Lq/J;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/Q;
    .registers 3

    invoke-virtual {p0}, Lq/J;->P()Lq/Q;

    move-result-object v0

    invoke-virtual {v0}, Lq/Q;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final P()Lq/Q;
    .registers 5

    new-instance v0, Lq/Q;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/Q;->e:Ljava/io/Serializable;

    sget-object v1, Lq/b3;->c:Lq/b3;

    iput-object v1, v0, Lq/Q;->n:Lq/b3;

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/Q;->o:B

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    iget-object v1, p0, Lq/J;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->g:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lq/J;->e:I

    :cond_24
    iget-object v1, p0, Lq/J;->g:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->f:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lq/J;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->h:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lq/J;->e:I

    :cond_3c
    iget-object v1, p0, Lq/J;->h:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->g:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_54

    iget-object v1, p0, Lq/J;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->i:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lq/J;->e:I

    :cond_54
    iget-object v1, p0, Lq/J;->i:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->h:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lq/J;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->j:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lq/J;->e:I

    :cond_6c
    iget-object v1, p0, Lq/J;->j:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->i:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_84

    iget-object v1, p0, Lq/J;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->k:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lq/J;->e:I

    :cond_84
    iget-object v1, p0, Lq/J;->k:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->j:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lq/J;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->l:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lq/J;->e:I

    :cond_9c
    iget-object v1, p0, Lq/J;->l:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->k:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lq/J;->o:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/J;->o:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lq/J;->e:I

    :cond_b4
    iget-object v1, p0, Lq/J;->o:Ljava/util/List;

    iput-object v1, v0, Lq/Q;->m:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    if-eqz v1, :cond_ee

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lq/J;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/Q;->e:Ljava/io/Serializable;

    const/4 v2, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lq/J;->n:Lq/q4;

    if-nez v3, :cond_d2

    iget-object v3, p0, Lq/J;->m:Lq/Z0;

    goto :goto_d8

    :cond_d2
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/Z0;

    :goto_d8
    iput-object v3, v0, Lq/Q;->l:Lq/Z0;

    or-int/lit8 v2, v2, 0x2

    :cond_dc
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lq/J;->p:Lq/b3;

    invoke-virtual {v1}, Lq/e;->c()V

    iget-object v1, p0, Lq/J;->p:Lq/b3;

    iput-object v1, v0, Lq/Q;->n:Lq/b3;

    :cond_e9
    iget v1, v0, Lq/Q;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/Q;->d:I

    :cond_ee
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final Q()V
    .registers 3

    iget v0, p0, Lq/J;->e:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/J;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/J;->k:Ljava/util/List;

    iget v0, p0, Lq/J;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/J;->e:I

    :cond_15
    return-void
.end method

.method public final R(Lq/c;)Lq/J;
    .registers 3

    instance-of v0, p1, Lq/Q;

    if-eqz v0, :cond_a

    check-cast p1, Lq/Q;

    invoke-virtual {p0, p1}, Lq/J;->T(Lq/Q;)V

    return-object p0

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    return-object p0
.end method

.method public final S(Lq/E;Lq/d2;)Lq/J;
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_172

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_176

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :sswitch_18
    move v0, v2

    goto :goto_4

    :sswitch_1a
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iget-object v2, p0, Lq/J;->p:Lq/b3;

    iget-boolean v2, v2, Lq/e;->a:Z

    if-nez v2, :cond_2d

    new-instance v2, Lq/b3;

    iget-object v3, p0, Lq/J;->p:Lq/b3;

    invoke-direct {v2, v3}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v2, p0, Lq/J;->p:Lq/b3;

    :cond_2d
    iget v2, p0, Lq/J;->e:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lq/J;->e:I

    iget-object v2, p0, Lq/J;->p:Lq/b3;

    invoke-virtual {v2, v1}, Lq/b3;->d(Lq/B;)V

    goto :goto_4

    :catchall_39
    move-exception p1

    goto/16 :goto_16e

    :catch_3c
    move-exception p1

    goto/16 :goto_169

    :sswitch_3f
    sget-object v1, Lq/P;->i:Lq/N;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/P;

    iget v2, p0, Lq/J;->e:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_5c

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/J;->o:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/J;->o:Ljava/util/List;

    iget v2, p0, Lq/J;->e:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lq/J;->e:I

    :cond_5c
    iget-object v2, p0, Lq/J;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_62
    sget-object v1, Lq/j1;->i:Lq/h1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/j1;

    iget v2, p0, Lq/J;->e:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_7f

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/J;->l:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/J;->l:Ljava/util/List;

    iget v2, p0, Lq/J;->e:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lq/J;->e:I

    :cond_7f
    iget-object v2, p0, Lq/J;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_86
    iget-object v1, p0, Lq/J;->n:Lq/q4;

    if-nez v1, :cond_a9

    new-instance v2, Lq/q4;

    if-nez v1, :cond_95

    iget-object v1, p0, Lq/J;->m:Lq/Z0;

    if-nez v1, :cond_9b

    sget-object v1, Lq/Z0;->n:Lq/Z0;

    goto :goto_9b

    :cond_95
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/Z0;

    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/J;->n:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/J;->m:Lq/Z0;

    :cond_a9
    iget-object v1, p0, Lq/J;->n:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/J;->e:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lq/J;->e:I

    goto/16 :goto_4

    :sswitch_ba
    sget-object v1, Lq/C0;->r:Lq/y0;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/C0;

    iget v2, p0, Lq/J;->e:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_d7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/J;->h:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/J;->h:Ljava/util/List;

    iget v2, p0, Lq/J;->e:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lq/J;->e:I

    :cond_d7
    iget-object v2, p0, Lq/J;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_de
    sget-object v1, Lq/M;->j:Lq/K;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/M;

    invoke-virtual {p0}, Lq/J;->Q()V

    iget-object v2, p0, Lq/J;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_f0
    sget-object v1, Lq/Y;->l:Lq/T;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/Y;

    iget v2, p0, Lq/J;->e:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_10d

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/J;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/J;->j:Ljava/util/List;

    iget v2, p0, Lq/J;->e:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lq/J;->e:I

    :cond_10d
    iget-object v2, p0, Lq/J;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_114
    sget-object v1, Lq/Q;->q:Lq/I;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/Q;

    iget v2, p0, Lq/J;->e:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_131

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/J;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/J;->i:Ljava/util/List;

    iget v2, p0, Lq/J;->e:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lq/J;->e:I

    :cond_131
    iget-object v2, p0, Lq/J;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_138
    sget-object v1, Lq/C0;->r:Lq/y0;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/C0;

    iget v2, p0, Lq/J;->e:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_155

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/J;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/J;->g:Ljava/util/List;

    iget v2, p0, Lq/J;->e:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lq/J;->e:I

    :cond_155
    iget-object v2, p0, Lq/J;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_15c
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/J;->f:Ljava/io/Serializable;

    iget v1, p0, Lq/J;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/J;->e:I
    :try_end_167
    .catch Lq/U2; {:try_start_6 .. :try_end_167} :catch_3c
    .catchall {:try_start_6 .. :try_end_167} :catchall_39

    goto/16 :goto_4

    :goto_169
    :try_start_169
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_16e
    .catchall {:try_start_169 .. :try_end_16e} :catchall_39

    :goto_16e
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_172
    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0

    :sswitch_data_176
    .sparse-switch
        0x0 -> :sswitch_18
        0xa -> :sswitch_15c
        0x12 -> :sswitch_138
        0x1a -> :sswitch_114
        0x22 -> :sswitch_f0
        0x2a -> :sswitch_de
        0x32 -> :sswitch_ba
        0x3a -> :sswitch_86
        0x42 -> :sswitch_62
        0x4a -> :sswitch_3f
        0x52 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final T(Lq/Q;)V
    .registers 8

    sget-object v0, Lq/Q;->p:Lq/Q;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/Q;->E()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/Q;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lq/J;->f:Ljava/io/Serializable;

    iget v0, p0, Lq/J;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/J;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    const/4 v0, 0x0

    iget-object v1, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lq/J;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p1, Lq/Q;->f:Ljava/util/List;

    iput-object v1, p0, Lq/J;->g:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lq/J;->e:I

    goto :goto_50

    :cond_34
    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_49

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/J;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/J;->g:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/J;->e:I

    :cond_49
    iget-object v1, p0, Lq/J;->g:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_50
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_53
    iget-object v1, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, Lq/J;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p1, Lq/Q;->g:Ljava/util/List;

    iput-object v1, p0, Lq/J;->h:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lq/J;->e:I

    goto :goto_8a

    :cond_6e
    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_83

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/J;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/J;->h:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/J;->e:I

    :cond_83
    iget-object v1, p0, Lq/J;->h:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_8a
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_8d
    iget-object v1, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c7

    iget-object v1, p0, Lq/J;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p1, Lq/Q;->h:Ljava/util/List;

    iput-object v1, p0, Lq/J;->i:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lq/J;->e:I

    goto :goto_c4

    :cond_a8
    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_bd

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/J;->i:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/J;->i:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/J;->e:I

    :cond_bd
    iget-object v1, p0, Lq/J;->i:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_c4
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_c7
    iget-object v1, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_101

    iget-object v1, p0, Lq/J;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v1, p1, Lq/Q;->i:Ljava/util/List;

    iput-object v1, p0, Lq/J;->j:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lq/J;->e:I

    goto :goto_fe

    :cond_e2
    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_f7

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/J;->j:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/J;->j:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lq/J;->e:I

    :cond_f7
    iget-object v1, p0, Lq/J;->j:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_fe
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_101
    iget-object v1, p1, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_129

    iget-object v1, p0, Lq/J;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11c

    iget-object v1, p1, Lq/Q;->j:Ljava/util/List;

    iput-object v1, p0, Lq/J;->k:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lq/J;->e:I

    goto :goto_126

    :cond_11c
    invoke-virtual {p0}, Lq/J;->Q()V

    iget-object v1, p0, Lq/J;->k:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_126
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_129
    iget-object v1, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_163

    iget-object v1, p0, Lq/J;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_144

    iget-object v1, p1, Lq/Q;->k:Ljava/util/List;

    iput-object v1, p0, Lq/J;->l:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lq/J;->e:I

    goto :goto_160

    :cond_144
    iget v1, p0, Lq/J;->e:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_159

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/J;->l:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/J;->l:Ljava/util/List;

    iget v1, p0, Lq/J;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lq/J;->e:I

    :cond_159
    iget-object v1, p0, Lq/J;->l:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_160
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_163
    invoke-virtual {p1}, Lq/Q;->F()Z

    move-result v1

    if-eqz v1, :cond_1c8

    invoke-virtual {p1}, Lq/Q;->D()Lq/Z0;

    move-result-object v1

    iget-object v2, p0, Lq/J;->n:Lq/q4;

    if-nez v2, :cond_1b8

    iget v2, p0, Lq/J;->e:I

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1b5

    iget-object v3, p0, Lq/J;->m:Lq/Z0;

    if-eqz v3, :cond_1b5

    sget-object v4, Lq/Z0;->n:Lq/Z0;

    if-eq v3, v4, :cond_1b5

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lq/J;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v2, p0, Lq/J;->n:Lq/q4;

    if-nez v2, :cond_1a9

    new-instance v3, Lq/q4;

    if-nez v2, :cond_195

    iget-object v2, p0, Lq/J;->m:Lq/Z0;

    if-nez v2, :cond_193

    goto :goto_19c

    :cond_193
    move-object v4, v2

    goto :goto_19c

    :cond_195
    invoke-virtual {v2}, Lq/q4;->c()Lq/c;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq/Z0;

    :goto_19c
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v2

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v4, v2, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/J;->n:Lq/q4;

    iput-object v0, p0, Lq/J;->m:Lq/Z0;

    :cond_1a9
    iget-object v0, p0, Lq/J;->n:Lq/q4;

    invoke-virtual {v0}, Lq/q4;->b()Lq/a;

    move-result-object v0

    check-cast v0, Lq/Y0;

    invoke-virtual {v0, v1}, Lq/Y0;->V(Lq/Z0;)V

    goto :goto_1bb

    :cond_1b5
    iput-object v1, p0, Lq/J;->m:Lq/Z0;

    goto :goto_1bb

    :cond_1b8
    invoke-virtual {v2, v1}, Lq/q4;->d(Lq/c;)V

    :goto_1bb
    iget-object v0, p0, Lq/J;->m:Lq/Z0;

    if-eqz v0, :cond_1c8

    iget v0, p0, Lq/J;->e:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lq/J;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_1c8
    iget-object v0, p1, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_202

    iget-object v0, p0, Lq/J;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e3

    iget-object v0, p1, Lq/Q;->m:Ljava/util/List;

    iput-object v0, p0, Lq/J;->o:Ljava/util/List;

    iget v0, p0, Lq/J;->e:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lq/J;->e:I

    goto :goto_1ff

    :cond_1e3
    iget v0, p0, Lq/J;->e:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1f8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/J;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/J;->o:Ljava/util/List;

    iget v0, p0, Lq/J;->e:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lq/J;->e:I

    :cond_1f8
    iget-object v0, p0, Lq/J;->o:Ljava/util/List;

    iget-object v1, p1, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1ff
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_202
    iget-object v0, p1, Lq/Q;->n:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23c

    iget-object v0, p0, Lq/J;->p:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21d

    iget-object v0, p1, Lq/Q;->n:Lq/b3;

    iput-object v0, p0, Lq/J;->p:Lq/b3;

    iget v0, p0, Lq/J;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lq/J;->e:I

    goto :goto_239

    :cond_21d
    iget-object v0, p0, Lq/J;->p:Lq/b3;

    iget-boolean v0, v0, Lq/e;->a:Z

    if-nez v0, :cond_22c

    new-instance v0, Lq/b3;

    iget-object v1, p0, Lq/J;->p:Lq/b3;

    invoke-direct {v0, v1}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v0, p0, Lq/J;->p:Lq/b3;

    :cond_22c
    iget v0, p0, Lq/J;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lq/J;->e:I

    iget-object v0, p0, Lq/J;->p:Lq/b3;

    iget-object v1, p1, Lq/Q;->n:Lq/b3;

    invoke-virtual {v0, v1}, Lq/b3;->addAll(Ljava/util/Collection;)Z

    :goto_239
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_23c
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/J;->P()Lq/Q;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/J;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/J;->S(Lq/E;Lq/d2;)Lq/J;

    return-object p0
.end method

.method public final bridge synthetic f()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/J;->O()Lq/Q;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/J;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lq/J;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/C0;

    invoke-virtual {v2}, Lq/C0;->h()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    move v1, v0

    :goto_1d
    iget-object v2, p0, Lq/J;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    iget-object v2, p0, Lq/J;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/C0;

    invoke-virtual {v2}, Lq/C0;->h()Z

    move-result v2

    if-nez v2, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_37
    move v1, v0

    :goto_38
    iget-object v2, p0, Lq/J;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lq/J;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q;

    invoke-virtual {v2}, Lq/Q;->h()Z

    move-result v2

    if-nez v2, :cond_4f

    return v0

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_52
    move v1, v0

    :goto_53
    iget-object v2, p0, Lq/J;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d

    iget-object v2, p0, Lq/J;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Y;

    invoke-virtual {v2}, Lq/Y;->h()Z

    move-result v2

    if-nez v2, :cond_6a

    return v0

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_6d
    move v1, v0

    :goto_6e
    iget-object v2, p0, Lq/J;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_88

    iget-object v2, p0, Lq/J;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/M;

    invoke-virtual {v2}, Lq/M;->h()Z

    move-result v2

    if-nez v2, :cond_85

    return v0

    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_88
    move v1, v0

    :goto_89
    iget-object v2, p0, Lq/J;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    iget-object v2, p0, Lq/J;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/j1;

    invoke-virtual {v2}, Lq/j1;->h()Z

    move-result v2

    if-nez v2, :cond_a0

    return v0

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    :cond_a3
    iget v1, p0, Lq/J;->e:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lq/J;->n:Lq/q4;

    if-nez v1, :cond_b4

    iget-object v1, p0, Lq/J;->m:Lq/Z0;

    if-nez v1, :cond_ba

    sget-object v1, Lq/Z0;->n:Lq/Z0;

    goto :goto_ba

    :cond_b4
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/Z0;

    :cond_ba
    :goto_ba
    invoke-virtual {v1}, Lq/Z0;->h()Z

    move-result v1

    if-nez v1, :cond_c1

    return v0

    :cond_c1
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/Q;->p:Lq/Q;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->e:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic o()Lq/c;
    .registers 2

    invoke-virtual {p0}, Lq/J;->O()Lq/Q;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lq/c;
    .registers 2

    invoke-virtual {p0}, Lq/J;->P()Lq/Q;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u(Lq/c;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/J;->R(Lq/c;)Lq/J;

    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/J;->S(Lq/E;Lq/d2;)Lq/J;

    return-object p0
.end method

.method public final bridge synthetic w(Lq/c;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/J;->R(Lq/c;)Lq/J;

    return-object p0
.end method

.method public final y(Lq/W4;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    return-object p0
.end method
