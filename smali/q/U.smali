.class public final Lq/U;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/Serializable;

.field public g:Ljava/util/List;

.field public h:Lq/b0;

.field public i:Lq/q4;

.field public j:Ljava/util/List;

.field public k:Lq/b3;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/U;->f:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/U;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/U;->j:Ljava/util/List;

    sget-object v0, Lq/b3;->c:Lq/b3;

    iput-object v0, p0, Lq/U;->k:Lq/b3;

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

    sget-object v0, Lq/F1;->t:Lq/J2;

    const-class v1, Lq/Y;

    const-class v2, Lq/U;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/Y;
    .registers 5

    new-instance v0, Lq/Y;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/Y;->e:Ljava/io/Serializable;

    sget-object v1, Lq/b3;->c:Lq/b3;

    iput-object v1, v0, Lq/Y;->i:Lq/b3;

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/Y;->j:B

    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    iget-object v1, p0, Lq/U;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/U;->g:Ljava/util/List;

    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lq/U;->e:I

    :cond_24
    iget-object v1, p0, Lq/U;->g:Ljava/util/List;

    iput-object v1, v0, Lq/Y;->f:Ljava/util/List;

    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lq/U;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/U;->j:Ljava/util/List;

    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lq/U;->e:I

    :cond_3c
    iget-object v1, p0, Lq/U;->j:Ljava/util/List;

    iput-object v1, v0, Lq/Y;->h:Ljava/util/List;

    iget v1, p0, Lq/U;->e:I

    if-eqz v1, :cond_76

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lq/U;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/Y;->e:Ljava/io/Serializable;

    const/4 v2, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_64

    iget-object v3, p0, Lq/U;->i:Lq/q4;

    if-nez v3, :cond_5a

    iget-object v3, p0, Lq/U;->h:Lq/b0;

    goto :goto_60

    :cond_5a
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/b0;

    :goto_60
    iput-object v3, v0, Lq/Y;->g:Lq/b0;

    or-int/lit8 v2, v2, 0x2

    :cond_64
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_71

    iget-object v1, p0, Lq/U;->k:Lq/b3;

    invoke-virtual {v1}, Lq/e;->c()V

    iget-object v1, p0, Lq/U;->k:Lq/b3;

    iput-object v1, v0, Lq/Y;->i:Lq/b3;

    :cond_71
    iget v1, v0, Lq/Y;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/Y;->d:I

    :cond_76
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/E;Lq/d2;)Lq/U;
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_e3

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    const/16 v3, 0xa

    if-eq v1, v3, :cond_cd

    const/16 v3, 0x12

    if-eq v1, v3, :cond_a9

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_75

    const/16 v3, 0x22

    if-eq v1, v3, :cond_52

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2d

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2b
    move v0, v2

    goto :goto_4

    :cond_2d
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iget-object v2, p0, Lq/U;->k:Lq/b3;

    iget-boolean v2, v2, Lq/e;->a:Z

    if-nez v2, :cond_40

    new-instance v2, Lq/b3;

    iget-object v3, p0, Lq/U;->k:Lq/b3;

    invoke-direct {v2, v3}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v2, p0, Lq/U;->k:Lq/b3;

    :cond_40
    iget v2, p0, Lq/U;->e:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lq/U;->e:I

    iget-object v2, p0, Lq/U;->k:Lq/b3;

    invoke-virtual {v2, v1}, Lq/b3;->d(Lq/B;)V

    goto :goto_4

    :catchall_4c
    move-exception p1

    goto/16 :goto_df

    :catch_4f
    move-exception p1

    goto/16 :goto_da

    :cond_52
    sget-object v1, Lq/X;->i:Lq/V;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/X;

    iget v2, p0, Lq/U;->e:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_6f

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/U;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/U;->j:Ljava/util/List;

    iget v2, p0, Lq/U;->e:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lq/U;->e:I

    :cond_6f
    iget-object v2, p0, Lq/U;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_75
    iget-object v1, p0, Lq/U;->i:Lq/q4;

    if-nez v1, :cond_98

    new-instance v2, Lq/q4;

    if-nez v1, :cond_84

    iget-object v1, p0, Lq/U;->h:Lq/b0;

    if-nez v1, :cond_8a

    sget-object v1, Lq/b0;->l:Lq/b0;

    goto :goto_8a

    :cond_84
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/b0;

    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/U;->i:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/U;->h:Lq/b0;

    :cond_98
    iget-object v1, p0, Lq/U;->i:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/U;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/U;->e:I

    goto/16 :goto_4

    :cond_a9
    sget-object v1, Lq/e0;->j:Lq/c0;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/e0;

    iget v2, p0, Lq/U;->e:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/U;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/U;->g:Ljava/util/List;

    iget v2, p0, Lq/U;->e:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lq/U;->e:I

    :cond_c6
    iget-object v2, p0, Lq/U;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_cd
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U;->f:Ljava/io/Serializable;

    iget v1, p0, Lq/U;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/U;->e:I
    :try_end_d8
    .catch Lq/U2; {:try_start_6 .. :try_end_d8} :catch_4f
    .catchall {:try_start_6 .. :try_end_d8} :catchall_4c

    goto/16 :goto_4

    :goto_da
    :try_start_da
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_4c

    :goto_df
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_e3
    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final Q(Lq/Y;)V
    .registers 8

    sget-object v0, Lq/Y;->k:Lq/Y;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/Y;->E()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/Y;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U;->f:Ljava/io/Serializable;

    iget v0, p0, Lq/U;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/U;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    const/4 v0, 0x0

    iget-object v1, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lq/U;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p1, Lq/Y;->f:Ljava/util/List;

    iput-object v1, p0, Lq/U;->g:Ljava/util/List;

    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lq/U;->e:I

    goto :goto_50

    :cond_34
    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_49

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/U;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lq/U;->g:Ljava/util/List;

    iget v1, p0, Lq/U;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/U;->e:I

    :cond_49
    iget-object v1, p0, Lq/U;->g:Ljava/util/List;

    iget-object v2, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_50
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_53
    invoke-virtual {p1}, Lq/Y;->F()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {p1}, Lq/Y;->D()Lq/b0;

    move-result-object v1

    iget-object v2, p0, Lq/U;->i:Lq/q4;

    if-nez v2, :cond_a8

    iget v2, p0, Lq/U;->e:I

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lq/U;->h:Lq/b0;

    if-eqz v3, :cond_a5

    sget-object v4, Lq/b0;->l:Lq/b0;

    if-eq v3, v4, :cond_a5

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lq/U;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v2, p0, Lq/U;->i:Lq/q4;

    if-nez v2, :cond_99

    new-instance v3, Lq/q4;

    if-nez v2, :cond_85

    iget-object v2, p0, Lq/U;->h:Lq/b0;

    if-nez v2, :cond_83

    goto :goto_8c

    :cond_83
    move-object v4, v2

    goto :goto_8c

    :cond_85
    invoke-virtual {v2}, Lq/q4;->c()Lq/c;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq/b0;

    :goto_8c
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v2

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v4, v2, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/U;->i:Lq/q4;

    iput-object v0, p0, Lq/U;->h:Lq/b0;

    :cond_99
    iget-object v0, p0, Lq/U;->i:Lq/q4;

    invoke-virtual {v0}, Lq/q4;->b()Lq/a;

    move-result-object v0

    check-cast v0, Lq/a0;

    invoke-virtual {v0, v1}, Lq/a0;->W(Lq/b0;)V

    goto :goto_ab

    :cond_a5
    iput-object v1, p0, Lq/U;->h:Lq/b0;

    goto :goto_ab

    :cond_a8
    invoke-virtual {v2, v1}, Lq/q4;->d(Lq/c;)V

    :goto_ab
    iget-object v0, p0, Lq/U;->h:Lq/b0;

    if-eqz v0, :cond_b8

    iget v0, p0, Lq/U;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/U;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_b8
    iget-object v0, p1, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lq/U;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p1, Lq/Y;->h:Ljava/util/List;

    iput-object v0, p0, Lq/U;->j:Ljava/util/List;

    iget v0, p0, Lq/U;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lq/U;->e:I

    goto :goto_ef

    :cond_d3
    iget v0, p0, Lq/U;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_e8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/U;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/U;->j:Ljava/util/List;

    iget v0, p0, Lq/U;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/U;->e:I

    :cond_e8
    iget-object v0, p0, Lq/U;->j:Ljava/util/List;

    iget-object v1, p1, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_ef
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_f2
    iget-object v0, p1, Lq/Y;->i:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12c

    iget-object v0, p0, Lq/U;->k:Lq/b3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10d

    iget-object v0, p1, Lq/Y;->i:Lq/b3;

    iput-object v0, p0, Lq/U;->k:Lq/b3;

    iget v0, p0, Lq/U;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/U;->e:I

    goto :goto_129

    :cond_10d
    iget-object v0, p0, Lq/U;->k:Lq/b3;

    iget-boolean v0, v0, Lq/e;->a:Z

    if-nez v0, :cond_11c

    new-instance v0, Lq/b3;

    iget-object v1, p0, Lq/U;->k:Lq/b3;

    invoke-direct {v0, v1}, Lq/b3;-><init>(Lq/c3;)V

    iput-object v0, p0, Lq/U;->k:Lq/b3;

    :cond_11c
    iget v0, p0, Lq/U;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/U;->e:I

    iget-object v0, p0, Lq/U;->k:Lq/b3;

    iget-object v1, p1, Lq/Y;->i:Lq/b3;

    invoke-virtual {v0, v1}, Lq/b3;->addAll(Ljava/util/Collection;)Z

    :goto_129
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_12c
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/U;->O()Lq/Y;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/U;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/U;->P(Lq/E;Lq/d2;)Lq/U;

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/U;->O()Lq/Y;

    move-result-object v0

    invoke-virtual {v0}, Lq/Y;->h()Z

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
    iget-object v2, p0, Lq/U;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lq/U;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/e0;

    invoke-virtual {v2}, Lq/e0;->h()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    iget v1, p0, Lq/U;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lq/U;->i:Lq/q4;

    if-nez v1, :cond_2d

    iget-object v1, p0, Lq/U;->h:Lq/b0;

    if-nez v1, :cond_33

    sget-object v1, Lq/b0;->l:Lq/b0;

    goto :goto_33

    :cond_2d
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/b0;

    :cond_33
    :goto_33
    invoke-virtual {v1}, Lq/b0;->h()Z

    move-result v1

    if-nez v1, :cond_3a

    return v0

    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/Y;->k:Lq/Y;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->s:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/U;->O()Lq/Y;

    move-result-object v0

    invoke-virtual {v0}, Lq/Y;->h()Z

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

    invoke-virtual {p0}, Lq/U;->O()Lq/Y;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/Y;

    if-eqz v0, :cond_a

    check-cast p1, Lq/Y;

    invoke-virtual {p0, p1}, Lq/U;->Q(Lq/Y;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/U;->P(Lq/E;Lq/d2;)Lq/U;

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/Y;

    if-eqz v0, :cond_a

    check-cast p1, Lq/Y;

    invoke-virtual {p0, p1}, Lq/U;->Q(Lq/Y;)V

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
