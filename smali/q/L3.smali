.class public final Lq/L3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq/s;


# direct methods
.method public synthetic constructor <init>(Lq/s;I)V
    .registers 3

    iput p2, p0, Lq/L3;->a:I

    iput-object p1, p0, Lq/L3;->b:Lq/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_14

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_b  #0x0
    check-cast p1, Ljava/util/Map$Entry;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b  #00000000
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_3a

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_b  #0x0
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v1, v0, Lq/s;->d:Lq/t;

    iget v1, v1, Lq/t;->c:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v4, v3, v2}, Lq/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_2f
    iget-object p1, v0, Lq/s;->d:Lq/t;

    iget p1, p1, Lq/t;->c:I

    if-eq v1, p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    return p1

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_b  #00000000
    .end packed-switch
.end method

.method public final clear()V
    .registers 2

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_16

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v0}, Lq/t;->clear()V

    return-void

    :pswitch_d  #0x0
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v0}, Lq/t;->clear()V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_40

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v0, p1}, Lq/t;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1

    :pswitch_13  #0x0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    goto :goto_3e

    :cond_19
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lq/L3;->b:Lq/s;

    iget-object v3, v2, Lq/s;->d:Lq/t;

    invoke-virtual {v3, v0}, Lq/t;->e(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2a

    goto :goto_3e

    :cond_2a
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_3d

    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    :cond_3d
    move v1, v3

    :cond_3e
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_13  #00000000
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 4

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_3a

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq/t;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    const/4 p1, 0x1

    :goto_20
    return p1

    :pswitch_21  #0x0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq/L3;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p1, 0x0

    goto :goto_38

    :cond_37
    const/4 p1, 0x1

    :goto_38
    return p1

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_21  #00000000
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_10

    invoke-static {p0, p1}, Lq/s;->c(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_a  #0x0
    invoke-static {p0, p1}, Lq/s;->c(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public final hashCode()I
    .registers 8

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_4c

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v1, v0, Lq/s;->d:Lq/t;

    iget v1, v1, Lq/t;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ltz v1, :cond_21

    invoke-virtual {v0, v1, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    goto :goto_1d

    :cond_19
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1d
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_21
    return v3

    :pswitch_22  #0x0
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v1, v0, Lq/s;->d:Lq/t;

    iget v1, v1, Lq/t;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2c
    if-ltz v1, :cond_4b

    invoke-virtual {v0, v1, v3}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3a

    move v5, v3

    goto :goto_3e

    :cond_3a
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_3e
    if-nez v6, :cond_42

    move v6, v3

    goto :goto_46

    :cond_42
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_46
    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    :cond_4b
    return v4

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_22  #00000000
    .end packed-switch
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    iget v0, v0, Lq/t;->c:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :pswitch_11  #0x0
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    iget v0, v0, Lq/t;->c:I

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_16

    new-instance v0, Lq/K3;

    iget-object v1, p0, Lq/L3;->b:Lq/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq/K3;-><init>(Lq/s;I)V

    return-object v0

    :pswitch_e  #0x0
    new-instance v0, Lq/M3;

    iget-object v1, p0, Lq/L3;->b:Lq/s;

    invoke-direct {v0, v1}, Lq/M3;-><init>(Lq/s;)V

    return-object v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e  #00000000
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_1c

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v1, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v1, p1}, Lq/t;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_14

    invoke-virtual {v0, p1}, Lq/s;->b(I)V

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :pswitch_16  #0x0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16  #00000000
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_30

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v0}, Lq/t;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lq/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1f
    invoke-virtual {v0}, Lq/t;->size()I

    move-result p1

    if-eq v1, p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    return p1

    :pswitch_29  #0x0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29  #00000000
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_3a

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    invoke-virtual {v0}, Lq/t;->size()I

    move-result v1

    invoke-virtual {v0}, Lq/t;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_29
    invoke-virtual {v0}, Lq/t;->size()I

    move-result p1

    if-eq v1, p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return p1

    :pswitch_33  #0x0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_33  #00000000
    .end packed-switch
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_14

    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    iget v0, v0, Lq/t;->c:I

    return v0

    :pswitch_c  #0x0
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    iget-object v0, v0, Lq/s;->d:Lq/t;

    iget v0, v0, Lq/t;->c:I

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c  #00000000
    .end packed-switch
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 7

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_22

    .line 1
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    .line 2
    iget-object v1, v0, Lq/s;->d:Lq/t;

    iget v1, v1, Lq/t;->c:I

    .line 3
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_1a

    .line 4
    invoke-virtual {v0, v4, v3}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    return-object v2

    .line 5
    :pswitch_1b  #0x0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1b  #00000000
    .end packed-switch
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lq/L3;->a:I

    packed-switch v0, :pswitch_data_14

    .line 6
    iget-object v0, p0, Lq/L3;->b:Lq/s;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lq/s;->d([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_d  #0x0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method
