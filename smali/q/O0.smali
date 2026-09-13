.class public final Lq/O0;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/Serializable;

.field public g:Ljava/io/Serializable;

.field public h:Lq/b3;

.field public i:Lq/Q2;

.field public j:Lq/Q2;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Lq/W0;

.field public p:Lq/q4;

.field public q:Lq/y1;

.field public r:Lq/q4;

.field public s:Ljava/io/Serializable;

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/O0;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/O0;->g:Ljava/io/Serializable;

    sget-object v1, Lq/b3;->c:Lq/b3;

    iput-object v1, p0, Lq/O0;->h:Lq/b3;

    sget-object v1, Lq/O2;->d:Lq/O2;

    iput-object v1, p0, Lq/O0;->i:Lq/Q2;

    iput-object v1, p0, Lq/O0;->j:Lq/Q2;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->n:Ljava/util/List;

    iput-object v0, p0, Lq/O0;->s:Ljava/io/Serializable;

    const/4 v0, 0x0

    iput v0, p0, Lq/O0;->t:I

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

    sget-object v0, Lq/F1;->d:Lq/J2;

    const-class v1, Lq/P0;

    const-class v2, Lq/O0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/P0;
    .registers 5

    new-instance v0, Lq/P0;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/P0;->e:Ljava/io/Serializable;

    iput-object v1, v0, Lq/P0;->f:Ljava/io/Serializable;

    sget-object v2, Lq/b3;->c:Lq/b3;

    iput-object v2, v0, Lq/P0;->g:Lq/b3;

    sget-object v2, Lq/O2;->d:Lq/O2;

    iput-object v2, v0, Lq/P0;->h:Lq/Q2;

    iput-object v2, v0, Lq/P0;->i:Lq/Q2;

    iput-object v1, v0, Lq/P0;->p:Ljava/io/Serializable;

    const/4 v1, 0x0

    iput v1, v0, Lq/P0;->q:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/P0;->r:B

    iget v2, p0, Lq/O0;->e:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_31

    iget-object v2, p0, Lq/O0;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/O0;->k:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lq/O0;->e:I

    :cond_31
    iget-object v2, p0, Lq/O0;->k:Ljava/util/List;

    iput-object v2, v0, Lq/P0;->j:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_49

    iget-object v2, p0, Lq/O0;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/O0;->l:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lq/O0;->e:I

    :cond_49
    iget-object v2, p0, Lq/O0;->l:Ljava/util/List;

    iput-object v2, v0, Lq/P0;->k:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_61

    iget-object v2, p0, Lq/O0;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/O0;->m:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lq/O0;->e:I

    :cond_61
    iget-object v2, p0, Lq/O0;->m:Ljava/util/List;

    iput-object v2, v0, Lq/P0;->l:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_79

    iget-object v2, p0, Lq/O0;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/O0;->n:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lq/O0;->e:I

    :cond_79
    iget-object v2, p0, Lq/O0;->n:Ljava/util/List;

    iput-object v2, v0, Lq/P0;->m:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    if-eqz v2, :cond_102

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_8a

    iget-object v1, p0, Lq/O0;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/P0;->e:Ljava/io/Serializable;

    const/4 v1, 0x1

    :cond_8a
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_94

    iget-object v3, p0, Lq/O0;->g:Ljava/io/Serializable;

    iput-object v3, v0, Lq/P0;->f:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x2

    :cond_94
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lq/O0;->h:Lq/b3;

    invoke-virtual {v3}, Lq/e;->c()V

    iget-object v3, p0, Lq/O0;->h:Lq/b3;

    iput-object v3, v0, Lq/P0;->g:Lq/b3;

    :cond_a1
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_b0

    iget-object v3, p0, Lq/O0;->i:Lq/Q2;

    check-cast v3, Lq/e;

    invoke-virtual {v3}, Lq/e;->c()V

    iget-object v3, p0, Lq/O0;->i:Lq/Q2;

    iput-object v3, v0, Lq/P0;->h:Lq/Q2;

    :cond_b0
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lq/O0;->j:Lq/Q2;

    check-cast v3, Lq/e;

    invoke-virtual {v3}, Lq/e;->c()V

    iget-object v3, p0, Lq/O0;->j:Lq/Q2;

    iput-object v3, v0, Lq/P0;->i:Lq/Q2;

    :cond_bf
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lq/O0;->p:Lq/q4;

    if-nez v3, :cond_ca

    iget-object v3, p0, Lq/O0;->o:Lq/W0;

    goto :goto_d0

    :cond_ca
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/W0;

    :goto_d0
    iput-object v3, v0, Lq/P0;->n:Lq/W0;

    or-int/lit8 v1, v1, 0x4

    :cond_d4
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_e9

    iget-object v3, p0, Lq/O0;->r:Lq/q4;

    if-nez v3, :cond_df

    iget-object v3, p0, Lq/O0;->q:Lq/y1;

    goto :goto_e5

    :cond_df
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/y1;

    :goto_e5
    iput-object v3, v0, Lq/P0;->o:Lq/y1;

    or-int/lit8 v1, v1, 0x8

    :cond_e9
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lq/O0;->s:Ljava/io/Serializable;

    iput-object v3, v0, Lq/P0;->p:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x10

    :cond_f3
    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_fd

    iget v2, p0, Lq/O0;->t:I

    iput v2, v0, Lq/P0;->q:I

    or-int/lit8 v1, v1, 0x20

    :cond_fd
    iget v2, v0, Lq/P0;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/P0;->d:I

    :cond_102
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P()V
    .registers 3

    iget v0, p0, Lq/O0;->e:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/O0;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/O0;->k:Ljava/util/List;

    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/O0;->e:I

    :cond_15
    return-void
