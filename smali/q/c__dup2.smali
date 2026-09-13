.class public abstract Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/S3;
.implements Lq/Q3;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lq/c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lq/c;->b:I

    return-void
.end method

.method public static n(Ljava/util/List;)Ljava/util/Map;
    .registers 7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/c;

    invoke-interface {v1}, Lq/S3;->k()Lq/G1;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v2

    invoke-interface {v1, v2}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lq/O1;

    if-eqz v5, :cond_3c

    check-cast v4, Lq/O1;

    iget-object v4, v4, Lq/O1;->a:Lq/e0;

    iget v4, v4, Lq/e0;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3c
    invoke-interface {v1, v3}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/c;

    invoke-interface {v1, v2}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lq/O1;

    if-eqz v5, :cond_61

    check-cast v4, Lq/O1;

    iget-object v4, v4, Lq/O1;->a:Lq/e0;

    iget v4, v4, Lq/e0;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_61
    invoke-interface {v1, v3}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_69
    return-object v0
.end method

.method public static o(ILjava/util/Map;)I
    .registers 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/R1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p0, p0, 0x25

    iget-object v2, v1, Lq/R1;->b:Lq/C0;

    iget v2, v2, Lq/C0;->f:I

    add-int/2addr p0, v2

    invoke-virtual {v1}, Lq/R1;->l()Z

    move-result v2

    if-eqz v2, :cond_3a

    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lq/c;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lq/O3;->a(Ljava/util/Map;)I

    move-result v0

    :goto_37
    add-int/2addr v0, p0

    move p0, v0

    goto :goto_8

    :cond_3a
    iget-object v2, v1, Lq/R1;->g:Lq/Q1;

    sget-object v3, Lq/Q1;->f:Lq/Q1;

    if-eq v2, v3, :cond_47

    mul-int/lit8 p0, p0, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_47
    invoke-virtual {v1}, Lq/R1;->p()Z

    move-result v1

    if-eqz v1, :cond_6c

    check-cast v0, Ljava/util/List;

    mul-int/lit8 p0, p0, 0x35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/P2;

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {v2}, Lq/P2;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_56

    :cond_6a
    add-int/2addr p0, v1

    goto :goto_8

    :cond_6c
    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Lq/P2;

    invoke-interface {v0}, Lq/P2;->a()I

    move-result v0

    goto :goto_37

    :cond_75
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lq/c;

    invoke-interface {p0}, Lq/S3;->k()Lq/G1;

    move-result-object v1

    invoke-interface {p1}, Lq/S3;->k()Lq/G1;

    move-result-object v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-interface {p0}, Lq/S3;->l()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lq/S3;->l()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_2b

    goto/16 :goto_11a

    :cond_2b
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/R1;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    goto/16 :goto_11a

    :cond_47
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v5, Lq/R1;->g:Lq/Q1;

    sget-object v9, Lq/Q1;->e:Lq/Q1;

    if-ne v8, v9, :cond_eb

    invoke-virtual {v5}, Lq/R1;->p()Z

    move-result v5

    if-eqz v5, :cond_b3

    check-cast v6, Ljava/util/List;

    check-cast v7, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eq v5, v8, :cond_6b

    goto/16 :goto_11a

    :cond_6b
    move v5, v2

    :goto_6c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_33

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v8, [B

    if-eqz v10, :cond_8b

    instance-of v11, v9, [B

    if-eqz v11, :cond_8b

    check-cast v8, [B

    check-cast v9, [B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    goto :goto_ad

    :cond_8b
    if-eqz v10, :cond_97

    check-cast v8, [B

    sget-object v10, Lq/B;->c:Lq/B;

    array-length v10, v8

    invoke-static {v8, v2, v10}, Lq/B;->d([BII)Lq/B;

    move-result-object v8

    goto :goto_99

    :cond_97
    check-cast v8, Lq/B;

    :goto_99
    instance-of v10, v9, [B

    if-eqz v10, :cond_a7

    check-cast v9, [B

    sget-object v10, Lq/B;->c:Lq/B;

    array-length v10, v9

    invoke-static {v9, v2, v10}, Lq/B;->d([BII)Lq/B;

    move-result-object v9

    goto :goto_a9

    :cond_a7
    check-cast v9, Lq/B;

    :goto_a9
    invoke-virtual {v8, v9}, Lq/B;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_ad
    if-nez v8, :cond_b1

    goto/16 :goto_11a

    :cond_b1
    add-int/2addr v5, v0

    goto :goto_6c

    :cond_b3
    instance-of v5, v6, [B

    if-eqz v5, :cond_c4

    instance-of v8, v7, [B

    if-eqz v8, :cond_c4

    check-cast v6, [B

    check-cast v7, [B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    goto :goto_e8

    :cond_c4
    if-eqz v5, :cond_d0

    check-cast v6, [B

    sget-object v5, Lq/B;->c:Lq/B;

    array-length v5, v6

    invoke-static {v6, v2, v5}, Lq/B;->d([BII)Lq/B;

    move-result-object v5

    goto :goto_d3

    :cond_d0
    move-object v5, v6

    check-cast v5, Lq/B;

    :goto_d3
    instance-of v6, v7, [B

    if-eqz v6, :cond_e1

    check-cast v7, [B

    sget-object v6, Lq/B;->c:Lq/B;

    array-length v6, v7

    invoke-static {v7, v2, v6}, Lq/B;->d([BII)Lq/B;

    move-result-object v6

    goto :goto_e4

    :cond_e1
    move-object v6, v7

    check-cast v6, Lq/B;

    :goto_e4
    invoke-virtual {v5, v6}, Lq/B;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_e8
    if-nez v5, :cond_33

    goto :goto_11a

    :cond_eb
    invoke-virtual {v5}, Lq/R1;->l()Z

    move-result v5

    if-eqz v5, :cond_104

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lq/c;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lq/c;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5, v6}, Lq/O3;->e(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_11a

    :cond_104
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_11a

    :cond_10b
    invoke-interface {p0}, Lq/S3;->a()Lq/W4;

    move-result-object v1

    invoke-interface {p1}, Lq/S3;->a()Lq/W4;

    move-result-object p1

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11a

    goto :goto_11b

    :cond_11a
    :goto_11a
    move v0, v2

    :goto_11b
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lq/c;->a:I

    if-nez v0, :cond_23

    invoke-interface {p0}, Lq/S3;->k()Lq/G1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-interface {p0}, Lq/S3;->l()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lq/c;->o(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-interface {p0}, Lq/S3;->a()Lq/W4;

    move-result-object v1

    invoke-virtual {v1}, Lq/W4;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lq/c;->a:I

    :cond_23
    return v0
.end method

.method public abstract p()Lq/a;
.end method

.method public q(Lq/q4;)Lq/a;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder is not supported for this type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract r()Lq/a;
.end method

.method public final s()[B
    .registers 5

    :try_start_0
    invoke-interface {p0}, Lq/Q3;->e()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Lq/F;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lq/F;-><init>([BII)V

    invoke-interface {p0, v2}, Lq/Q3;->c(Lq/F;)V

    iget v0, v2, Lq/F;->h:I

    iget v2, v2, Lq/F;->i:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    sget-object v0, Lq/M4;->b:Lq/M4;

    invoke-virtual {v0, p0}, Lq/M4;->c(Lq/S3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
