.class public final Lq/Y0;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lq/x0;

.field public m:Lq/q4;

.field public n:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/Y0;->n:Ljava/util/List;

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

    sget-object v0, Lq/F1;->F:Lq/J2;

    const-class v1, Lq/Z0;

    const-class v2, Lq/Y0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/Z0;
    .registers 5

    new-instance v0, Lq/Z0;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq/Z0;->f:Z

    iput-boolean v1, v0, Lq/Z0;->g:Z

    iput-boolean v1, v0, Lq/Z0;->h:Z

    iput-boolean v1, v0, Lq/Z0;->i:Z

    iput-boolean v1, v0, Lq/Z0;->j:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/Z0;->m:B

    iget v2, p0, Lq/Y0;->f:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_27

    iget-object v2, p0, Lq/Y0;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/Y0;->n:Ljava/util/List;

    iget v2, p0, Lq/Y0;->f:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lq/Y0;->f:I

    :cond_27
    iget-object v2, p0, Lq/Y0;->n:Ljava/util/List;

    iput-object v2, v0, Lq/Z0;->l:Ljava/util/List;

    iget v2, p0, Lq/Y0;->f:I

    if-eqz v2, :cond_7a

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_38

    iget-boolean v1, p0, Lq/Y0;->g:Z

    iput-boolean v1, v0, Lq/Z0;->f:Z

    const/4 v1, 0x1

    :cond_38
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lq/Y0;->h:Z

    iput-boolean v3, v0, Lq/Z0;->g:Z

    or-int/lit8 v1, v1, 0x2

    :cond_42
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Lq/Y0;->i:Z

    iput-boolean v3, v0, Lq/Z0;->h:Z

    or-int/lit8 v1, v1, 0x4

    :cond_4c
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_56

    iget-boolean v3, p0, Lq/Y0;->j:Z

    iput-boolean v3, v0, Lq/Z0;->i:Z

    or-int/lit8 v1, v1, 0x8

    :cond_56
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_60

    iget-boolean v3, p0, Lq/Y0;->k:Z

    iput-boolean v3, v0, Lq/Z0;->j:Z

    or-int/lit8 v1, v1, 0x10

    :cond_60
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_75

    iget-object v2, p0, Lq/Y0;->m:Lq/q4;

    if-nez v2, :cond_6b

    iget-object v2, p0, Lq/Y0;->l:Lq/x0;

    goto :goto_71

    :cond_6b
    invoke-virtual {v2}, Lq/q4;->a()Lq/c;

    move-result-object v2

    check-cast v2, Lq/x0;

    :goto_71
    iput-object v2, v0, Lq/Z0;->k:Lq/x0;

    or-int/lit8 v1, v1, 0x20

    :cond_75
    iget v2, v0, Lq/Z0;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/Z0;->e:I

    :cond_7a
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V(Lq/Z0;)V
    .registers 8

    sget-object v0, Lq/Z0;->n:Lq/Z0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/Z0;->I()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lq/Z0;->f:Z

    iput-boolean v0, p0, Lq/Y0;->g:Z

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/Z0;->J()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p1, Lq/Z0;->g:Z

    iput-boolean v0, p0, Lq/Y0;->h:Z

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    invoke-virtual {p1}, Lq/Z0;->E()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-boolean v0, p1, Lq/Z0;->h:Z

    iput-boolean v0, p0, Lq/Y0;->i:Z

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3e
    invoke-virtual {p1}, Lq/Z0;->H()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p1, Lq/Z0;->i:Z

    iput-boolean v0, p0, Lq/Y0;->j:Z

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_51
    invoke-virtual {p1}, Lq/Z0;->F()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p1, Lq/Z0;->j:Z

    iput-boolean v0, p0, Lq/Y0;->k:Z

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_64
    invoke-virtual {p1}, Lq/Z0;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ca

    invoke-virtual {p1}, Lq/Z0;->D()Lq/x0;

    move-result-object v0

    iget-object v2, p0, Lq/Y0;->m:Lq/q4;

    if-nez v2, :cond_ba

    iget v2, p0, Lq/Y0;->f:I

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_b7

    iget-object v3, p0, Lq/Y0;->l:Lq/x0;

    if-eqz v3, :cond_b7

    sget-object v4, Lq/x0;->m:Lq/x0;

    if-eq v3, v4, :cond_b7

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v2, p0, Lq/Y0;->m:Lq/q4;

    if-nez v2, :cond_ab

    new-instance v3, Lq/q4;

    if-nez v2, :cond_97

    iget-object v2, p0, Lq/Y0;->l:Lq/x0;

    if-nez v2, :cond_95

    goto :goto_9e

    :cond_95
    move-object v4, v2

    goto :goto_9e

    :cond_97
    invoke-virtual {v2}, Lq/q4;->c()Lq/c;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq/x0;

    :goto_9e
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v2

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v4, v2, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/Y0;->m:Lq/q4;

    iput-object v1, p0, Lq/Y0;->l:Lq/x0;

    :cond_ab
    iget-object v1, p0, Lq/Y0;->m:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/q0;

    invoke-virtual {v1, v0}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_bd

    :cond_b7
    iput-object v0, p0, Lq/Y0;->l:Lq/x0;

    goto :goto_bd

    :cond_ba
    invoke-virtual {v2, v0}, Lq/q4;->d(Lq/c;)V

    :goto_bd
    iget-object v0, p0, Lq/Y0;->l:Lq/x0;

    if-eqz v0, :cond_ca

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/Y0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_ca
    iget-object v0, p1, Lq/Z0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lq/Y0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p1, Lq/Z0;->l:Ljava/util/List;

    iput-object v0, p0, Lq/Y0;->n:Ljava/util/List;

    iget v0, p0, Lq/Y0;->f:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lq/Y0;->f:I

    goto :goto_101

    :cond_e5
    iget v0, p0, Lq/Y0;->f:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_fa

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/Y0;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/Y0;->n:Ljava/util/List;

    iget v0, p0, Lq/Y0;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lq/Y0;->f:I

    :cond_fa
    iget-object v0, p0, Lq/Y0;->n:Ljava/util/List;

    iget-object v1, p1, Lq/Z0;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_101
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_104
    invoke-virtual {p0, p1}, Lq/u2;->Q(Lq/w2;)V

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final W(Lq/E;Lq/d2;)V
    .registers 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_da

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    const/16 v3, 0x8

    if-eq v1, v3, :cond_c4

    const/16 v4, 0x10

    if-eq v1, v4, :cond_b6

    const/16 v5, 0x18

    if-eq v1, v5, :cond_a8

    const/16 v5, 0x38

    if-eq v1, v5, :cond_9b

    const/16 v3, 0x58

    if-eq v1, v3, :cond_8e

    const/16 v3, 0x62

    if-eq v1, v3, :cond_5a

    const/16 v3, 0x1f3a

    if-eq v1, v3, :cond_37

    invoke-virtual {p0, p1, p2, v1}, Lq/u2;->R(Lq/E;Lq/d2;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2f
    move v0, v2

    goto :goto_4

    :catchall_31
    move-exception p1

    goto/16 :goto_d6

    :catch_34
    move-exception p1

    goto/16 :goto_d1

    :cond_37
    sget-object v1, Lq/E1;->n:Lq/z1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/E1;

    iget v2, p0, Lq/Y0;->f:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_54

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/Y0;->n:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/Y0;->n:Ljava/util/List;

    iget v2, p0, Lq/Y0;->f:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lq/Y0;->f:I

    :cond_54
    iget-object v2, p0, Lq/Y0;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5a
    iget-object v1, p0, Lq/Y0;->m:Lq/q4;

    if-nez v1, :cond_7d

    new-instance v2, Lq/q4;

    if-nez v1, :cond_69

    iget-object v1, p0, Lq/Y0;->l:Lq/x0;

    if-nez v1, :cond_6f

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_6f

    :cond_69
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_6f
    :goto_6f
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v4, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v4}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/Y0;->m:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/Y0;->l:Lq/x0;

    :cond_7d
    iget-object v1, p0, Lq/Y0;->m:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/Y0;->f:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lq/Y0;->f:I

    goto/16 :goto_4

    :cond_8e
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/Y0;->k:Z

    iget v1, p0, Lq/Y0;->f:I

    or-int/2addr v1, v4

    iput v1, p0, Lq/Y0;->f:I

    goto/16 :goto_4

    :cond_9b
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/Y0;->j:Z

    iget v1, p0, Lq/Y0;->f:I

    or-int/2addr v1, v3

    iput v1, p0, Lq/Y0;->f:I

    goto/16 :goto_4

    :cond_a8
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/Y0;->i:Z

    iget v1, p0, Lq/Y0;->f:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/Y0;->f:I

    goto/16 :goto_4

    :cond_b6
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/Y0;->h:Z

    iget v1, p0, Lq/Y0;->f:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/Y0;->f:I

    goto/16 :goto_4

    :cond_c4
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/Y0;->g:Z

    iget v1, p0, Lq/Y0;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/Y0;->f:I
    :try_end_cf
    .catch Lq/U2; {:try_start_6 .. :try_end_cf} :catch_34
    .catchall {:try_start_6 .. :try_end_cf} :catchall_31

    goto/16 :goto_4

    :goto_d1
    :try_start_d1
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_31

    :goto_d6
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_da
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/Y0;->U()Lq/Z0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/Y0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/Y0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/Y0;->U()Lq/Z0;

    move-result-object v0

    invoke-virtual {v0}, Lq/Z0;->h()Z

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

    iget v0, p0, Lq/Y0;->f:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/Y0;->m:Lq/q4;

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/Y0;->l:Lq/x0;

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
    iget-object v2, p0, Lq/Y0;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    iget-object v2, p0, Lq/Y0;->n:Ljava/util/List;

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

    sget-object v0, Lq/Z0;->n:Lq/Z0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->E:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/Y0;->U()Lq/Z0;

    move-result-object v0

    invoke-virtual {v0}, Lq/Z0;->h()Z

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

    invoke-virtual {p0}, Lq/Y0;->U()Lq/Z0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/Z0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/Z0;

    invoke-virtual {p0, p1}, Lq/Y0;->V(Lq/Z0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/Y0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/Z0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/Z0;

    invoke-virtual {p0, p1}, Lq/Y0;->V(Lq/Z0;)V

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
