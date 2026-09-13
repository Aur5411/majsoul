.class public final Lq/W;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I


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

    sget-object v0, Lq/F1;->v:Lq/J2;

    const-class v1, Lq/X;

    const-class v2, Lq/W;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/X;
    .registers 5

    new-instance v0, Lq/X;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const/4 v1, 0x0

    iput v1, v0, Lq/X;->e:I

    iput v1, v0, Lq/X;->f:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/X;->g:B

    iget v2, p0, Lq/W;->e:I

    if-eqz v2, :cond_29

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1a

    iget v1, p0, Lq/W;->f:I

    iput v1, v0, Lq/X;->e:I

    const/4 v1, 0x1

    :cond_1a
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_24

    iget v2, p0, Lq/W;->g:I

    iput v2, v0, Lq/X;->f:I

    or-int/lit8 v1, v1, 0x2

    :cond_24
    iget v2, v0, Lq/X;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/X;->d:I

    :cond_29
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/E;Lq/d2;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :cond_4
    :goto_4
    if-nez p2, :cond_47

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    const/16 v2, 0x8

    if-eq v0, v2, :cond_32

    const/16 v2, 0x10

    if-eq v0, v2, :cond_21

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1f
    move p2, v1

    goto :goto_4

    :cond_21
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v0

    iput v0, p0, Lq/W;->g:I

    iget v0, p0, Lq/W;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/W;->e:I

    goto :goto_4

    :catchall_2e
    move-exception p1

    goto :goto_43

    :catch_30
    move-exception p1

    goto :goto_3e

    :cond_32
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v0

    iput v0, p0, Lq/W;->f:I

    iget v0, p0, Lq/W;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/W;->e:I
    :try_end_3d
    .catch Lq/U2; {:try_start_6 .. :try_end_3d} :catch_30
    .catchall {:try_start_6 .. :try_end_3d} :catchall_2e

    goto :goto_4

    :goto_3e
    :try_start_3e
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_2e

    :goto_43
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_47
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final Q(Lq/X;)V
    .registers 3

    sget-object v0, Lq/X;->h:Lq/X;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/X;->D()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p1, Lq/X;->e:I

    iput v0, p0, Lq/W;->f:I

    iget v0, p0, Lq/W;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/W;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/X;->C()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p1, Lq/X;->f:I

    iput v0, p0, Lq/W;->g:I

    iget v0, p0, Lq/W;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/W;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/W;->O()Lq/X;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/W;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/W;->P(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/W;->O()Lq/X;

    move-result-object v0

    invoke-virtual {v0}, Lq/X;->h()Z

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

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/X;->h:Lq/X;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->u:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/W;->O()Lq/X;

    move-result-object v0

    invoke-virtual {v0}, Lq/X;->h()Z

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

    invoke-virtual {p0}, Lq/W;->O()Lq/X;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/X;

    if-eqz v0, :cond_a

    check-cast p1, Lq/X;

    invoke-virtual {p0, p1}, Lq/W;->Q(Lq/X;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/W;->P(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/X;

    if-eqz v0, :cond_a

    check-cast p1, Lq/X;

    invoke-virtual {p0, p1}, Lq/W;->Q(Lq/X;)V

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
