.class public final Lq/w1;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Lq/Q2;

.field public g:Lq/Q2;

.field public h:Ljava/io/Serializable;

.field public i:Ljava/io/Serializable;

.field public j:Lq/b3;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    sget-object v0, Lq/O2;->d:Lq/O2;

    iput-object v0, p0, Lq/w1;->f:Lq/Q2;

    iput-object v0, p0, Lq/w1;->g:Lq/Q2;

    const-string v0, ""

    iput-object v0, p0, Lq/w1;->h:Ljava/io/Serializable;

    iput-object v0, p0, Lq/w1;->i:Ljava/io/Serializable;

    sget-object v0, Lq/b3;->c:Lq/b3;

    iput-object v0, p0, Lq/w1;->j:Lq/b3;

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

    sget-object v0, Lq/F1;->d0:Lq/J2;

    const-class v1, Lq/x1;

    const-class v2, Lq/w1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/x1;
    .registers 5

    new-instance v0, Lq/x1;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    sget-object v1, Lq/O2;->d:Lq/O2;

    iput-object v1, v0, Lq/x1;->e:Lq/Q2;

    const/4 v2, -0x1

    iput v2, v0, Lq/x1;->f:I

    iput-object v1, v0, Lq/x1;->g:Lq/Q2;

    iput v2, v0, Lq/x1;->h:I

    const-string v1, ""

    iput-object v1, v0, Lq/x1;->i:Ljava/io/Serializable;

    iput-object v1, v0, Lq/x1;->j:Ljava/io/Serializable;

    sget-object v1, Lq/b3;->c:Lq/b3;

    iput-object v1, v0, Lq/x1;->k:Lq/b3;

    iput-byte v2, v0, Lq/x1;->l:B

    iget v1, p0, Lq/w1;->e:I

    if-eqz v1, :cond_65

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lq/w1;->f:Lq/Q2;

    check-cast v2, Lq/e;

    invoke-virtual {v2}, Lq/e;->c()V

    iget-object v2, p0, Lq/w1;->f:Lq/Q2;

    iput-object v2, v0, Lq/x1;->e:Lq/Q2;

    :cond_2f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lq/w1;->g:Lq/Q2;

    check-cast v2, Lq/e;

    invoke-virtual {v2}, Lq/e;->c()V

    iget-object v2, p0, Lq/w1;->g:Lq/Q2;

    iput-object v2, v0, Lq/x1;->g:Lq/Q2;

    :cond_3e
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_48

    iget-object v2, p0, Lq/w1;->h:Ljava/io/Serializable;

    iput-object v2, v0, Lq/x1;->i:Ljava/io/Serializable;

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_53

    iget-object v3, p0, Lq/w1;->i:Ljava/io/Serializable;

    iput-object v3, v0, Lq/x1;->j:Ljava/io/Serializable;

    or-int/lit8 v2, v2, 0x2

    :cond_53
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_60

    iget-object v1, p0, Lq/w1;->j:Lq/b3;

    invoke-virtual {v1}, Lq/e;->c()V

    iget-object v1, p0, Lq/w1;->j:Lq/b3;

    iput-object v1, v0, Lq/x1;->k:Lq/b3;

    :cond_60
    iget v1, v0, Lq/x1;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/x1;->d:I

    :cond_65
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P()V
    .registers 3

    iget-object v0, p0, Lq/w1;->f:Lq/Q2;

    move-object v1, v0

    check-cast v1, Lq/e;

    iget-boolean v1, v1, Lq/e;->a:Z

    if-nez v1, :cond_11

    invoke-static {v0}, Lq/K2;->z(Lq/R2;)Lq/R2;

    move-result-object v0

    check-cast v0, Lq/Q2;

    iput-object v0, p0, Lq/w1;->f:Lq/Q2;

    :cond_11
    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/w1;->e:I

    return-void
.end method

