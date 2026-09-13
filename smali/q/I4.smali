.class public final Lq/I4;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lq/D4;


# direct methods
.method public constructor <init>(Lq/D4;)V
    .registers 2

    iput-object p1, p0, Lq/I4;->a:Lq/D4;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lq/I4;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lq/I4;->a:Lq/D4;

    invoke-virtual {v1, v0, p1}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lq/I4;->a:Lq/D4;

    invoke-virtual {v0}, Lq/D4;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lq/I4;->a:Lq/D4;

    invoke-virtual {v1, v0}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lq/H4;

    iget-object v1, p0, Lq/I4;->a:Lq/D4;

    invoke-direct {v0, v1}, Lq/H4;-><init>(Lq/D4;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lq/I4;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lq/I4;->a:Lq/D4;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lq/D4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lq/I4;->a:Lq/D4;

    invoke-virtual {v0}, Lq/D4;->size()I

    move-result v0

    return v0
.end method
