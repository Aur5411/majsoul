.class public final Lq/G4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/Comparable;

.field public b:Ljava/lang/Object;

.field public final synthetic c:Lq/D4;


# direct methods
.method public constructor <init>(Lq/D4;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/G4;->c:Lq/D4;

    iput-object p2, p0, Lq/G4;->a:Ljava/lang/Comparable;

    iput-object p3, p0, Lq/G4;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lq/G4;

    iget-object p1, p1, Lq/G4;->a:Ljava/lang/Comparable;

    iget-object v0, p0, Lq/G4;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lq/G4;->a:Ljava/lang/Comparable;

    if-nez v3, :cond_1a

    if-nez v1, :cond_18

    move v1, v0

    goto :goto_1e

    :cond_18
    move v1, v2

    goto :goto_1e

    :cond_1a
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1e
    if-eqz v1, :cond_35

    iget-object v1, p0, Lq/G4;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_2e

    if-nez p1, :cond_2c

    move p1, v0

    goto :goto_32

    :cond_2c
    move p1, v2

    goto :goto_32

    :cond_2e
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_32
    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lq/G4;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lq/G4;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lq/G4;->a:Ljava/lang/Comparable;

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_b

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    iget-object v2, p0, Lq/G4;->b:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq/G4;->c:Lq/D4;

    invoke-virtual {v0}, Lq/D4;->b()V

    iget-object v0, p0, Lq/G4;->b:Ljava/lang/Object;

    iput-object p1, p0, Lq/G4;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq/G4;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq/G4;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
