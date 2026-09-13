.class public final Lq/S4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/P3;


# instance fields
.field public a:Ljava/util/TreeMap;


# virtual methods
.method public final b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/S4;->n()Lq/W4;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v0

    iget-object v1, p0, Lq/S4;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/T4;

    iget-object v4, v0, Lq/S4;->a:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lq/T4;->b()Lq/T4;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_30
    return-object v0
.end method

.method public final d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    :cond_0
    invoke-virtual {p1}, Lq/E;->z()I

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0, p2, p1}, Lq/S4;->q(ILq/E;)Z

    move-result p2

    if-nez p2, :cond_0

    :cond_c
    return-object p0
.end method

.method public final bridge synthetic f()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/S4;->n()Lq/W4;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final n()Lq/W4;
    .registers 5

    iget-object v0, p0, Lq/S4;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lq/W4;->b:Lq/W4;

    goto :goto_3d

    :cond_b
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/T4;

    invoke-virtual {v2}, Lq/T4;->a()Lq/U4;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_38
    new-instance v0, Lq/W4;

    invoke-direct {v0, v1}, Lq/W4;-><init>(Ljava/util/TreeMap;)V

    :goto_3d
    return-object v0
.end method

.method public final o(I)Lq/T4;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p0, Lq/S4;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/T4;

    if-nez v1, :cond_20

    sget v1, Lq/U4;->f:I

    new-instance v1, Lq/T4;

    invoke-direct {v1}, Lq/T4;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v1
.end method

.method public final p(ILq/U4;)V
    .registers 6

    const-string v0, " is not a valid field number."

    if-lez p1, :cond_41

    iget-object v1, p0, Lq/S4;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, p1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq/T4;->c(Lq/U4;)V

    goto :goto_2b

    :cond_18
    if-lez p1, :cond_2c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lq/U4;->f:I

    new-instance v0, Lq/T4;

    invoke-direct {v0}, Lq/T4;-><init>()V

    invoke-virtual {v0, p2}, Lq/T4;->c(Lq/U4;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    return-void

    :cond_2c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final q(ILq/E;)Z
    .registers 7

    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    const/4 v2, 0x1

    if-eqz p1, :cond_a6

    if-eq p1, v2, :cond_85

    const/4 v3, 0x2

    if-eq p1, v3, :cond_68

    if-eq p1, v0, :cond_42

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/4 v0, 0x5

    if-ne p1, v0, :cond_36

    invoke-virtual {p0, v1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p1

    invoke-virtual {p2}, Lq/E;->k()I

    move-result p2

    iget-object v0, p1, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->b:Ljava/util/List;

    if-nez v1, :cond_2a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->b:Ljava/util/List;

    :cond_2a
    iget-object p1, p1, Lq/T4;->a:Lq/U4;

    iget-object p1, p1, Lq/U4;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_36
    sget p1, Lq/U2;->a:I

    new-instance p1, Lq/T2;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    const/4 p1, 0x0

    return p1

    :cond_42
    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object p1

    sget-object v0, Lq/b2;->e:Lq/b2;

    invoke-virtual {p2, v1, p1, v0}, Lq/E;->n(ILq/P3;Lq/d2;)V

    invoke-virtual {p0, v1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p2

    invoke-virtual {p1}, Lq/S4;->n()Lq/W4;

    move-result-object p1

    iget-object v0, p2, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->e:Ljava/util/List;

    if-nez v1, :cond_60

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->e:Ljava/util/List;

    :cond_60
    iget-object p2, p2, Lq/T4;->a:Lq/U4;

    iget-object p2, p2, Lq/U4;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_68
    invoke-virtual {p0, v1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p1

    invoke-virtual {p2}, Lq/E;->h()Lq/B;

    move-result-object p2

    iget-object v0, p1, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->d:Ljava/util/List;

    if-nez v1, :cond_7d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->d:Ljava/util/List;

    :cond_7d
    iget-object p1, p1, Lq/T4;->a:Lq/U4;

    iget-object p1, p1, Lq/U4;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_85
    invoke-virtual {p0, v1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p1

    invoke-virtual {p2}, Lq/E;->l()J

    move-result-wide v0

    iget-object p2, p1, Lq/T4;->a:Lq/U4;

    iget-object v3, p2, Lq/U4;->c:Ljava/util/List;

    if-nez v3, :cond_9a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lq/U4;->c:Ljava/util/List;

    :cond_9a
    iget-object p1, p1, Lq/T4;->a:Lq/U4;

    iget-object p1, p1, Lq/U4;->c:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_a6
    invoke-virtual {p0, v1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p1

    invoke-virtual {p2}, Lq/E;->p()J

    move-result-wide v0

    iget-object p2, p1, Lq/T4;->a:Lq/U4;

    iget-object v3, p2, Lq/U4;->a:Ljava/util/List;

    if-nez v3, :cond_bb

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lq/U4;->a:Ljava/util/List;

    :cond_bb
    iget-object p1, p1, Lq/T4;->a:Lq/U4;

    iget-object p1, p1, Lq/U4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public final r(Lq/W4;)V
    .registers 4

    sget-object v0, Lq/W4;->b:Lq/W4;

    if-eq p1, v0, :cond_2e

    iget-object p1, p1, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/U4;

    invoke-virtual {p0, v1, v0}, Lq/S4;->p(ILq/U4;)V

    goto :goto_e

    :cond_2e
    return-void
.end method

.method public final s(II)V
    .registers 6

    if-lez p1, :cond_20

    invoke-virtual {p0, p1}, Lq/S4;->o(I)Lq/T4;

    move-result-object p1

    int-to-long v0, p2

    iget-object p2, p1, Lq/T4;->a:Lq/U4;

    iget-object v2, p2, Lq/U4;->a:Ljava/util/List;

    if-nez v2, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lq/U4;->a:Ljava/util/List;

    :cond_14
    iget-object p1, p1, Lq/T4;->a:Lq/U4;

    iget-object p1, p1, Lq/U4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
