.class public final Lq/i1;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/Serializable;

.field public g:Lq/m1;

.field public h:Lq/q4;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/i1;->f:Ljava/io/Serializable;

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

    sget-object v0, Lq/F1;->r:Lq/J2;

    const-class v1, Lq/j1;

    const-class v2, Lq/i1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/j1;
    .registers 4

    new-instance v0, Lq/j1;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/j1;->e:Ljava/io/Serializable;

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/j1;->g:B

    iget v1, p0, Lq/i1;->e:I

    if-eqz v1, :cond_35

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lq/i1;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/j1;->e:Ljava/io/Serializable;

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_30

    iget-object v1, p0, Lq/i1;->h:Lq/q4;

    if-nez v1, :cond_26

    iget-object v1, p0, Lq/i1;->g:Lq/m1;

    goto :goto_2c

    :cond_26
    invoke-virtual {v1}, Lq/q4;->a()Lq/c;

    move-result-object v1

    check-cast v1, Lq/m1;

    :goto_2c
    iput-object v1, v0, Lq/j1;->f:Lq/m1;

    or-int/lit8 v2, v2, 0x2

    :cond_30
    iget v1, v0, Lq/j1;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/j1;->d:I

    :cond_35
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/j1;)V
    .registers 7

    sget-object v0, Lq/j1;->h:Lq/j1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/j1;->E()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/j1;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lq/i1;->f:Ljava/io/Serializable;

    iget v0, p0, Lq/i1;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/i1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/j1;->F()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Lq/j1;->D()Lq/m1;

    move-result-object v0

    iget-object v1, p0, Lq/i1;->h:Lq/q4;

    if-nez v1, :cond_6e

    iget v1, p0, Lq/i1;->e:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lq/i1;->g:Lq/m1;

    if-eqz v2, :cond_6b

    sget-object v3, Lq/m1;->i:Lq/m1;

    if-eq v2, v3, :cond_6b

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/i1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/i1;->h:Lq/q4;

    if-nez v1, :cond_5f

    new-instance v2, Lq/q4;

    if-nez v1, :cond_4a

    iget-object v1, p0, Lq/i1;->g:Lq/m1;

    if-nez v1, :cond_48

    goto :goto_51

    :cond_48
    move-object v3, v1

    goto :goto_51

    :cond_4a
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lq/m1;

    :goto_51
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v3, v1, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/i1;->h:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/i1;->g:Lq/m1;

    :cond_5f
    iget-object v1, p0, Lq/i1;->h:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/l1;

    invoke-virtual {v1, v0}, Lq/l1;->V(Lq/m1;)V

    goto :goto_71

    :cond_6b
    iput-object v0, p0, Lq/i1;->g:Lq/m1;

    goto :goto_71

    :cond_6e
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_71
    iget-object v0, p0, Lq/i1;->g:Lq/m1;

    if-eqz v0, :cond_7e

    iget v0, p0, Lq/i1;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/i1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_7e
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
    if-nez v0, :cond_6d

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    const/16 v3, 0xa

    if-eq v1, v3, :cond_58

    const/16 v3, 0x12

    if-eq v1, v3, :cond_21

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1f
    move v0, v2

    goto :goto_4

    :cond_21
    iget-object v1, p0, Lq/i1;->h:Lq/q4;

    if-nez v1, :cond_44

    new-instance v2, Lq/q4;

    if-nez v1, :cond_30

    iget-object v1, p0, Lq/i1;->g:Lq/m1;

    if-nez v1, :cond_36

    sget-object v1, Lq/m1;->i:Lq/m1;

    goto :goto_36

    :cond_30
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/m1;

    :cond_36
    :goto_36
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/i1;->h:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/i1;->g:Lq/m1;

    :cond_44
    iget-object v1, p0, Lq/i1;->h:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/i1;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/i1;->e:I

    goto :goto_4

    :catchall_54
    move-exception p1

    goto :goto_69

    :catch_56
    move-exception p1

    goto :goto_64

    :cond_58
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/i1;->f:Ljava/io/Serializable;

    iget v1, p0, Lq/i1;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/i1;->e:I
    :try_end_63
    .catch Lq/U2; {:try_start_6 .. :try_end_63} :catch_56
    .catchall {:try_start_6 .. :try_end_63} :catchall_54

    goto :goto_4

    :goto_64
    :try_start_64
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_54

    :goto_69
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_6d
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/i1;->O()Lq/j1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/i1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/i1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/i1;->O()Lq/j1;

    move-result-object v0

    invoke-virtual {v0}, Lq/j1;->h()Z

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

    iget v0, p0, Lq/i1;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/i1;->h:Lq/q4;

    if-nez v0, :cond_11

    iget-object v0, p0, Lq/i1;->g:Lq/m1;

    if-nez v0, :cond_17

    sget-object v0, Lq/m1;->i:Lq/m1;

    goto :goto_17

    :cond_11
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/m1;

    :cond_17
    :goto_17
    invoke-virtual {v0}, Lq/m1;->h()Z

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

    sget-object v0, Lq/j1;->h:Lq/j1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->q:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/i1;->O()Lq/j1;

    move-result-object v0

    invoke-virtual {v0}, Lq/j1;->h()Z

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

    invoke-virtual {p0}, Lq/i1;->O()Lq/j1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/j1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/j1;

    invoke-virtual {p0, p1}, Lq/i1;->P(Lq/j1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/i1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/j1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/j1;

    invoke-virtual {p0, p1}, Lq/i1;->P(Lq/j1;)V

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
