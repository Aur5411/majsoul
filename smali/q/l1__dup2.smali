.class public final Lq/l1;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:Lq/x0;

.field public h:Lq/q4;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/l1;->i:Ljava/util/List;

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

    sget-object v0, Lq/F1;->L:Lq/J2;

    const-class v1, Lq/m1;

    const-class v2, Lq/l1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/m1;
    .registers 4

    new-instance v0, Lq/m1;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/m1;->h:B

    iget v1, p0, Lq/l1;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lq/l1;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/l1;->i:Ljava/util/List;

    iget v1, p0, Lq/l1;->f:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lq/l1;->f:I

    :cond_1c
    iget-object v1, p0, Lq/l1;->i:Ljava/util/List;

    iput-object v1, v0, Lq/m1;->g:Ljava/util/List;

    iget v1, p0, Lq/l1;->f:I

    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_38

    iget-object v1, p0, Lq/l1;->h:Lq/q4;

    if-nez v1, :cond_2f

    iget-object v1, p0, Lq/l1;->g:Lq/x0;

    goto :goto_35

    :cond_2f
    invoke-virtual {v1}, Lq/q4;->a()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :goto_35
    iput-object v1, v0, Lq/m1;->f:Lq/x0;

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    iget v1, v0, Lq/m1;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/m1;->e:I

    :cond_3e
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V(Lq/m1;)V
    .registers 8

    sget-object v0, Lq/m1;->i:Lq/m1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/m1;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lq/m1;->D()Lq/x0;

    move-result-object v0

    iget-object v2, p0, Lq/l1;->h:Lq/q4;

    if-nez v2, :cond_5b

    iget v2, p0, Lq/l1;->f:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_58

    iget-object v3, p0, Lq/l1;->g:Lq/x0;

    if-eqz v3, :cond_58

    sget-object v4, Lq/x0;->m:Lq/x0;

    if-eq v3, v4, :cond_58

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lq/l1;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v2, p0, Lq/l1;->h:Lq/q4;

    if-nez v2, :cond_4c

    new-instance v3, Lq/q4;

    if-nez v2, :cond_38

    iget-object v2, p0, Lq/l1;->g:Lq/x0;

    if-nez v2, :cond_36

    goto :goto_3f

    :cond_36
    move-object v4, v2

    goto :goto_3f

    :cond_38
    invoke-virtual {v2}, Lq/q4;->c()Lq/c;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq/x0;

    :goto_3f
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v2

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v4, v2, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/l1;->h:Lq/q4;

    iput-object v1, p0, Lq/l1;->g:Lq/x0;

    :cond_4c
    iget-object v1, p0, Lq/l1;->h:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/q0;

    invoke-virtual {v1, v0}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_5e

    :cond_58
    iput-object v0, p0, Lq/l1;->g:Lq/x0;

    goto :goto_5e

    :cond_5b
    invoke-virtual {v2, v0}, Lq/q4;->d(Lq/c;)V

    :goto_5e
    iget-object v0, p0, Lq/l1;->g:Lq/x0;

    if-eqz v0, :cond_6b

    iget v0, p0, Lq/l1;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/l1;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_6b
    iget-object v0, p1, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lq/l1;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p1, Lq/m1;->g:Ljava/util/List;

    iput-object v0, p0, Lq/l1;->i:Ljava/util/List;

    iget v0, p0, Lq/l1;->f:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lq/l1;->f:I

    goto :goto_a2

    :cond_86
    iget v0, p0, Lq/l1;->f:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/l1;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/l1;->i:Ljava/util/List;

    iget v0, p0, Lq/l1;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/l1;->f:I

    :cond_9b
    iget-object v0, p0, Lq/l1;->i:Ljava/util/List;

    iget-object v1, p1, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_a2
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_a5
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
    if-nez v0, :cond_7f

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    const/16 v3, 0xa

    if-eq v1, v3, :cond_44

    const/16 v3, 0x1f3a

    if-eq v1, v3, :cond_21

    invoke-virtual {p0, p1, p2, v1}, Lq/u2;->R(Lq/E;Lq/d2;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1b
    move v0, v2

    goto :goto_4

    :catchall_1d
    move-exception p1

    goto :goto_7b

    :catch_1f
    move-exception p1

    goto :goto_76

    :cond_21
    sget-object v1, Lq/E1;->n:Lq/z1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/E1;

    iget v2, p0, Lq/l1;->f:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3e

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/l1;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/l1;->i:Ljava/util/List;

    iget v2, p0, Lq/l1;->f:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lq/l1;->f:I

    :cond_3e
    iget-object v2, p0, Lq/l1;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_44
    iget-object v1, p0, Lq/l1;->h:Lq/q4;

    if-nez v1, :cond_67

    new-instance v3, Lq/q4;

    if-nez v1, :cond_53

    iget-object v1, p0, Lq/l1;->g:Lq/x0;

    if-nez v1, :cond_59

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_59

    :cond_53
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v4

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v3, v1, v4, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v3, p0, Lq/l1;->h:Lq/q4;

    const/4 v1, 0x0

    iput-object v1, p0, Lq/l1;->g:Lq/x0;

    :cond_67
    iget-object v1, p0, Lq/l1;->h:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/l1;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/l1;->f:I
    :try_end_75
    .catch Lq/U2; {:try_start_6 .. :try_end_75} :catch_1f
    .catchall {:try_start_6 .. :try_end_75} :catchall_1d

    goto :goto_4

    :goto_76
    :try_start_76
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_1d

    :goto_7b
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_7f
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/l1;->U()Lq/m1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/l1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/l1;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/l1;->U()Lq/m1;

    move-result-object v0

    invoke-virtual {v0}, Lq/m1;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final h()Z
    .registers 5

    iget v0, p0, Lq/l1;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/l1;->h:Lq/q4;

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/l1;->g:Lq/x0;

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

    return v2

    :cond_1f
    move v0, v2

    :goto_20
    iget-object v3, p0, Lq/l1;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lq/l1;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/E1;

    invoke-virtual {v3}, Lq/E1;->h()Z

    move-result v3

    if-nez v3, :cond_37

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3a
    invoke-virtual {p0}, Lq/u2;->P()Z

    move-result v0

    if-nez v0, :cond_41

    return v2

    :cond_41
    return v1
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/m1;->i:Lq/m1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->K:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/l1;->U()Lq/m1;

    move-result-object v0

    invoke-virtual {v0}, Lq/m1;->h()Z

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

    invoke-virtual {p0}, Lq/l1;->U()Lq/m1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/m1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/m1;

    invoke-virtual {p0, p1}, Lq/l1;->V(Lq/m1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/l1;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/m1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/m1;

    invoke-virtual {p0, p1}, Lq/l1;->V(Lq/m1;)V

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