.method public final Q()V
    .registers 3

    iget-object v0, p0, Lq/w1;->g:Lq/Q2;

    move-object v1, v0

    check-cast v1, Lq/e;

    iget-boolean v1, v1, Lq/e;->a:Z

    if-nez v1, :cond_11

    invoke-static {v0}, Lq/K2;->z(Lq/R2;)Lq/R2;

    move-result-object v0

    check-cast v0, Lq/Q2;

    iput-object v0, p0, Lq/w1;->g:Lq/Q2;

    :cond_11
    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/w1;->e:I

    return-void
.end method

.method public final R(Lq/x1;)V
    .registers 4

    sget-object v0, Lq/x1;->m:Lq/x1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lq/x1;->e:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lq/w1;->f:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p1, Lq/x1;->e:Lq/Q2;

    iput-object v0, p0, Lq/w1;->f:Lq/Q2;

    check-cast v0, Lq/e;

    invoke-virtual {v0}, Lq/e;->c()V

    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/w1;->e:I

    goto :goto_31

    :cond_25
    invoke-virtual {p0}, Lq/w1;->P()V

    iget-object v0, p0, Lq/w1;->f:Lq/Q2;

    iget-object v1, p1, Lq/x1;->e:Lq/Q2;

    check-cast v0, Lq/O2;

    invoke-virtual {v0, v1}, Lq/O2;->addAll(Ljava/util/Collection;)Z

    :goto_31
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_34
    iget-object v0, p1, Lq/x1;->g:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lq/w1;->g:Lq/Q2;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p1, Lq/x1;->g:Lq/Q2;

    iput-object v0, p0, Lq/w1;->g:Lq/Q2;

    check-cast v0, Lq/e;

    invoke-virtual {v0}, Lq/e;->c()V

    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/w1;->e:I

    goto :goto_60

    :cond_54
    invoke-virtual {p0}, Lq/w1;->Q()V

    iget-object v0, p0, Lq/w1;->g:Lq/Q2;

    iget-object v1, p1, Lq/x1;->g:Lq/Q2;

    check-cast v0, Lq/O2;

    invoke-virtual {v0, v1}, Lq/O2;->addAll(Ljava/util/Collection;)Z

    :goto_60
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_63
    invoke-virtual {p1}, Lq/x1;->E()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p1, Lq/x1;->i:Ljava/io/Serializable;

    iput-object v0, p0, Lq/w1;->h:Ljava/io/Serializable;

    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/w1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_76
    invoke-virtual {p1}, Lq/x1;->F()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p1, Lq/x1;->j:Ljava/io/Serializable;

    iput-object v0, p0, Lq/w1;->i:Ljava/io/Serializable;

    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/w1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_89
    iget-object v0, p1, Lq/x1;->k:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lq/w1;->j:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p1, Lq/x1;->k:Lq/b3;

    iput-object v0, p0, Lq/w1;->j:Lq/b3;

    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/w1;->e:I

    goto :goto_c0

    :cond_a4
    iget-object v0, p0, Lq/w1;->j:Lq/b3;

    iget-boolean v0, v0, Lq/e;->a:Z

    if-nez v0, :cond_b3

    new-instance v0, Lq/b3;

    iget-object v1, p0, Lq/w1;->j:Lq/b3;

    invoke-direct {v0, v1}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v0, p0, Lq/w1;->j:Lq/b3;

    :cond_b3
    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/w1;->e:I

    iget-object v0, p0, Lq/w1;->j:Lq/b3;

    iget-object v1, p1, Lq/x1;->k:Lq/b3;

    invoke-virtual {v0, v1}, Lq/b3;->addAll(Ljava/util/Collection;)Z

    :goto_c0
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_c3
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final S(Lq/E;Lq/d2;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :cond_4
    :goto_4
    if-nez p2, :cond_df

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c6

    const/16 v3, 0xa

    if-eq v0, v3, :cond_a4

    const/16 v3, 0x10

    if-eq v0, v3, :cond_94

    const/16 v4, 0x12

    if-eq v0, v4, :cond_72

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_65

    const/16 v4, 0x22

    if-eq v0, v4, :cond_59

    const/16 v2, 0x32

    if-eq v0, v2, :cond_35

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_33
    move p2, v1

    goto :goto_4

    :cond_35
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v0

    iget-object v1, p0, Lq/w1;->j:Lq/b3;

    iget-boolean v1, v1, Lq/e;->a:Z

    if-nez v1, :cond_48

    new-instance v1, Lq/b3;

    iget-object v2, p0, Lq/w1;->j:Lq/b3;

    invoke-direct {v1, v2}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v1, p0, Lq/w1;->j:Lq/b3;

    :cond_48
    iget v1, p0, Lq/w1;->e:I

    or-int/2addr v1, v3

    iput v1, p0, Lq/w1;->e:I

    iget-object v1, p0, Lq/w1;->j:Lq/b3;

    invoke-virtual {v1, v0}, Lq/b3;->d(Lq/B;)V

    goto :goto_4

    :catchall_53
    move-exception p1

    goto/16 :goto_db

    :catch_56
    move-exception p1

    goto/16 :goto_d6

    :cond_59
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v0

    iput-object v0, p0, Lq/w1;->i:Ljava/io/Serializable;

    iget v0, p0, Lq/w1;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lq/w1;->e:I

    goto :goto_4

    :cond_65
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v0

    iput-object v0, p0, Lq/w1;->h:Ljava/io/Serializable;

    iget v0, p0, Lq/w1;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/w1;->e:I

    goto :goto_4

    :cond_72
    invoke-virtual {p1}, Lq/E;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Lq/E;->f(I)I

    move-result v0

    invoke-virtual {p0}, Lq/w1;->Q()V

    :goto_7d
    invoke-virtual {p1}, Lq/E;->c()I

    move-result v1

    if-lez v1, :cond_8f

    iget-object v1, p0, Lq/w1;->g:Lq/Q2;

    invoke-virtual {p1}, Lq/E;->o()I

    move-result v2

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v2}, Lq/O2;->d(I)V

    goto :goto_7d

    :cond_8f
    invoke-virtual {p1, v0}, Lq/E;->e(I)V

    goto/16 :goto_4

    :cond_94
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v0

    invoke-virtual {p0}, Lq/w1;->Q()V

    iget-object v1, p0, Lq/w1;->g:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v0}, Lq/O2;->d(I)V

    goto/16 :goto_4

    :cond_a4
    invoke-virtual {p1}, Lq/E;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Lq/E;->f(I)I

    move-result v0

    invoke-virtual {p0}, Lq/w1;->P()V

    :goto_af
    invoke-virtual {p1}, Lq/E;->c()I

    move-result v1

    if-lez v1, :cond_c1

    iget-object v1, p0, Lq/w1;->f:Lq/Q2;

    invoke-virtual {p1}, Lq/E;->o()I

    move-result v2

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v2}, Lq/O2;->d(I)V

    goto :goto_af

    :cond_c1
    invoke-virtual {p1, v0}, Lq/E;->e(I)V

    goto/16 :goto_4

    :cond_c6
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v0

    invoke-virtual {p0}, Lq/w1;->P()V

    iget-object v1, p0, Lq/w1;->f:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v0}, Lq/O2;->d(I)V
    :try_end_d4
    .catch Lq/U2; {:try_start_6 .. :try_end_d4} :catch_56
    .catchall {:try_start_6 .. :try_end_d4} :catchall_53

    goto/16 :goto_4

    :goto_d6
    :try_start_d6
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_53

    :goto_db
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_df
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/w1;->O()Lq/x1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/w1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/w1;->S(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/w1;->O()Lq/x1;

    move-result-object v0

    invoke-virtual {v0}, Lq/x1;->h()Z

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

    sget-object v0, Lq/x1;->m:Lq/x1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->c0:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/w1;->O()Lq/x1;

    move-result-object v0

    invoke-virtual {v0}, Lq/x1;->h()Z

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

    invoke-virtual {p0}, Lq/w1;->O()Lq/x1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/x1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/x1;

    invoke-virtual {p0, p1}, Lq/w1;->R(Lq/x1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/w1;->S(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/x1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/x1;

    invoke-virtual {p0, p1}, Lq/w1;->R(Lq/x1;)V

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
