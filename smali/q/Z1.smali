.class public final Lq/Z1;
.super Lq/c;
.source "SourceFile"


# instance fields
.field public final c:Lq/G1;

.field public final d:Lq/g2;

.field public final e:[Lq/R1;

.field public final f:Lq/W4;

.field public g:I


# direct methods
.method public constructor <init>(Lq/G1;Lq/g2;[Lq/R1;Lq/W4;)V
    .registers 6

    invoke-direct {p0}, Lq/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lq/Z1;->g:I

    iput-object p1, p0, Lq/Z1;->c:Lq/G1;

    iput-object p2, p0, Lq/Z1;->d:Lq/g2;

    iput-object p3, p0, Lq/Z1;->e:[Lq/R1;

    iput-object p4, p0, Lq/Z1;->f:Lq/W4;

    return-void
.end method

.method public static t(Lq/G1;)Lq/Z1;
    .registers 5

    iget-object v0, p0, Lq/G1;->a:Lq/Q;

    iget-object v0, v0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lq/R1;

    new-instance v1, Lq/Z1;

    sget-object v2, Lq/g2;->d:Lq/g2;

    sget-object v3, Lq/W4;->b:Lq/W4;

    invoke-direct {v1, p0, v2, v0, v3}, Lq/Z1;-><init>(Lq/G1;Lq/g2;[Lq/R1;Lq/W4;)V

    return-object v1
.end method

.method public static u(Lq/G1;Lq/B;)Lq/Z1;
    .registers 3

    new-instance v0, Lq/Y1;

    invoke-direct {v0, p0}, Lq/Y1;-><init>(Lq/G1;)V

    invoke-virtual {v0, p1}, Lq/a;->x(Lq/B;)V

    invoke-static {v0}, Lq/Y1;->E(Lq/Y1;)Lq/Z1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lq/W4;
    .registers 2

    iget-object v0, p0, Lq/Z1;->f:Lq/W4;

    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 10

    iget-object v0, p0, Lq/Z1;->c:Lq/G1;

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->f:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lq/Z1;->f:Lq/W4;

    iget-object v3, p0, Lq/Z1;->d:Lq/g2;

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_12
    iget-object v4, v3, Lq/g2;->a:Lq/D4;

    iget-object v5, v4, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_26

    invoke-virtual {v4, v0}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4, p1}, Lq/g2;->r(Ljava/util/Map$Entry;Lq/F;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    invoke-virtual {v4}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {v3, p1}, Lq/g2;->r(Ljava/util/Map$Entry;Lq/F;)V

    goto :goto_2e

    :cond_3e
    iget-object v0, v2, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/U4;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v3, Lq/U4;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/B;

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Lq/F;->M(II)V

    const/4 v7, 0x2

    invoke-virtual {p1, v7, v1}, Lq/F;->M(II)V

    invoke-virtual {p1, v2}, Lq/F;->N(I)V

    invoke-virtual {p1, v6, v7}, Lq/F;->M(II)V

    invoke-virtual {p1, v4}, Lq/F;->D(Lq/B;)V

    const/4 v4, 0x4

    invoke-virtual {p1, v5, v4}, Lq/F;->M(II)V

    goto :goto_6a

    :cond_8d
    :goto_8d
    iget-object v0, v3, Lq/g2;->a:Lq/D4;

    iget-object v4, v0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_ab

    invoke-virtual {v0, v1}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/f2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lq/g2;->q(Lq/f2;Ljava/lang/Object;Lq/F;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_ab
    invoke-virtual {v0}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/f2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1, p1}, Lq/g2;->q(Lq/f2;Ljava/lang/Object;Lq/F;)V

    goto :goto_b3

    :cond_cd
    invoke-virtual {v2, p1}, Lq/W4;->c(Lq/F;)V

    :cond_d0
    return-void
.end method

.method public final e()I
    .registers 12

    iget v0, p0, Lq/Z1;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lq/Z1;->c:Lq/G1;

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->f:Z

    iget-object v1, p0, Lq/Z1;->f:Lq/W4;

    iget-object v2, p0, Lq/Z1;->d:Lq/g2;

    if-eqz v0, :cond_a5

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_19
    iget-object v5, v2, Lq/g2;->a:Lq/D4;

    iget-object v6, v5, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2f

    invoke-virtual {v5, v3}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-static {v5}, Lq/g2;->g(Ljava/util/Map$Entry;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    invoke-virtual {v5}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {v3}, Lq/g2;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_37

    :cond_49
    iget-object v1, v1, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/U4;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v5, Lq/U4;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :goto_77
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/B;

    const/4 v8, 0x1

    invoke-static {v8}, Lq/F;->x(I)I

    move-result v8

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    invoke-static {v9}, Lq/F;->x(I)I

    move-result v9

    invoke-static {v3}, Lq/F;->y(I)I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v10, v8

    const/4 v8, 0x3

    invoke-static {v8}, Lq/F;->x(I)I

    move-result v8

    invoke-static {v7}, Lq/F;->q(Lq/B;)I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v7, v10

    add-int/2addr v6, v7

    goto :goto_77

    :cond_a1
    add-int/2addr v2, v6

    goto :goto_54

    :cond_a3
    add-int/2addr v4, v2

    goto :goto_af

    :cond_a5
    invoke-virtual {v2}, Lq/g2;->h()I

    move-result v0

    invoke-virtual {v1}, Lq/W4;->e()I

    move-result v1

    add-int v4, v1, v0

    :goto_af
    iput v4, p0, Lq/Z1;->g:I

    return v4
.end method

.method public final g(Lq/R1;)Z
    .registers 4

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    iget-object v1, p0, Lq/Z1;->c:Lq/G1;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lq/Z1;->d:Lq/g2;

    invoke-virtual {v0, p1}, Lq/g2;->i(Lq/R1;)Z

    move-result p1

    return p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Z
    .registers 6

    iget-object v0, p0, Lq/Z1;->c:Lq/G1;

    invoke-virtual {v0}, Lq/G1;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lq/Z1;->d:Lq/g2;

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/R1;

    iget-object v3, v1, Lq/R1;->b:Lq/C0;

    iget v3, v3, Lq/C0;->g:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    sget-object v3, Lq/A0;->b:Lq/A0;

    const/4 v3, 0x0

    goto :goto_31

    :cond_29
    sget-object v3, Lq/A0;->c:Lq/A0;

    goto :goto_31

    :cond_2c
    sget-object v3, Lq/A0;->d:Lq/A0;

    goto :goto_31

    :cond_2f
    sget-object v3, Lq/A0;->b:Lq/A0;

    :goto_31
    if-nez v3, :cond_35

    sget-object v3, Lq/A0;->b:Lq/A0;

    :cond_35
    sget-object v4, Lq/A0;->d:Lq/A0;

    if-ne v3, v4, :cond_a

    invoke-virtual {v2, v1}, Lq/g2;->i(Lq/R1;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    goto :goto_45

    :cond_41
    invoke-virtual {v2}, Lq/g2;->j()Z

    move-result v0

    :goto_45
    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/Z1;->c:Lq/G1;

    invoke-static {v0}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    iget-object v0, p0, Lq/Z1;->c:Lq/G1;

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lq/Z1;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lq/R1;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    iget-object v1, p0, Lq/Z1;->c:Lq/G1;

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lq/Z1;->d:Lq/g2;

    iget-object v0, v0, Lq/g2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_30

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_30

    :cond_1b
    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_2c

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object p1

    invoke-static {p1}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v0

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object v0

    :cond_30
    :goto_30
    return-object v0

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()Lq/a;
    .registers 3

    new-instance v0, Lq/Y1;

    iget-object v1, p0, Lq/Z1;->c:Lq/G1;

    invoke-direct {v0, v1}, Lq/Y1;-><init>(Lq/G1;)V

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lq/Y1;
    .registers 3

    new-instance v0, Lq/Y1;

    iget-object v1, p0, Lq/Z1;->c:Lq/G1;

    invoke-direct {v0, v1}, Lq/Y1;-><init>(Lq/G1;)V

    invoke-virtual {v0, p0}, Lq/Y1;->J(Lq/c;)Lq/Y1;

    return-object v0
.end method
