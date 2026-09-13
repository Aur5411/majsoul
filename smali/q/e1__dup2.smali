.class public final Lq/e1;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:Z

.field public h:I

.field public i:Lq/x0;

.field public j:Lq/q4;

.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const/4 v0, 0x0

    iput v0, p0, Lq/e1;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/e1;->k:Ljava/util/List;

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

    sget-object v0, Lq/F1;->T:Lq/J2;

    const-class v1, Lq/g1;

    const-class v2, Lq/e1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/g1;
    .registers 5

    new-instance v0, Lq/g1;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq/g1;->f:Z

    iput v1, v0, Lq/g1;->g:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/g1;->j:B

    iget v2, p0, Lq/e1;->f:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_21

    iget-object v2, p0, Lq/e1;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/e1;->k:Ljava/util/List;

    iget v2, p0, Lq/e1;->f:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lq/e1;->f:I

    :cond_21
    iget-object v2, p0, Lq/e1;->k:Ljava/util/List;

    iput-object v2, v0, Lq/g1;->i:Ljava/util/List;

    iget v2, p0, Lq/e1;->f:I

    if-eqz v2, :cond_56

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_32

    iget-boolean v1, p0, Lq/e1;->g:Z

    iput-boolean v1, v0, Lq/g1;->f:Z

    const/4 v1, 0x1

    :cond_32
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3c

    iget v3, p0, Lq/e1;->h:I

    iput v3, v0, Lq/g1;->g:I

    or-int/lit8 v1, v1, 0x2

    :cond_3c
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_51

    iget-object v2, p0, Lq/e1;->j:Lq/q4;

    if-nez v2, :cond_47

    iget-object v2, p0, Lq/e1;->i:Lq/x0;

    goto :goto_4d

    :cond_47
    invoke-virtual {v2}, Lq/q4;->a()Lq/c;

    move-result-object v2

    check-cast v2, Lq/x0;

    :goto_4d
    iput-object v2, v0, Lq/g1;->h:Lq/x0;

    or-int/lit8 v1, v1, 0x4

    :cond_51
    iget v2, v0, Lq/g1;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/g1;->e:I

    :cond_56
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V(Lq/g1;)V
    .registers 8

    sget-object v0, Lq/g1;->k:Lq/g1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/g1;->E()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lq/g1;->f:Z

    iput-boolean v0, p0, Lq/e1;->g:Z

    iget v0, p0, Lq/e1;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/e1;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/g1;->G()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    iget v0, p1, Lq/g1;->g:I

    const/4 v3, 0x2

    if-eqz v0, :cond_32

    if-eq v0, v1, :cond_2f

    if-eq v0, v3, :cond_2c

    sget-object v0, Lq/f1;->b:Lq/f1;

    move-object v0, v2

    goto :goto_34

    :cond_2c
    sget-object v0, Lq/f1;->d:Lq/f1;

    goto :goto_34

    :cond_2f
    sget-object v0, Lq/f1;->c:Lq/f1;

    goto :goto_34

    :cond_32
    sget-object v0, Lq/f1;->b:Lq/f1;

    :goto_34
    if-nez v0, :cond_38

    sget-object v0, Lq/f1;->b:Lq/f1;

    :cond_38
    iget v1, p0, Lq/e1;->f:I

    or-int/2addr v1, v3

    iput v1, p0, Lq/e1;->f:I

    iget v0, v0, Lq/f1;->a:I

    iput v0, p0, Lq/e1;->h:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_44
    invoke-virtual {p1}, Lq/g1;->F()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p1}, Lq/g1;->D()Lq/x0;

    move-result-object v0

    iget-object v1, p0, Lq/e1;->j:Lq/q4;

    if-nez v1, :cond_99

    iget v1, p0, Lq/e1;->f:I

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_96

    iget-object v3, p0, Lq/e1;->i:Lq/x0;

    if-eqz v3, :cond_96

    sget-object v4, Lq/x0;->m:Lq/x0;

    if-eq v3, v4, :cond_96

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/e1;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/e1;->j:Lq/q4;

    if-nez v1, :cond_8a

    new-instance v3, Lq/q4;

    if-nez v1, :cond_76

    iget-object v1, p0, Lq/e1;->i:Lq/x0;

    if-nez v1, :cond_74

    goto :goto_7d

    :cond_74
    move-object v4, v1

    goto :goto_7d

    :cond_76
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lq/x0;

    :goto_7d
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v4, v1, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/e1;->j:Lq/q4;

    iput-object v2, p0, Lq/e1;->i:Lq/x0;

    :cond_8a
    iget-object v1, p0, Lq/e1;->j:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/q0;

    invoke-virtual {v1, v0}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_9c

    :cond_96
    iput-object v0, p0, Lq/e1;->i:Lq/x0;

    goto :goto_9c

    :cond_99
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_9c
    iget-object v0, p0, Lq/e1;->i:Lq/x0;

    if-eqz v0, :cond_a9

    iget v0, p0, Lq/e1;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/e1;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_a9
    iget-object v0, p1, Lq/g1;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    iget-object v0, p0, Lq/e1;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p1, Lq/g1;->i:Ljava/util/List;

    iput-object v0, p0, Lq/e1;->k:Ljava/util/List;

    iget v0, p0, Lq/e1;->f:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lq/e1;->f:I

    goto :goto_e0

    :cond_c4
    iget v0, p0, Lq/e1;->f:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/e1;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/e1;->k:Ljava/util/List;

    iget v0, p0, Lq/e1;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/e1;->f:I

    :cond_d9
    iget-object v0, p0, Lq/e1;->k:Ljava/util/List;

    iget-object v1, p1, Lq/g1;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_e0
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_e3
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
    if-nez v0, :cond_bf

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    const/16 v3, 0x108

    if-eq v1, v3, :cond_a9

    const/16 v3, 0x110

    const/4 v4, 0x0

    if-eq v1, v3, :cond_81

    const/16 v3, 0x11a

    if-eq v1, v3, :cond_4f

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

    goto/16 :goto_bb

    :catch_29
    move-exception p1

    goto/16 :goto_b6

    :cond_2c
    sget-object v1, Lq/E1;->n:Lq/z1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/E1;

    iget v2, p0, Lq/e1;->f:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_49

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/e1;->k:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/e1;->k:Ljava/util/List;

    iget v2, p0, Lq/e1;->f:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lq/e1;->f:I

    :cond_49
    iget-object v2, p0, Lq/e1;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4f
    iget-object v1, p0, Lq/e1;->j:Lq/q4;

    if-nez v1, :cond_71

    new-instance v2, Lq/q4;

    if-nez v1, :cond_5e

    iget-object v1, p0, Lq/e1;->i:Lq/x0;

    if-nez v1, :cond_64

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_64

    :cond_5e
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_64
    :goto_64
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v3

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v3, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/e1;->j:Lq/q4;

    iput-object v4, p0, Lq/e1;->i:Lq/x0;

    :cond_71
    iget-object v1, p0, Lq/e1;->j:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/e1;->f:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/e1;->f:I

    goto :goto_4

    :cond_81
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_95

    if-eq v1, v2, :cond_92

    if-eq v1, v3, :cond_8f

    sget-object v2, Lq/f1;->b:Lq/f1;

    goto :goto_97

    :cond_8f
    sget-object v4, Lq/f1;->d:Lq/f1;

    goto :goto_97

    :cond_92
    sget-object v4, Lq/f1;->c:Lq/f1;

    goto :goto_97

    :cond_95
    sget-object v4, Lq/f1;->b:Lq/f1;

    :goto_97
    if-nez v4, :cond_a0

    const/16 v2, 0x22

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_a0
    iput v1, p0, Lq/e1;->h:I

    iget v1, p0, Lq/e1;->f:I

    or-int/2addr v1, v3

    iput v1, p0, Lq/e1;->f:I

    goto/16 :goto_4

    :cond_a9
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/e1;->g:Z

    iget v1, p0, Lq/e1;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/e1;->f:I
    :try_end_b4
    .catch Lq/U2; {:try_start_6 .. :try_end_b4} :catch_29
    .catchall {:try_start_6 .. :try_end_b4} :catchall_26

    goto/16 :goto_4

    :goto_b6
    :try_start_b6
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_26

    :goto_bb
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_bf
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/e1;->U()Lq/g1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/e1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/e1;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/e1;->U()Lq/g1;

    move-result-object v0

    invoke-virtual {v0}, Lq/g1;->h()Z

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

    iget v0, p0, Lq/e1;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/e1;->j:Lq/q4;

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/e1;->i:Lq/x0;

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
    iget-object v2, p0, Lq/e1;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    iget-object v2, p0, Lq/e1;->k:Ljava/util/List;

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

    sget-object v0, Lq/g1;->k:Lq/g1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->S:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/e1;->U()Lq/g1;

    move-result-object v0

    invoke-virtual {v0}, Lq/g1;->h()Z

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

    invoke-virtual {p0}, Lq/e1;->U()Lq/g1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/g1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/g1;

    invoke-virtual {p0, p1}, Lq/e1;->V(Lq/g1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/e1;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/g1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/g1;

    invoke-virtual {p0, p1}, Lq/e1;->V(Lq/g1;)V

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
