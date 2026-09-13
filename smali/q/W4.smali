.class public final Lq/W4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/Q3;


# static fields
.field public static final b:Lq/W4;


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/W4;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lq/W4;-><init>(Ljava/util/TreeMap;)V

    sput-object v0, Lq/W4;->b:Lq/W4;

    new-instance v0, Lq/V4;

    return-void
.end method

.method public constructor <init>(Ljava/util/TreeMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/W4;->a:Ljava/util/TreeMap;

    return-void
.end method

.method public static n()Lq/S4;
    .registers 2

    new-instance v0, Lq/S4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lq/S4;->a:Ljava/util/TreeMap;

    return-object v0
.end method


# virtual methods
.method public final c(Lq/F;)V
    .registers 9

    iget-object v0, p0, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/U4;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lq/U4;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Lq/F;->M(II)V

    invoke-virtual {p1, v4, v5}, Lq/F;->O(J)V

    goto :goto_2c

    :cond_44
    iget-object v3, v2, Lq/U4;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v1, v5}, Lq/F;->M(II)V

    invoke-virtual {p1, v4}, Lq/F;->E(I)V

    goto :goto_4a

    :cond_62
    iget-object v3, v2, Lq/U4;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {p1, v1, v6}, Lq/F;->M(II)V

    invoke-virtual {p1, v4, v5}, Lq/F;->F(J)V

    goto :goto_68

    :cond_80
    iget-object v3, v2, Lq/U4;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/B;

    const/4 v5, 0x2

    invoke-virtual {p1, v1, v5}, Lq/F;->M(II)V

    invoke-virtual {p1, v4}, Lq/F;->D(Lq/B;)V

    goto :goto_86

    :cond_9a
    iget-object v2, v2, Lq/U4;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/W4;

    invoke-virtual {p1, v1, v3}, Lq/F;->G(ILq/Q3;)V

    goto :goto_a0

    :cond_b0
    return-void
.end method

.method public final e()I
    .registers 11

    iget-object v0, p0, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_ca

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/U4;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v4, Lq/U4;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v9

    invoke-static {v7, v8}, Lq/F;->z(J)I

    move-result v7

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    goto :goto_35

    :cond_50
    iget-object v5, v4, Lq/U4;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    goto :goto_56

    :cond_6d
    iget-object v5, v4, Lq/U4;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    goto :goto_73

    :cond_8a
    iget-object v5, v4, Lq/U4;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/B;

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v8

    invoke-static {v7}, Lq/F;->q(Lq/B;)I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_90

    :cond_a7
    iget-object v4, v4, Lq/U4;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/W4;

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Lq/W4;->e()I

    move-result v5

    add-int/2addr v5, v7

    add-int/2addr v6, v5

    goto :goto_ad

    :cond_c6
    add-int/2addr v1, v6

    goto/16 :goto_12

    :cond_c9
    move v2, v1

    :cond_ca
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/W4;

    if-eqz v1, :cond_15

    check-cast p1, Lq/W4;

    iget-object p1, p1, Lq/W4;->a:Ljava/util/TreeMap;

    iget-object v1, p0, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()Lq/P3;
    .registers 2

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq/S4;->r(Lq/W4;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    sget-object v0, Lq/M4;->b:Lq/M4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lq/J1;

    invoke-direct {v1, v0}, Lq/J1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lq/M4;->e(Lq/W4;Lq/J1;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
