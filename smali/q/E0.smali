.class public final Lq/E0;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Lq/x0;

.field public s:Lq/q4;

.field public t:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const/4 v0, 0x0

    iput v0, p0, Lq/E0;->g:I

    iput v0, p0, Lq/E0;->i:I

    iput v0, p0, Lq/E0;->o:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/E0;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/E0;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/E0;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final B(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->S(Lq/R1;Ljava/lang/Object;)V

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

    sget-object v0, Lq/F1;->H:Lq/J2;

    const-class v1, Lq/M0;

    const-class v2, Lq/E0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/M0;
    .registers 5

    new-instance v0, Lq/M0;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

    const/4 v1, 0x0

    iput v1, v0, Lq/M0;->f:I

    iput-boolean v1, v0, Lq/M0;->g:Z

    iput v1, v0, Lq/M0;->h:I

    iput-boolean v1, v0, Lq/M0;->i:Z

    iput-boolean v1, v0, Lq/M0;->j:Z

    iput-boolean v1, v0, Lq/M0;->k:Z

    iput-boolean v1, v0, Lq/M0;->l:Z

    iput-boolean v1, v0, Lq/M0;->m:Z

    iput v1, v0, Lq/M0;->n:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/M0;->s:B

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lq/E0;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/E0;->p:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lq/E0;->f:I

    :cond_2f
    iget-object v2, p0, Lq/E0;->p:Ljava/util/List;

    iput-object v2, v0, Lq/M0;->o:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_47

    iget-object v2, p0, Lq/E0;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/E0;->q:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lq/E0;->f:I

    :cond_47
    iget-object v2, p0, Lq/E0;->q:Ljava/util/List;

    iput-object v2, v0, Lq/M0;->p:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lq/E0;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/E0;->t:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lq/E0;->f:I

    :cond_5f
    iget-object v2, p0, Lq/E0;->t:Ljava/util/List;

    iput-object v2, v0, Lq/M0;->r:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    if-eqz v2, :cond_da

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_70

    iget v1, p0, Lq/E0;->g:I

    iput v1, v0, Lq/M0;->f:I

    const/4 v1, 0x1

    :cond_70
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_7a

    iget-boolean v3, p0, Lq/E0;->h:Z

    iput-boolean v3, v0, Lq/M0;->g:Z

    or-int/lit8 v1, v1, 0x2

    :cond_7a
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_84

    iget v3, p0, Lq/E0;->i:I

    iput v3, v0, Lq/M0;->h:I

    or-int/lit8 v1, v1, 0x4

    :cond_84
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_8e

    iget-boolean v3, p0, Lq/E0;->j:Z

    iput-boolean v3, v0, Lq/M0;->i:Z

    or-int/lit8 v1, v1, 0x8

    :cond_8e
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_98

    iget-boolean v3, p0, Lq/E0;->k:Z

    iput-boolean v3, v0, Lq/M0;->j:Z

    or-int/lit8 v1, v1, 0x10

    :cond_98
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_a2

    iget-boolean v3, p0, Lq/E0;->l:Z

    iput-boolean v3, v0, Lq/M0;->k:Z

    or-int/lit8 v1, v1, 0x20

    :cond_a2
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Lq/E0;->m:Z

    iput-boolean v3, v0, Lq/M0;->l:Z

    or-int/lit8 v1, v1, 0x40

    :cond_ac
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_b6

    iget-boolean v3, p0, Lq/E0;->n:Z

    iput-boolean v3, v0, Lq/M0;->m:Z

    or-int/lit16 v1, v1, 0x80

    :cond_b6
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_c0

    iget v3, p0, Lq/E0;->o:I

    iput v3, v0, Lq/M0;->n:I

    or-int/lit16 v1, v1, 0x100

    :cond_c0
    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lq/E0;->s:Lq/q4;

    if-nez v2, :cond_cb

    iget-object v2, p0, Lq/E0;->r:Lq/x0;

    goto :goto_d1

    :cond_cb
    invoke-virtual {v2}, Lq/q4;->a()Lq/c;

    move-result-object v2

    check-cast v2, Lq/x0;

    :goto_d1
    iput-object v2, v0, Lq/M0;->q:Lq/x0;

    or-int/lit16 v1, v1, 0x200

    :cond_d5
    iget v2, v0, Lq/M0;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/M0;->e:I

    :cond_da
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V()V
    .registers 3

    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/E0;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/E0;->p:Ljava/util/List;

    iget v0, p0, Lq/E0;->f:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lq/E0;->f:I

    :cond_15
    return-void
.end method

.method public final W(Lq/M0;)V
    .registers 8

    sget-object v0, Lq/M0;->t:Lq/M0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/M0;->E()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    iget v0, p1, Lq/M0;->f:I

    if-eqz v0, :cond_20

    if-eq v0, v2, :cond_1d

    if-eq v0, v1, :cond_1a

    sget-object v0, Lq/F0;->b:Lq/F0;

    move-object v0, v3

    goto :goto_22

    :cond_1a
    sget-object v0, Lq/F0;->d:Lq/F0;

    goto :goto_22

    :cond_1d
    sget-object v0, Lq/F0;->c:Lq/F0;

    goto :goto_22

    :cond_20
    sget-object v0, Lq/F0;->b:Lq/F0;

    :goto_22
    if-nez v0, :cond_26

    sget-object v0, Lq/F0;->b:Lq/F0;

    :cond_26
    iget v4, p0, Lq/E0;->f:I

    or-int/2addr v4, v2

    iput v4, p0, Lq/E0;->f:I

    iget v0, v0, Lq/F0;->a:I

    iput v0, p0, Lq/E0;->g:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_32
    invoke-virtual {p1}, Lq/M0;->K()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p1, Lq/M0;->g:Z

    iput-boolean v0, p0, Lq/E0;->h:Z

    iget v0, p0, Lq/E0;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_44
    invoke-virtual {p1}, Lq/M0;->I()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p1, Lq/M0;->h:I

    if-eqz v0, :cond_5c

    if-eq v0, v2, :cond_59

    if-eq v0, v1, :cond_56

    sget-object v0, Lq/J0;->b:Lq/J0;

    move-object v0, v3

    goto :goto_5e

    :cond_56
    sget-object v0, Lq/J0;->d:Lq/J0;

    goto :goto_5e

    :cond_59
    sget-object v0, Lq/J0;->c:Lq/J0;

    goto :goto_5e

    :cond_5c
    sget-object v0, Lq/J0;->b:Lq/J0;

    :goto_5e
    if-nez v0, :cond_62

    sget-object v0, Lq/J0;->b:Lq/J0;

    :cond_62
    iget v4, p0, Lq/E0;->f:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lq/E0;->f:I

    iget v0, v0, Lq/J0;->a:I

    iput v0, p0, Lq/E0;->i:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_6f
    invoke-virtual {p1}, Lq/M0;->J()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-boolean v0, p1, Lq/M0;->i:Z

    iput-boolean v0, p0, Lq/E0;->j:Z

    iget v0, p0, Lq/E0;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_82
    invoke-virtual {p1}, Lq/M0;->M()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-boolean v0, p1, Lq/M0;->j:Z

    iput-boolean v0, p0, Lq/E0;->k:Z

    iget v0, p0, Lq/E0;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_95
    invoke-virtual {p1}, Lq/M0;->G()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-boolean v0, p1, Lq/M0;->k:Z

    iput-boolean v0, p0, Lq/E0;->l:Z

    iget v0, p0, Lq/E0;->f:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_a8
    invoke-virtual {p1}, Lq/M0;->N()Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-boolean v0, p1, Lq/M0;->l:Z

    iput-boolean v0, p0, Lq/E0;->m:Z

    iget v0, p0, Lq/E0;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_bb
    invoke-virtual {p1}, Lq/M0;->F()Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-boolean v0, p1, Lq/M0;->m:Z

    iput-boolean v0, p0, Lq/E0;->n:Z

    iget v0, p0, Lq/E0;->f:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_ce
    invoke-virtual {p1}, Lq/M0;->L()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget v0, p1, Lq/M0;->n:I

    if-eqz v0, :cond_e6

    if-eq v0, v2, :cond_e3

    if-eq v0, v1, :cond_e0

    sget-object v0, Lq/K0;->b:Lq/K0;

    move-object v0, v3

    goto :goto_e8

    :cond_e0
    sget-object v0, Lq/K0;->d:Lq/K0;

    goto :goto_e8

    :cond_e3
    sget-object v0, Lq/K0;->c:Lq/K0;

    goto :goto_e8

    :cond_e6
    sget-object v0, Lq/K0;->b:Lq/K0;

    :goto_e8
    if-nez v0, :cond_ec

    sget-object v0, Lq/K0;->b:Lq/K0;

    :cond_ec
    iget v1, p0, Lq/E0;->f:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lq/E0;->f:I

    iget v0, v0, Lq/K0;->a:I

    iput v0, p0, Lq/E0;->o:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_f9
    iget-object v0, p1, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_121

    iget-object v0, p0, Lq/E0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p1, Lq/M0;->o:Ljava/util/List;

    iput-object v0, p0, Lq/E0;->p:Ljava/util/List;

    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lq/E0;->f:I

    goto :goto_11e

    :cond_114
    invoke-virtual {p0}, Lq/E0;->V()V

    iget-object v0, p0, Lq/E0;->p:Ljava/util/List;

    iget-object v1, p1, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_11e
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_121
    iget-object v0, p1, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15b

    iget-object v0, p0, Lq/E0;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-object v0, p1, Lq/M0;->p:Ljava/util/List;

    iput-object v0, p0, Lq/E0;->q:Ljava/util/List;

    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lq/E0;->f:I

    goto :goto_158

    :cond_13c
    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_151

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/E0;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/E0;->q:Ljava/util/List;

    iget v0, p0, Lq/E0;->f:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lq/E0;->f:I

    :cond_151
    iget-object v0, p0, Lq/E0;->q:Ljava/util/List;

    iget-object v1, p1, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_158
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_15b
    invoke-virtual {p1}, Lq/M0;->H()Z

    move-result v0

    if-eqz v0, :cond_1c0

    invoke-virtual {p1}, Lq/M0;->D()Lq/x0;

    move-result-object v0

    iget-object v1, p0, Lq/E0;->s:Lq/q4;

    if-nez v1, :cond_1b0

    iget v1, p0, Lq/E0;->f:I

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_1ad

    iget-object v2, p0, Lq/E0;->r:Lq/x0;

    if-eqz v2, :cond_1ad

    sget-object v4, Lq/x0;->m:Lq/x0;

    if-eq v2, v4, :cond_1ad

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/E0;->s:Lq/q4;

    if-nez v1, :cond_1a1

    new-instance v2, Lq/q4;

    if-nez v1, :cond_18d

    iget-object v1, p0, Lq/E0;->r:Lq/x0;

    if-nez v1, :cond_18b

    goto :goto_194

    :cond_18b
    move-object v4, v1

    goto :goto_194

    :cond_18d
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lq/x0;

    :goto_194
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v4, v1, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/E0;->s:Lq/q4;

    iput-object v3, p0, Lq/E0;->r:Lq/x0;

    :cond_1a1
    iget-object v1, p0, Lq/E0;->s:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/q0;

    invoke-virtual {v1, v0}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_1b3

    :cond_1ad
    iput-object v0, p0, Lq/E0;->r:Lq/x0;

    goto :goto_1b3

    :cond_1b0
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_1b3
    iget-object v0, p0, Lq/E0;->r:Lq/x0;

    if-eqz v0, :cond_1c0

    iget v0, p0, Lq/E0;->f:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lq/E0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_1c0
    iget-object v0, p1, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lq/E0;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1db

    iget-object v0, p1, Lq/M0;->r:Ljava/util/List;

    iput-object v0, p0, Lq/E0;->t:Ljava/util/List;

    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lq/E0;->f:I

    goto :goto_1f7

    :cond_1db
    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_1f0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/E0;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/E0;->t:Ljava/util/List;

    iget v0, p0, Lq/E0;->f:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lq/E0;->f:I

    :cond_1f0
    iget-object v0, p0, Lq/E0;->t:Ljava/util/List;

    iget-object v1, p1, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1f7
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_1fa
    invoke-virtual {p0, p1}, Lq/u2;->Q(Lq/w2;)V

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final X(Lq/E;Lq/d2;)V
    .registers 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_1b4

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x13

    sparse-switch v1, :sswitch_data_1b8

    invoke-virtual {p0, p1, p2, v1}, Lq/u2;->R(Lq/E;Lq/d2;I)Z

    move-result v1

    if-nez v1, :cond_4

    :sswitch_18
    move v0, v4

    goto :goto_4

    :catchall_1a
    move-exception p1

    goto/16 :goto_1b0

    :catch_1d
    move-exception p1

    goto/16 :goto_1ab

    :sswitch_20
    sget-object v1, Lq/E1;->n:Lq/z1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/E1;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_3d

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/E0;->t:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/E0;->t:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lq/E0;->f:I

    :cond_3d
    iget-object v2, p0, Lq/E0;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_43
    iget-object v1, p0, Lq/E0;->s:Lq/q4;

    if-nez v1, :cond_65

    new-instance v2, Lq/q4;

    if-nez v1, :cond_52

    iget-object v1, p0, Lq/E0;->r:Lq/x0;

    if-nez v1, :cond_58

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_58

    :cond_52
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_58
    :goto_58
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v4

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v4, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/E0;->s:Lq/q4;

    iput-object v3, p0, Lq/E0;->r:Lq/x0;

    :cond_65
    iget-object v1, p0, Lq/E0;->s:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/E0;->f:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lq/E0;->f:I

    goto :goto_4

    :sswitch_75
    sget-object v1, Lq/I0;->i:Lq/G0;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/I0;

    iget v2, p0, Lq/E0;->f:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_92

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/E0;->q:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/E0;->q:Ljava/util/List;

    iget v2, p0, Lq/E0;->f:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lq/E0;->f:I

    :cond_92
    iget-object v2, p0, Lq/E0;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_99
    invoke-virtual {p1}, Lq/E;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lq/E;->f(I)I

    move-result v1

    :goto_a1
    invoke-virtual {p1}, Lq/E;->c()I

    move-result v2

    if-lez v2, :cond_c2

    invoke-virtual {p1}, Lq/E;->j()I

    move-result v2

    invoke-static {v2}, Lq/L0;->b(I)Lq/L0;

    move-result-object v3

    if-nez v3, :cond_b5

    invoke-virtual {p0, v5, v2}, Lq/t2;->K(II)V

    goto :goto_a1

    :cond_b5
    invoke-virtual {p0}, Lq/E0;->V()V

    iget-object v3, p0, Lq/E0;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_c2
    invoke-virtual {p1, v1}, Lq/E;->e(I)V

    goto/16 :goto_4

    :sswitch_c7
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    invoke-static {v1}, Lq/L0;->b(I)Lq/L0;

    move-result-object v2

    if-nez v2, :cond_d6

    invoke-virtual {p0, v5, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_d6
    invoke-virtual {p0}, Lq/E0;->V()V

    iget-object v2, p0, Lq/E0;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_e4
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_f7

    if-eq v1, v4, :cond_f4

    if-eq v1, v2, :cond_f1

    sget-object v2, Lq/K0;->b:Lq/K0;

    goto :goto_f9

    :cond_f1
    sget-object v3, Lq/K0;->d:Lq/K0;

    goto :goto_f9

    :cond_f4
    sget-object v3, Lq/K0;->c:Lq/K0;

    goto :goto_f9

    :cond_f7
    sget-object v3, Lq/K0;->b:Lq/K0;

    :goto_f9
    if-nez v3, :cond_102

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_102
    iput v1, p0, Lq/E0;->o:I

    iget v1, p0, Lq/E0;->f:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_10c
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/E0;->n:Z

    iget v1, p0, Lq/E0;->f:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_11a
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/E0;->k:Z

    iget v1, p0, Lq/E0;->f:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_128
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/E0;->m:Z

    iget v1, p0, Lq/E0;->f:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_136
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_149

    if-eq v1, v4, :cond_146

    if-eq v1, v2, :cond_143

    sget-object v2, Lq/J0;->b:Lq/J0;

    goto :goto_14b

    :cond_143
    sget-object v3, Lq/J0;->d:Lq/J0;

    goto :goto_14b

    :cond_146
    sget-object v3, Lq/J0;->c:Lq/J0;

    goto :goto_14b

    :cond_149
    sget-object v3, Lq/J0;->b:Lq/J0;

    :goto_14b
    if-nez v3, :cond_153

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_153
    iput v1, p0, Lq/E0;->i:I

    iget v1, p0, Lq/E0;->f:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_15d
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/E0;->j:Z

    iget v1, p0, Lq/E0;->f:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_16b
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/E0;->l:Z

    iget v1, p0, Lq/E0;->f:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_179
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/E0;->h:Z

    iget v1, p0, Lq/E0;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/E0;->f:I

    goto/16 :goto_4

    :sswitch_186
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_199

    if-eq v1, v4, :cond_196

    if-eq v1, v2, :cond_193

    sget-object v2, Lq/F0;->b:Lq/F0;

    goto :goto_19b

    :cond_193
    sget-object v3, Lq/F0;->d:Lq/F0;

    goto :goto_19b

    :cond_196
    sget-object v3, Lq/F0;->c:Lq/F0;

    goto :goto_19b

    :cond_199
    sget-object v3, Lq/F0;->b:Lq/F0;

    :goto_19b
    if-nez v3, :cond_1a2

    invoke-virtual {p0, v4, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_1a2
    iput v1, p0, Lq/E0;->g:I

    iget v1, p0, Lq/E0;->f:I

    or-int/2addr v1, v4

    iput v1, p0, Lq/E0;->f:I
    :try_end_1a9
    .catch Lq/U2; {:try_start_6 .. :try_end_1a9} :catch_1d
    .catchall {:try_start_6 .. :try_end_1a9} :catchall_1a

    goto/16 :goto_4

    :goto_1ab
    :try_start_1ab
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1b0
    .catchall {:try_start_1ab .. :try_end_1b0} :catchall_1a

    :goto_1b0
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_1b4
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    :sswitch_data_1b8
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_186
        0x10 -> :sswitch_179
        0x18 -> :sswitch_16b
        0x28 -> :sswitch_15d
        0x30 -> :sswitch_136
        0x50 -> :sswitch_128
        0x78 -> :sswitch_11a
        0x80 -> :sswitch_10c
        0x88 -> :sswitch_e4
        0x98 -> :sswitch_c7
        0x9a -> :sswitch_99
        0xa2 -> :sswitch_75
        0xaa -> :sswitch_43
        0x1f3a -> :sswitch_20
    .end sparse-switch
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/E0;->U()Lq/M0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/E0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/E0;->X(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/E0;->U()Lq/M0;

    move-result-object v0

    invoke-virtual {v0}, Lq/M0;->h()Z

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

    iget v0, p0, Lq/E0;->f:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/E0;->s:Lq/q4;

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/E0;->r:Lq/x0;

    if-nez v0, :cond_18

    sget-object v0, Lq/x0;->m:Lq/x0;

    goto :goto_18

    :cond_12
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/x0;

    :cond_18
    :goto_18
    invoke-virtual {v0}, Lq/x0;->h()Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    move v0, v1

    :goto_20
    iget-object v2, p0, Lq/E0;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    iget-object v2, p0, Lq/E0;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/E1;

    invoke-virtual {v2}, Lq/E1;->h()Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3a
    invoke-virtual {p0}, Lq/u2;->P()Z

    move-result v0

    if-nez v0, :cond_41

    return v1

    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/M0;->t:Lq/M0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->G:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/E0;->U()Lq/M0;

    move-result-object v0

    invoke-virtual {v0}, Lq/M0;->h()Z

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

    invoke-virtual {p0}, Lq/E0;->U()Lq/M0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/M0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/M0;

    invoke-virtual {p0, p1}, Lq/E0;->W(Lq/M0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/E0;->X(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/M0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/M0;

    invoke-virtual {p0, p1}, Lq/E0;->W(Lq/M0;)V

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
