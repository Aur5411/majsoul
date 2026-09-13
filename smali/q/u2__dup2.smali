.class public abstract Lq/u2;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:Lq/e2;


# virtual methods
.method public final O(Lq/R1;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, p1}, Lq/u2;->T(Lq/R1;)V

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-nez v0, :cond_24

    sget-object v0, Lq/g2;->d:Lq/g2;

    new-instance v0, Lq/e2;

    new-instance v1, Lq/D4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/e2;->c:Z

    iput-object v0, p0, Lq/u2;->e:Lq/e2;

    :cond_24
    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    invoke-virtual {v0, p1, p2}, Lq/e2;->a(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    :cond_2d
    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-void
.end method

.method public final P()Z
    .registers 2

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lq/e2;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final Q(Lq/w2;)V
    .registers 5

    iget-object v0, p1, Lq/w2;->d:Lq/g2;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-nez v0, :cond_1d

    sget-object v0, Lq/g2;->d:Lq/g2;

    new-instance v0, Lq/e2;

    new-instance v1, Lq/D4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/e2;->c:Z

    iput-object v0, p0, Lq/u2;->e:Lq/e2;

    :cond_1d
    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0, p1}, Lq/e2;->h(Lq/g2;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_27
    return-void
.end method

.method public final R(Lq/E;Lq/d2;I)Z
    .registers 12

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-nez v0, :cond_19

    sget-object v0, Lq/g2;->d:Lq/g2;

    new-instance v0, Lq/e2;

    new-instance v1, Lq/D4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/e2;->c:Z

    iput-object v0, p0, Lq/u2;->e:Lq/e2;

    :cond_19
    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {p0}, Lq/a;->k()Lq/G1;

    move-result-object v5

    new-instance v6, Lq/s2;

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    const/4 v1, 0x3

    invoke-direct {v6, v1, v0}, Lq/s2;-><init>(ILjava/lang/Object;)V

    move-object v2, p1

    move-object v4, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lq/k3;->j(Lq/E;Lq/S4;Lq/d2;Lq/G1;Lq/U3;I)Z

    move-result p1

    return p1
.end method

.method public final S(Lq/R1;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, p1}, Lq/u2;->T(Lq/R1;)V

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-nez v0, :cond_24

    sget-object v0, Lq/g2;->d:Lq/g2;

    new-instance v0, Lq/e2;

    new-instance v1, Lq/D4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/e2;->c:Z

    iput-object v0, p0, Lq/u2;->e:Lq/e2;

    :cond_24
    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    invoke-virtual {v0, p1, p2}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    :cond_2d
    invoke-virtual {p0, p1, p2}, Lq/t2;->N(Lq/R1;Ljava/lang/Object;)V

    return-void
.end method

.method public final T(Lq/R1;)V
    .registers 3

    iget-object p1, p1, Lq/R1;->h:Lq/G1;

    invoke-virtual {p0}, Lq/a;->k()Lq/G1;

    move-result-object v0

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lq/R1;)Z
    .registers 3

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1}, Lq/u2;->T(Lq/R1;)V

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lq/e2;->f(Lq/R1;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1

    :cond_19
    invoke-super {p0, p1}, Lq/t2;->g(Lq/R1;)Z

    move-result p1

    return p1
.end method

.method public final l()Ljava/util/Map;
    .registers 3

    invoke-virtual {p0}, Lq/t2;->G()Ljava/util/TreeMap;

    move-result-object v0

    iget-object v1, p0, Lq/u2;->e:Lq/e2;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lq/e2;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lq/R1;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0, p1}, Lq/u2;->T(Lq/R1;)V

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_1c

    :cond_11
    iget-object v0, v0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lq/e2;->j(Lq/f2;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_34

    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_2f

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object p1

    invoke-static {p1}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object p1

    return-object p1

    :cond_2f
    invoke-virtual {p1}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    return-object v0

    :cond_35
    invoke-super {p0, p1}, Lq/t2;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lq/R1;)Lq/a;
    .registers 5

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0, p1}, Lq/u2;->T(Lq/R1;)V

    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    if-nez v0, :cond_2c

    sget-object v0, Lq/g2;->d:Lq/g2;

    new-instance v0, Lq/e2;

    new-instance v1, Lq/D4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/e2;->c:Z

    iput-object v0, p0, Lq/u2;->e:Lq/e2;

    :cond_2c
    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    iget-object v0, v0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_48

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object v0

    new-instance v1, Lq/Y1;

    invoke-direct {v1, v0}, Lq/Y1;-><init>(Lq/G1;)V

    iget-object v0, p0, Lq/u2;->e:Lq/e2;

    invoke-virtual {v0, p1, v1}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object v1

    :cond_48
    instance-of v1, v0, Lq/a;

    if-eqz v1, :cond_4f

    check-cast v0, Lq/a;

    return-object v0

    :cond_4f
    instance-of v1, v0, Lq/c;

    if-eqz v1, :cond_62

    check-cast v0, Lq/c;

    invoke-virtual {v0}, Lq/c;->r()Lq/a;

    move-result-object v0

    iget-object v1, p0, Lq/u2;->e:Lq/e2;

    invoke-virtual {v1, p1, v0}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object v0

    :cond_62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    invoke-super {p0, p1}, Lq/t2;->q(Lq/R1;)Lq/a;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lq/R1;)Lq/a;
    .registers 3

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object p1

    new-instance v0, Lq/Y1;

    invoke-direct {v0, p1}, Lq/Y1;-><init>(Lq/G1;)V

    return-object v0

    :cond_12
    invoke-super {p0, p1}, Lq/t2;->z(Lq/R1;)Lq/a;

    move-result-object p1

    return-object p1
.end method
