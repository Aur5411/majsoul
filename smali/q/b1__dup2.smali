.class public final Lq/b1;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/Serializable;

.field public g:Ljava/io/Serializable;

.field public h:Ljava/io/Serializable;

.field public i:Lq/g1;

.field public j:Lq/q4;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/b1;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/b1;->g:Ljava/io/Serializable;

    iput-object v0, p0, Lq/b1;->h:Ljava/io/Serializable;

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

    sget-object v0, Lq/F1;->B:Lq/J2;

    const-class v1, Lq/c1;

    const-class v2, Lq/b1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/c1;
    .registers 5

    new-instance v0, Lq/c1;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/c1;->e:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->g:Ljava/io/Serializable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq/c1;->i:Z

    iput-boolean v1, v0, Lq/c1;->j:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/c1;->k:B

    iget v2, p0, Lq/b1;->e:I

    if-eqz v2, :cond_64

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_22

    iget-object v1, p0, Lq/b1;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->e:Ljava/io/Serializable;

    const/4 v1, 0x1

    :cond_22
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lq/b1;->g:Ljava/io/Serializable;

    iput-object v3, v0, Lq/c1;->f:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x2

    :cond_2c
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_36

    iget-object v3, p0, Lq/b1;->h:Ljava/io/Serializable;

    iput-object v3, v0, Lq/c1;->g:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x4

    :cond_36
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lq/b1;->j:Lq/q4;

    if-nez v3, :cond_41

    iget-object v3, p0, Lq/b1;->i:Lq/g1;

    goto :goto_47

    :cond_41
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/g1;

    :goto_47
    iput-object v3, v0, Lq/c1;->h:Lq/g1;

    or-int/lit8 v1, v1, 0x8

    :cond_4b
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_55

    iget-boolean v3, p0, Lq/b1;->k:Z

    iput-boolean v3, v0, Lq/c1;->i:Z

    or-int/lit8 v1, v1, 0x10

    :cond_55
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5f

    iget-boolean v2, p0, Lq/b1;->l:Z

    iput-boolean v2, v0, Lq/c1;->j:Z

    or-int/lit8 v1, v1, 0x20

    :cond_5f
    iget v2, v0, Lq/c1;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/c1;->d:I

    :cond_64
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/c1;)V
    .registers 7

    sget-object v0, Lq/c1;->l:Lq/c1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/c1;->I()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/c1;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lq/b1;->f:Ljava/io/Serializable;

    iget v0, p0, Lq/b1;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/c1;->H()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lq/c1;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/b1;->g:Ljava/io/Serializable;

    iget v0, p0, Lq/b1;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    invoke-virtual {p1}, Lq/c1;->K()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lq/c1;->g:Ljava/io/Serializable;

    iput-object v0, p0, Lq/b1;->h:Ljava/io/Serializable;

    iget v0, p0, Lq/b1;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3e
    invoke-virtual {p1}, Lq/c1;->J()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p1}, Lq/c1;->E()Lq/g1;

    move-result-object v0

    iget-object v1, p0, Lq/b1;->j:Lq/q4;

    if-nez v1, :cond_94

    iget v1, p0, Lq/b1;->e:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_91

    iget-object v2, p0, Lq/b1;->i:Lq/g1;

    if-eqz v2, :cond_91

    sget-object v3, Lq/g1;->k:Lq/g1;

    if-eq v2, v3, :cond_91

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/b1;->j:Lq/q4;

    if-nez v1, :cond_85

    new-instance v2, Lq/q4;

    if-nez v1, :cond_70

    iget-object v1, p0, Lq/b1;->i:Lq/g1;

    if-nez v1, :cond_6e

    goto :goto_77

    :cond_6e
    move-object v3, v1

    goto :goto_77

    :cond_70
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lq/g1;

    :goto_77
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v3, v1, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/b1;->j:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/b1;->i:Lq/g1;

    :cond_85
    iget-object v1, p0, Lq/b1;->j:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/e1;

    invoke-virtual {v1, v0}, Lq/e1;->V(Lq/g1;)V

    goto :goto_97

    :cond_91
    iput-object v0, p0, Lq/b1;->i:Lq/g1;

    goto :goto_97

    :cond_94
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_97
    iget-object v0, p0, Lq/b1;->i:Lq/g1;

    if-eqz v0, :cond_a4

    iget v0, p0, Lq/b1;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_a4
    invoke-virtual {p1}, Lq/c1;->G()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-boolean v0, p1, Lq/c1;->i:Z

    iput-boolean v0, p0, Lq/b1;->k:Z

    iget v0, p0, Lq/b1;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_b7
    invoke-virtual {p1}, Lq/c1;->L()Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-boolean v0, p1, Lq/c1;->j:Z

    iput-boolean v0, p0, Lq/b1;->l:Z

    iget v0, p0, Lq/b1;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/b1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_ca
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final Q(Lq/E;Lq/d2;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_b5

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    const/16 v3, 0xa

    if-eq v1, v3, :cond_9f

    const/16 v3, 0x12

    if-eq v1, v3, :cond_91

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_83

    const/16 v3, 0x22

    if-eq v1, v3, :cond_50

    const/16 v3, 0x28

    if-eq v1, v3, :cond_43

    const/16 v3, 0x30

    if-eq v1, v3, :cond_31

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2f
    move v0, v2

    goto :goto_4

    :cond_31
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/b1;->l:Z

    iget v1, p0, Lq/b1;->e:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lq/b1;->e:I

    goto :goto_4

    :catchall_3e
    move-exception p1

    goto/16 :goto_b1

    :catch_41
    move-exception p1

    goto :goto_ac

    :cond_43
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/b1;->k:Z

    iget v1, p0, Lq/b1;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lq/b1;->e:I

    goto :goto_4

    :cond_50
    iget-object v1, p0, Lq/b1;->j:Lq/q4;

    if-nez v1, :cond_73

    new-instance v2, Lq/q4;

    if-nez v1, :cond_5f

    iget-object v1, p0, Lq/b1;->i:Lq/g1;

    if-nez v1, :cond_65

    sget-object v1, Lq/g1;->k:Lq/g1;

    goto :goto_65

    :cond_5f
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/g1;

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/b1;->j:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/b1;->i:Lq/g1;

    :cond_73
    iget-object v1, p0, Lq/b1;->j:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/b1;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/b1;->e:I

    goto :goto_4

    :cond_83
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/b1;->h:Ljava/io/Serializable;

    iget v1, p0, Lq/b1;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/b1;->e:I

    goto/16 :goto_4

    :cond_91
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/b1;->g:Ljava/io/Serializable;

    iget v1, p0, Lq/b1;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/b1;->e:I

    goto/16 :goto_4

    :cond_9f
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/b1;->f:Ljava/io/Serializable;

    iget v1, p0, Lq/b1;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/b1;->e:I
    :try_end_aa
    .catch Lq/U2; {:try_start_6 .. :try_end_aa} :catch_41
    .catchall {:try_start_6 .. :try_end_aa} :catchall_3e

    goto/16 :goto_4

    :goto_ac
    :try_start_ac
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_3e

    :goto_b1
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_b5
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/b1;->O()Lq/c1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/b1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/b1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/b1;->O()Lq/c1;

    move-result-object v0

    invoke-virtual {v0}, Lq/c1;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final h()Z
    .registers 2

    iget v0, p0, Lq/b1;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/b1;->j:Lq/q4;

    if-nez v0, :cond_11

    iget-object v0, p0, Lq/b1;->i:Lq/g1;

    if-nez v0, :cond_17

    sget-object v0, Lq/g1;->k:Lq/g1;

    goto :goto_17

    :cond_11
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/g1;

    :cond_17
    :goto_17
    invoke-virtual {v0}, Lq/g1;->h()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    return v0

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/c1;->l:Lq/c1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->A:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/b1;->O()Lq/c1;

    move-result-object v0

    invoke-virtual {v0}, Lq/c1;->h()Z

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

    invoke-virtual {p0}, Lq/b1;->O()Lq/c1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/c1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/c1;

    invoke-virtual {p0, p1}, Lq/b1;->P(Lq/c1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/b1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/c1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/c1;

    invoke-virtual {p0, p1}, Lq/b1;->P(Lq/c1;)V

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