.end method

.method public final Q()V
    .registers 3

    iget-object v0, p0, Lq/O0;->i:Lq/Q2;

    move-object v1, v0

    check-cast v1, Lq/e;

    iget-boolean v1, v1, Lq/e;->a:Z

    if-nez v1, :cond_11

    invoke-static {v0}, Lq/K2;->z(Lq/R2;)Lq/R2;

    move-result-object v0

    check-cast v0, Lq/Q2;

    iput-object v0, p0, Lq/O0;->i:Lq/Q2;

    :cond_11
    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/O0;->e:I

    return-void
.end method

.method public final R()V
    .registers 3

    iget-object v0, p0, Lq/O0;->j:Lq/Q2;

    move-object v1, v0

    check-cast v1, Lq/e;

    iget-boolean v1, v1, Lq/e;->a:Z

    if-nez v1, :cond_11

    invoke-static {v0}, Lq/K2;->z(Lq/R2;)Lq/R2;

    move-result-object v0

    check-cast v0, Lq/Q2;

    iput-object v0, p0, Lq/O0;->j:Lq/Q2;

    :cond_11
    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/O0;->e:I

    return-void
.end method

.method public final S()Lq/q4;
    .registers 5

    iget-object v0, p0, Lq/O0;->r:Lq/q4;

    if-nez v0, :cond_23

    new-instance v1, Lq/q4;

    if-nez v0, :cond_f

    iget-object v0, p0, Lq/O0;->q:Lq/y1;

    if-nez v0, :cond_15

    sget-object v0, Lq/y1;->f:Lq/y1;

    goto :goto_15

    :cond_f
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/y1;

    :cond_15
    :goto_15
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v2

    iget-boolean v3, p0, Lq/t2;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v1, p0, Lq/O0;->r:Lq/q4;

    const/4 v0, 0x0

    iput-object v0, p0, Lq/O0;->q:Lq/y1;

    :cond_23
    iget-object v0, p0, Lq/O0;->r:Lq/q4;

    return-object v0
.end method

