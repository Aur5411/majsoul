.class public final Lq/L;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Lq/o0;

.field public i:Lq/q4;


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

    sget-object v0, Lq/F1;->h:Lq/J2;

    const-class v1, Lq/M;

    const-class v2, Lq/L;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/M;
    .registers 5

    new-instance v0, Lq/M;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const/4 v1, 0x0

    iput v1, v0, Lq/M;->e:I

    iput v1, v0, Lq/M;->f:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/M;->h:B

    iget v2, p0, Lq/L;->e:I

    if-eqz v2, :cond_3e

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1a

    iget v1, p0, Lq/L;->f:I

    iput v1, v0, Lq/M;->e:I

    const/4 v1, 0x1

    :cond_1a
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_24

    iget v3, p0, Lq/L;->g:I

    iput v3, v0, Lq/M;->f:I

    or-int/lit8 v1, v1, 0x2

    :cond_24
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_39

    iget-object v2, p0, Lq/L;->i:Lq/q4;

    if-nez v2, :cond_2f

    iget-object v2, p0, Lq/L;->h:Lq/o0;

    goto :goto_35

    :cond_2f
    invoke-virtual {v2}, Lq/q4;->a()Lq/c;

    move-result-object v2

    check-cast v2, Lq/o0;

    :goto_35
    iput-object v2, v0, Lq/M;->g:Lq/o0;

    or-int/lit8 v1, v1, 0x4

    :cond_39
    iget v2, v0, Lq/M;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/M;->d:I

    :cond_3e
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/E;Lq/d2;)Lq/L;
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_7e

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    const/16 v3, 0x8

    if-eq v1, v3, :cond_69

    const/16 v3, 0x10

    if-eq v1, v3, :cond_5c

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_25

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_23
    move v0, v2

    goto :goto_4

    :cond_25
    iget-object v1, p0, Lq/L;->i:Lq/q4;

    if-nez v1, :cond_48

    new-instance v2, Lq/q4;

    if-nez v1, :cond_34

    iget-object v1, p0, Lq/L;->h:Lq/o0;

    if-nez v1, :cond_3a

    sget-object v1, Lq/o0;->k:Lq/o0;

    goto :goto_3a

    :cond_34
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/o0;

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/L;->i:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/L;->h:Lq/o0;

    :cond_48
    iget-object v1, p0, Lq/L;->i:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/L;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/L;->e:I

    goto :goto_4

    :catchall_58
    move-exception p1

    goto :goto_7a

    :catch_5a
    move-exception p1

    goto :goto_75

    :cond_5c
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v1

    iput v1, p0, Lq/L;->g:I

    iget v1, p0, Lq/L;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/L;->e:I

    goto :goto_4

    :cond_69
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v1

    iput v1, p0, Lq/L;->f:I

    iget v1, p0, Lq/L;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/L;->e:I
    :try_end_74
    .catch Lq/U2; {:try_start_6 .. :try_end_74} :catch_5a
    .catchall {:try_start_6 .. :try_end_74} :catchall_58

    goto :goto_4

    :goto_75
    :try_start_75
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_58

    :goto_7a
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_7e
    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final Q(Lq/M;)Lq/L;
    .registers 7

    sget-object v0, Lq/M;->i:Lq/M;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lq/M;->F()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p1, Lq/M;->e:I

    iput v0, p0, Lq/L;->f:I

    iget v0, p0, Lq/L;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/L;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/M;->D()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p1, Lq/M;->f:I

    iput v0, p0, Lq/L;->g:I

    iget v0, p0, Lq/L;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/L;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    invoke-virtual {p1}, Lq/M;->E()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lq/M;->C()Lq/o0;

    move-result-object v0

    iget-object v1, p0, Lq/L;->i:Lq/q4;

    if-nez v1, :cond_81

    iget v1, p0, Lq/L;->e:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lq/L;->h:Lq/o0;

    if-eqz v2, :cond_7e

    sget-object v3, Lq/o0;->k:Lq/o0;

    if-eq v2, v3, :cond_7e

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/L;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/L;->i:Lq/q4;

    if-nez v1, :cond_72

    new-instance v2, Lq/q4;

    if-nez v1, :cond_5d

    iget-object v1, p0, Lq/L;->h:Lq/o0;

    if-nez v1, :cond_5b

    goto :goto_64

    :cond_5b
    move-object v3, v1

    goto :goto_64

    :cond_5d
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lq/o0;

    :goto_64
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v3, v1, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/L;->i:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/L;->h:Lq/o0;

    :cond_72
    iget-object v1, p0, Lq/L;->i:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/j0;

    invoke-virtual {v1, v0}, Lq/j0;->V(Lq/o0;)Lq/j0;

    goto :goto_84

    :cond_7e
    iput-object v0, p0, Lq/L;->h:Lq/o0;

    goto :goto_84

    :cond_81
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_84
    iget-object v0, p0, Lq/L;->h:Lq/o0;

    if-eqz v0, :cond_91

    iget v0, p0, Lq/L;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/L;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_91
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/L;->O()Lq/M;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/L;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/L;->P(Lq/E;Lq/d2;)Lq/L;

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/L;->O()Lq/M;

    move-result-object v0

    invoke-virtual {v0}, Lq/M;->h()Z

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

    iget v0, p0, Lq/L;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/L;->i:Lq/q4;

    if-nez v0, :cond_11

    iget-object v0, p0, Lq/L;->h:Lq/o0;

    if-nez v0, :cond_17

    sget-object v0, Lq/o0;->k:Lq/o0;

    goto :goto_17

    :cond_11
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/o0;

    :cond_17
    :goto_17
    invoke-virtual {v0}, Lq/o0;->h()Z

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

    sget-object v0, Lq/M;->i:Lq/M;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->g:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/L;->O()Lq/M;

    move-result-object v0

    invoke-virtual {v0}, Lq/M;->h()Z

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

    invoke-virtual {p0}, Lq/L;->O()Lq/M;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/M;

    if-eqz v0, :cond_a

    check-cast p1, Lq/M;

    invoke-virtual {p0, p1}, Lq/L;->Q(Lq/M;)Lq/L;

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/L;->P(Lq/E;Lq/d2;)Lq/L;

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/M;

    if-eqz v0, :cond_a

    check-cast p1, Lq/M;

    invoke-virtual {p0, p1}, Lq/L;->Q(Lq/M;)Lq/L;

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
