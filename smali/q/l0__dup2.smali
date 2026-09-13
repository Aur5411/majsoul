.class public final Lq/l0;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:Ljava/io/Serializable;

.field public h:Ljava/io/Serializable;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/l0;->g:Ljava/io/Serializable;

    iput-object v0, p0, Lq/l0;->h:Ljava/io/Serializable;

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

    sget-object v0, Lq/F1;->n:Lq/J2;

    const-class v1, Lq/m0;

    const-class v2, Lq/l0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/m0;
    .registers 5

    new-instance v0, Lq/m0;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const/4 v1, 0x0

    iput v1, v0, Lq/m0;->e:I

    const-string v2, ""

    iput-object v2, v0, Lq/m0;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/m0;->g:Ljava/io/Serializable;

    iput-boolean v1, v0, Lq/m0;->h:Z

    iput-boolean v1, v0, Lq/m0;->i:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/m0;->j:B

    iget v2, p0, Lq/l0;->e:I

    if-eqz v2, :cond_4f

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_22

    iget v1, p0, Lq/l0;->f:I

    iput v1, v0, Lq/m0;->e:I

    const/4 v1, 0x1

    :cond_22
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lq/l0;->g:Ljava/io/Serializable;

    iput-object v3, v0, Lq/m0;->f:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x2

    :cond_2c
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_36

    iget-object v3, p0, Lq/l0;->h:Ljava/io/Serializable;

    iput-object v3, v0, Lq/m0;->g:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x4

    :cond_36
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_40

    iget-boolean v3, p0, Lq/l0;->i:Z

    iput-boolean v3, v0, Lq/m0;->h:Z

    or-int/lit8 v1, v1, 0x8

    :cond_40
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lq/l0;->j:Z

    iput-boolean v2, v0, Lq/m0;->i:Z

    or-int/lit8 v1, v1, 0x10

    :cond_4a
    iget v2, v0, Lq/m0;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/m0;->d:I

    :cond_4f
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/m0;)V
    .registers 3

    sget-object v0, Lq/m0;->k:Lq/m0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/m0;->F()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p1, Lq/m0;->e:I

    iput v0, p0, Lq/l0;->f:I

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/l0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/m0;->E()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lq/m0;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/l0;->g:Ljava/io/Serializable;

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/l0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    invoke-virtual {p1}, Lq/m0;->I()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lq/m0;->g:Ljava/io/Serializable;

    iput-object v0, p0, Lq/l0;->h:Ljava/io/Serializable;

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/l0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3e
    invoke-virtual {p1}, Lq/m0;->H()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p1, Lq/m0;->h:Z

    iput-boolean v0, p0, Lq/l0;->i:Z

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/l0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_51
    invoke-virtual {p1}, Lq/m0;->G()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p1, Lq/m0;->i:Z

    iput-boolean v0, p0, Lq/l0;->j:Z

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/l0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_64
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final Q(Lq/E;Lq/d2;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :cond_4
    :goto_4
    if-nez p2, :cond_79

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    const/16 v2, 0x8

    if-eq v0, v2, :cond_64

    const/16 v3, 0x12

    if-eq v0, v3, :cond_57

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4a

    const/16 v3, 0x28

    if-eq v0, v3, :cond_3e

    const/16 v2, 0x30

    if-eq v0, v2, :cond_2d

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2b
    move p2, v1

    goto :goto_4

    :cond_2d
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v0

    iput-boolean v0, p0, Lq/l0;->j:Z

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/l0;->e:I

    goto :goto_4

    :catchall_3a
    move-exception p1

    goto :goto_75

    :catch_3c
    move-exception p1

    goto :goto_70

    :cond_3e
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v0

    iput-boolean v0, p0, Lq/l0;->i:Z

    iget v0, p0, Lq/l0;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lq/l0;->e:I

    goto :goto_4

    :cond_4a
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v0

    iput-object v0, p0, Lq/l0;->h:Ljava/io/Serializable;

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/l0;->e:I

    goto :goto_4

    :cond_57
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v0

    iput-object v0, p0, Lq/l0;->g:Ljava/io/Serializable;

    iget v0, p0, Lq/l0;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/l0;->e:I

    goto :goto_4

    :cond_64
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v0

    iput v0, p0, Lq/l0;->f:I

    iget v0, p0, Lq/l0;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/l0;->e:I
    :try_end_6f
    .catch Lq/U2; {:try_start_6 .. :try_end_6f} :catch_3c
    .catchall {:try_start_6 .. :try_end_6f} :catchall_3a

    goto :goto_4

    :goto_70
    :try_start_70
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_3a

    :goto_75
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_79
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/l0;->O()Lq/m0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/l0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/l0;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/l0;->O()Lq/m0;

    move-result-object v0

    invoke-virtual {v0}, Lq/m0;->h()Z

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

    sget-object v0, Lq/m0;->k:Lq/m0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->m:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/l0;->O()Lq/m0;

    move-result-object v0

    invoke-virtual {v0}, Lq/m0;->h()Z

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

    invoke-virtual {p0}, Lq/l0;->O()Lq/m0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/m0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/m0;

    invoke-virtual {p0, p1}, Lq/l0;->P(Lq/m0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/l0;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/m0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/m0;

    invoke-virtual {p0, p1}, Lq/l0;->P(Lq/m0;)V

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