.method public final T(Lq/P0;)V
    .registers 8

    sget-object v0, Lq/P0;->s:Lq/P0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/P0;->I()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/P0;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lq/O0;->f:Ljava/io/Serializable;

    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/P0;->K()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lq/P0;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/O0;->g:Ljava/io/Serializable;

    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    iget-object v0, p1, Lq/P0;->g:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lq/O0;->h:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p1, Lq/P0;->g:Lq/b3;

    iput-object v0, p0, Lq/O0;->h:Lq/b3;

    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/O0;->e:I

    goto :goto_62

    :cond_46
    iget-object v0, p0, Lq/O0;->h:Lq/b3;

    iget-boolean v0, v0, Lq/e;->a:Z

    if-nez v0, :cond_55

    new-instance v0, Lq/b3;

    iget-object v1, p0, Lq/O0;->h:Lq/b3;

    invoke-direct {v0, v1}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v0, p0, Lq/O0;->h:Lq/b3;

    :cond_55
    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/O0;->e:I

    iget-object v0, p0, Lq/O0;->h:Lq/b3;

    iget-object v1, p1, Lq/P0;->g:Lq/b3;

    invoke-virtual {v0, v1}, Lq/b3;->addAll(Ljava/util/Collection;)Z

    :goto_62
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_65
    iget-object v0, p1, Lq/P0;->h:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lq/O0;->i:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p1, Lq/P0;->h:Lq/Q2;

    iput-object v0, p0, Lq/O0;->i:Lq/Q2;

    check-cast v0, Lq/e;

    invoke-virtual {v0}, Lq/e;->c()V

    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/O0;->e:I

    goto :goto_91

    :cond_85
    invoke-virtual {p0}, Lq/O0;->Q()V

    iget-object v0, p0, Lq/O0;->i:Lq/Q2;

    iget-object v1, p1, Lq/P0;->h:Lq/Q2;

    check-cast v0, Lq/O2;

    invoke-virtual {v0, v1}, Lq/O2;->addAll(Ljava/util/Collection;)Z

    :goto_91
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_94
    iget-object v0, p1, Lq/P0;->i:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lq/O0;->j:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p1, Lq/P0;->i:Lq/Q2;

    iput-object v0, p0, Lq/O0;->j:Lq/Q2;

    check-cast v0, Lq/e;

    invoke-virtual {v0}, Lq/e;->c()V

    iget v0, p0, Lq/O0;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/O0;->e:I

    goto :goto_c0

    :cond_b4
    invoke-virtual {p0}, Lq/O0;->R()V

    iget-object v0, p0, Lq/O0;->j:Lq/Q2;

    iget-object v1, p1, Lq/P0;->i:Lq/Q2;

    check-cast v0, Lq/O2;

    invoke-virtual {v0, v1}, Lq/O2;->addAll(Ljava/util/Collection;)Z

    :goto_c0
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_c3
    const/4 v0, 0x0

    iget-object v1, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ec

    iget-object v1, p0, Lq/O0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_df

    iget-object v1, p1, Lq/P0;->j:Ljava/util/List;

    iput-object v1, p0, Lq/O0;->k:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lq/O0;->e:I

    goto :goto_e9

    :cond_df
    invoke-virtual {p0}, Lq/O0;->P()V

    iget-object v1, p0, Lq/O0;->k:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_e9
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_ec
    iget-object v1, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_126

    iget-object v1, p0, Lq/O0;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_107

    iget-object v1, p1, Lq/P0;->k:Ljava/util/List;

    iput-object v1, p0, Lq/O0;->l:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lq/O0;->e:I

    goto :goto_123

    :cond_107
    iget v1, p0, Lq/O0;->e:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_11c

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/O0;->l:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/O0;->l:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lq/O0;->e:I

    :cond_11c
    iget-object v1, p0, Lq/O0;->l:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_123
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_126
    iget-object v1, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_160

    iget-object v1, p0, Lq/O0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_141

    iget-object v1, p1, Lq/P0;->l:Ljava/util/List;

    iput-object v1, p0, Lq/O0;->m:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lq/O0;->e:I

    goto :goto_15d

    :cond_141
    iget v1, p0, Lq/O0;->e:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_156

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/O0;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/O0;->m:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lq/O0;->e:I

    :cond_156
    iget-object v1, p0, Lq/O0;->m:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_15d
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_160
    iget-object v1, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19a

    iget-object v1, p0, Lq/O0;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17b

    iget-object v1, p1, Lq/P0;->m:Ljava/util/List;

    iput-object v1, p0, Lq/O0;->n:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lq/O0;->e:I

    goto :goto_197

    :cond_17b
    iget v1, p0, Lq/O0;->e:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_190

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/O0;->n:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/O0;->n:Ljava/util/List;

    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lq/O0;->e:I

    :cond_190
    iget-object v1, p0, Lq/O0;->n:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_197
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_19a
    invoke-virtual {p1}, Lq/P0;->J()Z

    move-result v1

    if-eqz v1, :cond_1ff

    invoke-virtual {p1}, Lq/P0;->D()Lq/W0;

    move-result-object v1

    iget-object v2, p0, Lq/O0;->p:Lq/q4;

    if-nez v2, :cond_1ef

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_1ec

    iget-object v3, p0, Lq/O0;->o:Lq/W0;

    if-eqz v3, :cond_1ec

    sget-object v4, Lq/W0;->C:Lq/W0;

    if-eq v3, v4, :cond_1ec

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v2, p0, Lq/O0;->p:Lq/q4;

    if-nez v2, :cond_1e0

    new-instance v3, Lq/q4;

    if-nez v2, :cond_1cc

    iget-object v2, p0, Lq/O0;->o:Lq/W0;

    if-nez v2, :cond_1ca

    goto :goto_1d3

    :cond_1ca
    move-object v4, v2

    goto :goto_1d3

    :cond_1cc
    invoke-virtual {v2}, Lq/q4;->c()Lq/c;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq/W0;

    :goto_1d3
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v2

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v4, v2, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/O0;->p:Lq/q4;

    iput-object v0, p0, Lq/O0;->o:Lq/W0;

    :cond_1e0
    iget-object v0, p0, Lq/O0;->p:Lq/q4;

    invoke-virtual {v0}, Lq/q4;->b()Lq/a;

    move-result-object v0

    check-cast v0, Lq/U0;

    invoke-virtual {v0, v1}, Lq/U0;->V(Lq/W0;)V

    goto :goto_1f2

    :cond_1ec
    iput-object v1, p0, Lq/O0;->o:Lq/W0;

    goto :goto_1f2

    :cond_1ef
    invoke-virtual {v2, v1}, Lq/q4;->d(Lq/c;)V

    :goto_1f2
    iget-object v0, p0, Lq/O0;->o:Lq/W0;

    if-eqz v0, :cond_1ff

    iget v0, p0, Lq/O0;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_1ff
    invoke-virtual {p1}, Lq/P0;->L()Z

    move-result v0

    if-eqz v0, :cond_243

    invoke-virtual {p1}, Lq/P0;->F()Lq/y1;

    move-result-object v0

    iget-object v1, p0, Lq/O0;->r:Lq/q4;

    if-nez v1, :cond_233

    iget v1, p0, Lq/O0;->e:I

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_230

    iget-object v2, p0, Lq/O0;->q:Lq/y1;

    if-eqz v2, :cond_230

    sget-object v3, Lq/y1;->f:Lq/y1;

    if-eq v2, v3, :cond_230

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    invoke-virtual {p0}, Lq/O0;->S()Lq/q4;

    move-result-object v1

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/u1;

    invoke-virtual {v1, v0}, Lq/u1;->P(Lq/y1;)V

    goto :goto_236

    :cond_230
    iput-object v0, p0, Lq/O0;->q:Lq/y1;

    goto :goto_236

    :cond_233
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_236
    iget-object v0, p0, Lq/O0;->q:Lq/y1;

    if-eqz v0, :cond_243

    iget v0, p0, Lq/O0;->e:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_243
    invoke-virtual {p1}, Lq/P0;->M()Z

    move-result v0

    if-eqz v0, :cond_256

    iget-object v0, p1, Lq/P0;->p:Ljava/io/Serializable;

    iput-object v0, p0, Lq/O0;->s:Ljava/io/Serializable;

    iget v0, p0, Lq/O0;->e:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lq/O0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_256
    invoke-virtual {p1}, Lq/P0;->H()Z

    move-result v0

    if-eqz v0, :cond_273

    iget v0, p1, Lq/P0;->q:I

    invoke-static {v0}, Lq/S;->b(I)Lq/S;

    move-result-object v0

    if-nez v0, :cond_266

    sget-object v0, Lq/S;->b:Lq/S;

    :cond_266
    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lq/O0;->e:I

    iget v0, v0, Lq/S;->a:I

    iput v0, p0, Lq/O0;->t:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_273
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final U(Lq/E;Lq/d2;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_1b1

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_1b6

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :sswitch_18
    move v0, v2

    goto :goto_4

    :sswitch_1a
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    invoke-static {v1}, Lq/S;->b(I)Lq/S;

    move-result-object v2

    if-nez v2, :cond_30

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto :goto_4

    :catchall_2a
    move-exception p1

    goto/16 :goto_1ad

    :catch_2d
    move-exception p1

    goto/16 :goto_1a8

    :cond_30
    iput v1, p0, Lq/O0;->t:I

    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lq/O0;->e:I

    goto :goto_4

    :sswitch_39
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->s:Ljava/io/Serializable;

    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lq/O0;->e:I

    goto :goto_4

    :sswitch_46
    invoke-virtual {p1}, Lq/E;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lq/E;->f(I)I

    move-result v1

    invoke-virtual {p0}, Lq/O0;->R()V

    :goto_51
    invoke-virtual {p1}, Lq/E;->c()I

    move-result v2

    if-lez v2, :cond_63

    iget-object v2, p0, Lq/O0;->j:Lq/Q2;

    invoke-virtual {p1}, Lq/E;->o()I

    move-result v3

    check-cast v2, Lq/O2;

    invoke-virtual {v2, v3}, Lq/O2;->d(I)V

    goto :goto_51

    :cond_63
    invoke-virtual {p1, v1}, Lq/E;->e(I)V

    goto :goto_4

    :sswitch_67
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v1

    invoke-virtual {p0}, Lq/O0;->R()V

    iget-object v2, p0, Lq/O0;->j:Lq/Q2;

    check-cast v2, Lq/O2;

    invoke-virtual {v2, v1}, Lq/O2;->d(I)V

    goto :goto_4

    :sswitch_76
    invoke-virtual {p1}, Lq/E;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lq/E;->f(I)I

    move-result v1

    invoke-virtual {p0}, Lq/O0;->Q()V

    :goto_81
    invoke-virtual {p1}, Lq/E;->c()I

    move-result v2

    if-lez v2, :cond_93

    iget-object v2, p0, Lq/O0;->i:Lq/Q2;

    invoke-virtual {p1}, Lq/E;->o()I

    move-result v3

    check-cast v2, Lq/O2;

    invoke-virtual {v2, v3}, Lq/O2;->d(I)V

    goto :goto_81

    :cond_93
    invoke-virtual {p1, v1}, Lq/E;->e(I)V

    goto/16 :goto_4

    :sswitch_98
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v1

    invoke-virtual {p0}, Lq/O0;->Q()V

    iget-object v2, p0, Lq/O0;->i:Lq/Q2;

    check-cast v2, Lq/O2;

    invoke-virtual {v2, v1}, Lq/O2;->d(I)V

    goto/16 :goto_4

    :sswitch_a8
    invoke-virtual {p0}, Lq/O0;->S()Lq/q4;

    move-result-object v1

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lq/O0;->e:I

    goto/16 :goto_4

    :sswitch_bb
    iget-object v1, p0, Lq/O0;->p:Lq/q4;

    if-nez v1, :cond_de

    new-instance v2, Lq/q4;

    if-nez v1, :cond_ca

    iget-object v1, p0, Lq/O0;->o:Lq/W0;

    if-nez v1, :cond_d0

    sget-object v1, Lq/W0;->C:Lq/W0;

    goto :goto_d0

    :cond_ca
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/W0;

    :cond_d0
    :goto_d0
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/O0;->p:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/O0;->o:Lq/W0;

    :cond_de
    iget-object v1, p0, Lq/O0;->p:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/O0;->e:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lq/O0;->e:I

    goto/16 :goto_4

    :sswitch_ef
    sget-object v1, Lq/C0;->r:Lq/y0;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/C0;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_10c

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/O0;->n:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/O0;->n:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lq/O0;->e:I

    :cond_10c
    iget-object v2, p0, Lq/O0;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_113
    sget-object v1, Lq/p1;->j:Lq/n1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/p1;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_130

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/O0;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/O0;->m:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lq/O0;->e:I

    :cond_130
    iget-object v2, p0, Lq/O0;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_137
    sget-object v1, Lq/Y;->l:Lq/T;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/Y;

    iget v2, p0, Lq/O0;->e:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_154

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/O0;->l:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/O0;->l:Ljava/util/List;

    iget v2, p0, Lq/O0;->e:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lq/O0;->e:I

    :cond_154
    iget-object v2, p0, Lq/O0;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_15b
    sget-object v1, Lq/Q;->q:Lq/I;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/Q;

    invoke-virtual {p0}, Lq/O0;->P()V

    iget-object v2, p0, Lq/O0;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_16d
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iget-object v2, p0, Lq/O0;->h:Lq/b3;

    iget-boolean v2, v2, Lq/e;->a:Z

    if-nez v2, :cond_180

    new-instance v2, Lq/b3;

    iget-object v3, p0, Lq/O0;->h:Lq/b3;

    invoke-direct {v2, v3}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v2, p0, Lq/O0;->h:Lq/b3;

    :cond_180
    iget v2, p0, Lq/O0;->e:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lq/O0;->e:I

    iget-object v2, p0, Lq/O0;->h:Lq/b3;

    invoke-virtual {v2, v1}, Lq/b3;->d(Lq/B;)V

    goto/16 :goto_4

    :sswitch_18d
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->g:Ljava/io/Serializable;

    iget v1, p0, Lq/O0;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/O0;->e:I

    goto/16 :goto_4

    :sswitch_19b
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/O0;->f:Ljava/io/Serializable;

    iget v1, p0, Lq/O0;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/O0;->e:I
    :try_end_1a6
    .catch Lq/U2; {:try_start_6 .. :try_end_1a6} :catch_2d
    .catchall {:try_start_6 .. :try_end_1a6} :catchall_2a

    goto/16 :goto_4

    :goto_1a8
    :try_start_1a8
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1ad
    .catchall {:try_start_1a8 .. :try_end_1ad} :catchall_2a

    :goto_1ad
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_1b1
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    nop

    :sswitch_data_1b6
    .sparse-switch
        0x0 -> :sswitch_18
        0xa -> :sswitch_19b
        0x12 -> :sswitch_18d
        0x1a -> :sswitch_16d
        0x22 -> :sswitch_15b
        0x2a -> :sswitch_137
        0x32 -> :sswitch_113
        0x3a -> :sswitch_ef
        0x42 -> :sswitch_bb
        0x4a -> :sswitch_a8
        0x50 -> :sswitch_98
        0x52 -> :sswitch_76
        0x58 -> :sswitch_67
        0x5a -> :sswitch_46
        0x62 -> :sswitch_39
        0x70 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/O0;->O()Lq/P0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/O0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/O0;->U(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/O0;->O()Lq/P0;

    move-result-object v0

    invoke-virtual {v0}, Lq/P0;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final h()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/O0;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lq/O0;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q;

    invoke-virtual {v2}, Lq/Q;->h()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    move v1, v0

    :goto_1d
    iget-object v2, p0, Lq/O0;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    iget-object v2, p0, Lq/O0;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Y;

    invoke-virtual {v2}, Lq/Y;->h()Z

    move-result v2

    if-nez v2, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_37
    move v1, v0

    :goto_38
    iget-object v2, p0, Lq/O0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lq/O0;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/p1;

    invoke-virtual {v2}, Lq/p1;->h()Z

    move-result v2

    if-nez v2, :cond_4f

    return v0

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_52
    move v1, v0

    :goto_53
    iget-object v2, p0, Lq/O0;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d

    iget-object v2, p0, Lq/O0;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/C0;

    invoke-virtual {v2}, Lq/C0;->h()Z

    move-result v2

    if-nez v2, :cond_6a

    return v0

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_6d
    iget v1, p0, Lq/O0;->e:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lq/O0;->p:Lq/q4;

    if-nez v1, :cond_7e

    iget-object v1, p0, Lq/O0;->o:Lq/W0;

    if-nez v1, :cond_84

    sget-object v1, Lq/W0;->C:Lq/W0;

    goto :goto_84

    :cond_7e
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/W0;

    :cond_84
    :goto_84
    invoke-virtual {v1}, Lq/W0;->h()Z

    move-result v1

    if-nez v1, :cond_8b

    return v0

    :cond_8b
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/P0;->s:Lq/P0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->c:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/O0;->O()Lq/P0;

    move-result-object v0

    invoke-virtual {v0}, Lq/P0;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic p()Lq/c;
    .registers 2

    invoke-virtual {p0}, Lq/O0;->O()Lq/P0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/P0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/P0;

    invoke-virtual {p0, p1}, Lq/O0;->T(Lq/P0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/O0;->U(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/P0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/P0;

    invoke-virtual {p0, p1}, Lq/O0;->T(Lq/P0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final y(Lq/W4;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    return-object p0
.end method
