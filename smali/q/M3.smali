.class public final Lq/M3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:Lq/s;


# direct methods
.method public constructor <init>(Lq/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/M3;->d:Lq/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/M3;->c:Z

    iget-object p1, p1, Lq/s;->d:Lq/t;

    iget p1, p1, Lq/t;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lq/M3;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lq/M3;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    iget-boolean v0, p0, Lq/M3;->c:Z

    if-eqz v0, :cond_39

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lq/M3;->b:I

    iget-object v3, p0, Lq/M3;->d:Lq/s;

    invoke-virtual {v3, v2, v1}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_22

    if-eqz v0, :cond_38

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_22
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lq/M3;->b:I

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_37

    if-eqz p1, :cond_38

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_37
    move v1, v2

    :cond_38
    return v1

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lq/M3;->c:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lq/M3;->b:I

    iget-object v1, p0, Lq/M3;->d:Lq/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lq/M3;->c:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lq/M3;->b:I

    iget-object v1, p0, Lq/M3;->d:Lq/s;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lq/M3;->b:I

    iget v1, p0, Lq/M3;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final hashCode()I
    .registers 6

    iget-boolean v0, p0, Lq/M3;->c:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lq/M3;->b:I

    iget-object v1, p0, Lq/M3;->d:Lq/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lq/M3;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1c
    if-nez v1, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_23
    xor-int/2addr v0, v2

    return v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lq/M3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lq/M3;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lq/M3;->b:I

    iput-boolean v1, p0, Lq/M3;->c:Z

    return-object p0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3

    iget-boolean v0, p0, Lq/M3;->c:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lq/M3;->d:Lq/s;

    iget v1, p0, Lq/M3;->b:I

    invoke-virtual {v0, v1}, Lq/s;->b(I)V

    iget v0, p0, Lq/M3;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq/M3;->b:I

    iget v0, p0, Lq/M3;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq/M3;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/M3;->c:Z

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Lq/M3;->c:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lq/M3;->b:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lq/M3;->d:Lq/s;

    iget-object v1, v1, Lq/s;->d:Lq/t;

    iget-object v1, v1, Lq/t;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    return-object v2

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/M3;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq/M3;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
