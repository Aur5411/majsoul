.class public final Lq/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq/D4;

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public static j(Lq/f2;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_3

    return-object p1

    :cond_3
    check-cast p0, Lq/R1;

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    iget-object v0, v0, Lq/i6;->a:Lq/j6;

    sget-object v1, Lq/j6;->i:Lq/j6;

    if-ne v0, v1, :cond_76

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result p0

    if-eqz p0, :cond_64

    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_4c

    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq/P3;

    if-nez v2, :cond_2d

    move-object v2, v1

    goto :goto_3b

    :cond_2d
    move-object v2, v1

    check-cast v2, Lq/P3;

    if-eqz p2, :cond_37

    invoke-interface {v2}, Lq/P3;->b()Lq/Q3;

    move-result-object v2

    goto :goto_3b

    :cond_37
    invoke-interface {v2}, Lq/P3;->f()Lq/Q3;

    move-result-object v2

    :goto_3b
    if-eq v2, v1, :cond_48

    if-ne p0, p1, :cond_45

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    :cond_45
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_4b
    return-object p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Repeated field should contains a List but actually contains type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    instance-of p0, p1, Lq/P3;

    if-nez p0, :cond_69

    goto :goto_76

    :cond_69
    check-cast p1, Lq/P3;

    if-eqz p2, :cond_72

    invoke-interface {p1}, Lq/P3;->b()Lq/Q3;

    move-result-object p1

    goto :goto_76

    :cond_72
    invoke-interface {p1}, Lq/P3;->f()Lq/Q3;

    move-result-object p1

    :cond_76
    :goto_76
    return-object p1
.end method

.method public static k(Lq/D4;Z)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-virtual {p0, v0}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/f2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lq/e2;->j(Lq/f2;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    invoke-virtual {p0}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/f2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lq/e2;->j(Lq/f2;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_47
    return-void
.end method

.method public static m(Lq/R1;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    invoke-static {v0, p1}, Lq/g2;->l(Lq/i6;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    iget-object v0, v0, Lq/i6;->a:Lq/j6;

    sget-object v1, Lq/j6;->i:Lq/j6;

    if-ne v0, v1, :cond_19

    instance-of v0, p1, Lq/P3;

    if-eqz v0, :cond_19

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lq/R1;->b:Lq/C0;

    iget v1, v1, Lq/C0;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object p0

    iget-object p0, p0, Lq/i6;->a:Lq/j6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method


# virtual methods
.method public final a(Lq/R1;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lq/e2;->d()V

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lq/e2;->d:Z

    if-nez v0, :cond_14

    instance-of v0, p2, Lq/P3;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lq/e2;->d:Z

    invoke-static {p1, p2}, Lq/e2;->m(Lq/R1;Ljava/lang/Object;)V

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1, p1, v0}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_2d
    check-cast v0, Ljava/util/List;

    :goto_2f
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Z)Lq/g2;
    .registers 5

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Lq/g2;->d:Lq/g2;

    return-object p1

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/e2;->c:Z

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    iget-boolean v2, p0, Lq/e2;->d:Z

    if-eqz v2, :cond_1b

    invoke-static {v1, v0}, Lq/g2;->b(Lq/D4;Z)Lq/D4;

    move-result-object v1

    invoke-static {v1, p1}, Lq/e2;->k(Lq/D4;Z)V

    :cond_1b
    new-instance p1, Lq/g2;

    invoke-direct {p1, v1}, Lq/g2;-><init>(Lq/D4;)V

    iget-boolean v0, p0, Lq/e2;->b:Z

    iput-boolean v0, p1, Lq/g2;->c:Z

    return-object p1
.end method

.method public final c(Lq/R1;)V
    .registers 3

    invoke-virtual {p0}, Lq/e2;->d()V

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/e2;->b:Z

    :cond_13
    return-void
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Lq/e2;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lq/g2;->b(Lq/D4;Z)Lq/D4;

    move-result-object v0

    iput-object v0, p0, Lq/e2;->a:Lq/D4;

    iput-boolean v1, p0, Lq/e2;->c:Z

    :cond_f
    return-void
.end method

.method public final e()Ljava/util/Map;
    .registers 3

    iget-boolean v0, p0, Lq/e2;->b:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq/g2;->b(Lq/D4;Z)Lq/D4;

    move-result-object v0

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    iget-boolean v1, v1, Lq/D4;->d:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lq/D4;->f()V

    goto :goto_19

    :cond_15
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lq/e2;->k(Lq/D4;Z)V

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    iget-boolean v1, v0, Lq/D4;->d:Z

    if-eqz v1, :cond_21

    goto :goto_25

    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_25
    return-object v0
.end method

.method public final f(Lq/R1;)Z
    .registers 3

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/e2;->a:Lq/D4;

    iget-object v2, v2, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v2, v1}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lq/g2;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lq/g2;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_26

    return v0

    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method public final h(Lq/g2;)V
    .registers 5

    invoke-virtual {p0}, Lq/e2;->d()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p1, Lq/g2;->a:Lq/D4;

    iget-object v1, v1, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lq/g2;->a:Lq/D4;

    if-ge v0, v1, :cond_1a

    invoke-virtual {v2, v0}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lq/e2;->i(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    invoke-virtual {v2}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lq/e2;->i(Ljava/util/Map$Entry;)V

    goto :goto_22

    :cond_32
    return-void
.end method

.method public final i(Ljava/util/Map$Entry;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/f2;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast v0, Lq/R1;

    invoke-virtual {v0}, Lq/R1;->p()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1, v0}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v2, v0, v1}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lq/g2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3e
    invoke-virtual {v0}, Lq/R1;->i()Lq/i6;

    move-result-object v1

    iget-object v1, v1, Lq/i6;->a:Lq/j6;

    sget-object v2, Lq/j6;->i:Lq/j6;

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1, v0}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-static {p1}, Lq/g2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    :cond_5a
    instance-of v2, v1, Lq/P3;

    if-eqz v2, :cond_6a

    check-cast v1, Lq/P3;

    check-cast p1, Lq/Q3;

    check-cast v1, Lq/a;

    check-cast p1, Lq/c;

    invoke-virtual {v1, p1}, Lq/a;->w(Lq/c;)Lq/a;

    goto :goto_8d

    :cond_6a
    check-cast v1, Lq/Q3;

    invoke-interface {v1}, Lq/Q3;->j()Lq/P3;

    move-result-object v1

    check-cast p1, Lq/Q3;

    check-cast v1, Lq/a;

    check-cast p1, Lq/c;

    invoke-virtual {v1, p1}, Lq/a;->w(Lq/c;)Lq/a;

    move-result-object p1

    invoke-interface {p1}, Lq/P3;->f()Lq/Q3;

    move-result-object p1

    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1, v0, p1}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    :cond_84
    iget-object v1, p0, Lq/e2;->a:Lq/D4;

    invoke-static {p1}, Lq/g2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    :goto_8d
    return-void
.end method

.method public final l(Lq/R1;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Lq/e2;->d()V

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_40

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lq/e2;->m(Lq/R1;Ljava/lang/Object;)V

    iget-boolean v4, p0, Lq/e2;->d:Z

    if-nez v4, :cond_32

    instance-of v3, v3, Lq/P3;

    if-eqz v3, :cond_30

    goto :goto_32

    :cond_30
    move v3, v1

    goto :goto_33

    :cond_32
    :goto_32
    move v3, v2

    :goto_33
    iput-boolean v3, p0, Lq/e2;->d:Z

    goto :goto_1a

    :cond_36
    move-object p2, v0

    goto :goto_43

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    invoke-static {p1, p2}, Lq/e2;->m(Lq/R1;Ljava/lang/Object;)V

    :goto_43
    iget-boolean v0, p0, Lq/e2;->d:Z

    if-nez v0, :cond_4b

    instance-of v0, p2, Lq/P3;

    if-eqz v0, :cond_4c

    :cond_4b
    move v1, v2

    :cond_4c
    iput-boolean v1, p0, Lq/e2;->d:Z

    iget-object v0, p0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1, p2}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
