.class public final Lq/j0;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Lq/x0;

.field public j:Lq/q4;

.field public k:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/j0;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/j0;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lq/j0;->k:I

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

    sget-object v0, Lq/F1;->l:Lq/J2;

    const-class v1, Lq/o0;

    const-class v2, Lq/j0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/o0;
    .registers 5

    new-instance v0, Lq/o0;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

    const/4 v1, 0x1

    iput v1, v0, Lq/o0;->i:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/o0;->j:B

    iget v2, p0, Lq/j0;->f:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/j0;->g:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lq/j0;->f:I

    :cond_1e
    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    iput-object v2, v0, Lq/o0;->f:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lq/j0;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/j0;->h:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lq/j0;->f:I

    :cond_36
    iget-object v2, p0, Lq/j0;->h:Ljava/util/List;

    iput-object v2, v0, Lq/o0;->g:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    if-eqz v2, :cond_62

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_52

    iget-object v3, p0, Lq/j0;->j:Lq/q4;

    if-nez v3, :cond_49

    iget-object v3, p0, Lq/j0;->i:Lq/x0;

    goto :goto_4f

    :cond_49
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/x0;

    :goto_4f
    iput-object v3, v0, Lq/o0;->h:Lq/x0;

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5d

    iget v2, p0, Lq/j0;->k:I

    iput v2, v0, Lq/o0;->i:I

    or-int/lit8 v1, v1, 0x2

    :cond_5d
    iget v2, v0, Lq/o0;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/o0;->e:I

    :cond_62
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V(Lq/o0;)Lq/j0;
    .registers 9

    sget-object v0, Lq/o0;->k:Lq/o0;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lq/o0;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lq/o0;->f:Ljava/util/List;

    iput-object v2, p0, Lq/j0;->g:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lq/j0;->f:I

    goto :goto_3c

    :cond_22
    iget v2, p0, Lq/j0;->f:I

    and-int/2addr v2, v0

    if-nez v2, :cond_35

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/j0;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/j0;->g:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    or-int/2addr v2, v0

    iput v2, p0, Lq/j0;->f:I

    :cond_35
    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    iget-object v3, p1, Lq/o0;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3c
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3f
    iget-object v2, p1, Lq/o0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lq/j0;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p1, Lq/o0;->g:Ljava/util/List;

    iput-object v2, p0, Lq/j0;->h:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lq/j0;->f:I

    goto :goto_76

    :cond_5a
    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6f

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/j0;->h:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/j0;->h:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lq/j0;->f:I

    :cond_6f
    iget-object v2, p0, Lq/j0;->h:Ljava/util/List;

    iget-object v3, p1, Lq/o0;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_76
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_79
    invoke-virtual {p1}, Lq/o0;->E()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-virtual {p1}, Lq/o0;->D()Lq/x0;

    move-result-object v2

    iget-object v3, p0, Lq/j0;->j:Lq/q4;

    if-nez v3, :cond_ce

    iget v3, p0, Lq/j0;->f:I

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_cb

    iget-object v4, p0, Lq/j0;->i:Lq/x0;

    if-eqz v4, :cond_cb

    sget-object v5, Lq/x0;->m:Lq/x0;

    if-eq v4, v5, :cond_cb

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lq/j0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v3, p0, Lq/j0;->j:Lq/q4;

    if-nez v3, :cond_bf

    new-instance v4, Lq/q4;

    if-nez v3, :cond_ab

    iget-object v3, p0, Lq/j0;->i:Lq/x0;

    if-nez v3, :cond_a9

    goto :goto_b2

    :cond_a9
    move-object v5, v3

    goto :goto_b2

    :cond_ab
    invoke-virtual {v3}, Lq/q4;->c()Lq/c;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lq/x0;

    :goto_b2
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v6, p0, Lq/t2;->c:Z

    invoke-direct {v4, v5, v3, v6}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v4, p0, Lq/j0;->j:Lq/q4;

    iput-object v1, p0, Lq/j0;->i:Lq/x0;

    :cond_bf
    iget-object v3, p0, Lq/j0;->j:Lq/q4;

    invoke-virtual {v3}, Lq/q4;->b()Lq/a;

    move-result-object v3

    check-cast v3, Lq/q0;

    invoke-virtual {v3, v2}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_d1

    :cond_cb
    iput-object v2, p0, Lq/j0;->i:Lq/x0;

    goto :goto_d1

    :cond_ce
    invoke-virtual {v3, v2}, Lq/q4;->d(Lq/c;)V

    :goto_d1
    iget-object v2, p0, Lq/j0;->i:Lq/x0;

    if-eqz v2, :cond_de

    iget v2, p0, Lq/j0;->f:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lq/j0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_de
    invoke-virtual {p1}, Lq/o0;->F()Z

    move-result v2

    if-eqz v2, :cond_103

    iget v2, p1, Lq/o0;->i:I

    if-eqz v2, :cond_f0

    if-eq v2, v0, :cond_ed

    sget-object v0, Lq/n0;->b:Lq/n0;

    goto :goto_f2

    :cond_ed
    sget-object v1, Lq/n0;->c:Lq/n0;

    goto :goto_f2

    :cond_f0
    sget-object v1, Lq/n0;->b:Lq/n0;

    :goto_f2
    if-nez v1, :cond_f6

    sget-object v1, Lq/n0;->c:Lq/n0;

    :cond_f6
    iget v0, p0, Lq/j0;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/j0;->f:I

    iget v0, v1, Lq/n0;->a:I

    iput v0, p0, Lq/j0;->k:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_103
    invoke-virtual {p0, p1}, Lq/u2;->Q(Lq/w2;)V

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final W(Lq/E;Lq/d2;)V
    .registers 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_ce

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    const/16 v3, 0x12

    if-eq v1, v3, :cond_a1

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-eq v1, v3, :cond_7f

    const/16 v3, 0x192

    if-eq v1, v3, :cond_4d

    const/16 v3, 0x1f3a

    if-eq v1, v3, :cond_2c

    invoke-virtual {p0, p1, p2, v1}, Lq/u2;->R(Lq/E;Lq/d2;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_24
    move v0, v2

    goto :goto_4

    :catchall_26
    move-exception p1

    goto/16 :goto_ca

    :catch_29
    move-exception p1

    goto/16 :goto_c5

    :cond_2c
    sget-object v1, Lq/E1;->n:Lq/z1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/E1;

    iget v3, p0, Lq/j0;->f:I

    and-int/2addr v3, v2

    if-nez v3, :cond_47

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lq/j0;->g:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lq/j0;->g:Ljava/util/List;

    iget v3, p0, Lq/j0;->f:I

    or-int/2addr v2, v3

    iput v2, p0, Lq/j0;->f:I

    :cond_47
    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4d
    iget-object v1, p0, Lq/j0;->j:Lq/q4;

    if-nez v1, :cond_6f

    new-instance v2, Lq/q4;

    if-nez v1, :cond_5c

    iget-object v1, p0, Lq/j0;->i:Lq/x0;

    if-nez v1, :cond_62

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_62

    :cond_5c
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_62
    :goto_62
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/j0;->j:Lq/q4;

    iput-object v4, p0, Lq/j0;->i:Lq/x0;

    :cond_6f
    iget-object v1, p0, Lq/j0;->j:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/j0;->f:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/j0;->f:I

    goto :goto_4

    :cond_7f
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_8d

    if-eq v1, v2, :cond_8a

    sget-object v2, Lq/n0;->b:Lq/n0;

    goto :goto_8f

    :cond_8a
    sget-object v4, Lq/n0;->c:Lq/n0;

    goto :goto_8f

    :cond_8d
    sget-object v4, Lq/n0;->b:Lq/n0;

    :goto_8f
    if-nez v4, :cond_97

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_97
    iput v1, p0, Lq/j0;->k:I

    iget v1, p0, Lq/j0;->f:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/j0;->f:I

    goto/16 :goto_4

    :cond_a1
    sget-object v1, Lq/m0;->l:Lq/k0;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/m0;

    iget v2, p0, Lq/j0;->f:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_be

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/j0;->h:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/j0;->h:Ljava/util/List;

    iget v2, p0, Lq/j0;->f:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lq/j0;->f:I

    :cond_be
    iget-object v2, p0, Lq/j0;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catch Lq/U2; {:try_start_6 .. :try_end_c3} :catch_29
    .catchall {:try_start_6 .. :try_end_c3} :catchall_26

    goto/16 :goto_4

    :goto_c5
    :try_start_c5
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_26

    :goto_ca
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_ce
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/j0;->U()Lq/o0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/j0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/j0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/j0;->U()Lq/o0;

    move-result-object v0

    invoke-virtual {v0}, Lq/o0;->h()Z

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
    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lq/j0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/E1;

    invoke-virtual {v2}, Lq/E1;->h()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    iget v1, p0, Lq/j0;->f:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lq/j0;->j:Lq/q4;

    if-nez v1, :cond_2d

    iget-object v1, p0, Lq/j0;->i:Lq/x0;

    if-nez v1, :cond_33

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_33

    :cond_2d
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_33
    :goto_33
    invoke-virtual {v1}, Lq/x0;->h()Z

    move-result v1

    if-nez v1, :cond_3a

    return v0

    :cond_3a
    invoke-virtual {p0}, Lq/u2;->P()Z

    move-result v1

    if-nez v1, :cond_41

    return v0

    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/o0;->k:Lq/o0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->k:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/j0;->U()Lq/o0;

    move-result-object v0

    invoke-virtual {v0}, Lq/o0;->h()Z

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

    invoke-virtual {p0}, Lq/j0;->U()Lq/o0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/o0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/o0;

    invoke-virtual {p0, p1}, Lq/j0;->V(Lq/o0;)Lq/j0;

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/j0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/o0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/o0;

    invoke-virtual {p0, p1}, Lq/j0;->V(Lq/o0;)Lq/j0;

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
