.class public final Lq/D4;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final a:I

.field public b:Ljava/util/List;

.field public c:Ljava/util/Map;

.field public d:Z

.field public volatile e:Lq/I4;

.field public f:Ljava/util/Map;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lq/D4;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lq/D4;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;)I
    .registers 6

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_21

    iget-object v2, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/G4;

    iget-object v2, v2, Lq/G4;->a:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :goto_1c
    neg-int p1, v0

    return p1

    :cond_1e
    if-nez v2, :cond_21

    return v1

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-gt v0, v1, :cond_43

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/G4;

    iget-object v3, v3, Lq/G4;->a:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3c

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_22

    :cond_3c
    if-lez v3, :cond_42

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_22

    :cond_42
    return v2

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public final b()V
    .registers 2

    iget-boolean v0, p0, Lq/D4;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c(I)Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final clear()V
    .registers 2

    invoke-virtual {p0}, Lq/D4;->b()V

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_10
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lq/D4;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public final d()Ljava/lang/Iterable;
    .registers 2

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lq/j3;->c:Lq/F4;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public final e()Ljava/util/SortedMap;
    .registers 2

    invoke-virtual {p0}, Lq/D4;->b()V

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lq/D4;->f:Ljava/util/Map;

    :cond_1e
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lq/D4;->e:Lq/I4;

    if-nez v0, :cond_b

    new-instance v0, Lq/I4;

    invoke-direct {v0, p0}, Lq/I4;-><init>(Lq/D4;)V

    iput-object v0, p0, Lq/D4;->e:Lq/I4;

    :cond_b
    iget-object v0, p0, Lq/D4;->e:Lq/I4;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/D4;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/D4;

    invoke-virtual {p0}, Lq/D4;->size()I

    move-result v1

    invoke-virtual {p1}, Lq/D4;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    iget-object v2, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p1, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_38

    invoke-virtual {p0}, Lq/D4;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lq/D4;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast v0, Ljava/util/AbstractSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_38
    move v4, v3

    :goto_39
    if-ge v4, v2, :cond_4d

    invoke-virtual {p0, v4}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    return v3

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4d
    if-eq v2, v1, :cond_58

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    iget-object p1, p1, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_58
    return v0
.end method

.method public final f()V
    .registers 4

    iget-boolean v0, p0, Lq/D4;->d:Z

    if-nez v0, :cond_5f

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-virtual {p0, v0}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/f2;

    check-cast v2, Lq/R1;

    invoke-virtual {v2}, Lq/R1;->p()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2f
    invoke-virtual {p0}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/f2;

    check-cast v2, Lq/R1;

    invoke-virtual {v2}, Lq/R1;->p()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_5f
    iget-boolean v0, p0, Lq/D4;->d:Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_76

    :cond_70
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_76
    iput-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    iget-object v0, p0, Lq/D4;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_8b

    :cond_85
    iget-object v0, p0, Lq/D4;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_8b
    iput-object v0, p0, Lq/D4;->f:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/D4;->d:Z

    :cond_90
    return-void
.end method

.method public final g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lq/D4;->b()V

    invoke-virtual {p0, p1}, Lq/D4;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object p1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/G4;

    invoke-virtual {p1, p2}, Lq/G4;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lq/D4;->b()V

    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget v2, p0, Lq/D4;->a:I

    if-eqz v1, :cond_30

    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lq/D4;->b:Ljava/util/List;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-lt v0, v2, :cond_3e

    invoke-virtual {p0}, Lq/D4;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3e
    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_5b

    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/G4;

    invoke-virtual {p0}, Lq/D4;->e()Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, v1, Lq/G4;->a:Ljava/lang/Comparable;

    iget-object v1, v1, Lq/G4;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    new-instance v2, Lq/G4;

    invoke-direct {v2, p0, p1, p2}, Lq/G4;-><init>(Lq/D4;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lq/D4;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_13

    iget-object p1, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/G4;

    iget-object p1, p1, Lq/G4;->b:Ljava/lang/Object;

    return-object p1

    :cond_13
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lq/D4;->b()V

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/G4;

    iget-object p1, p1, Lq/G4;->b:Ljava/lang/Object;

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lq/D4;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lq/D4;->b:Ljava/util/List;

    new-instance v2, Lq/G4;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v4, v3}, Lq/G4;-><init>(Lq/D4;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_3e
    return-object p1
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1a

    iget-object v3, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/G4;

    invoke-virtual {v3}, Lq/G4;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_29
    return v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lq/D4;->b()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lq/D4;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-virtual {p0, v0}, Lq/D4;->h(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    iget-object v0, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 3

    iget-object v0, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
