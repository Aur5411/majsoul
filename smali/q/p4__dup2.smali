.class public final Lq/p4;
.super Lq/I1;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIFLjava/lang/String;II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq/p4;->a:I

    iput-object p2, p0, Lq/p4;->b:Ljava/lang/String;

    iput p3, p0, Lq/p4;->c:I

    iput p4, p0, Lq/p4;->d:I

    iput p5, p0, Lq/p4;->e:F

    iput-object p6, p0, Lq/p4;->f:Ljava/lang/String;

    iput p7, p0, Lq/p4;->g:I

    iput p8, p0, Lq/p4;->h:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1b

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lq/p4;

    if-eq v2, v1, :cond_d

    goto :goto_1b

    :cond_d
    invoke-virtual {p0}, Lq/p4;->g()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lq/p4;

    invoke-virtual {p1}, Lq/p4;->g()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_1b
    return v0
.end method

.method public final synthetic g()[Ljava/lang/Object;
    .registers 11

    iget v0, p0, Lq/p4;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lq/p4;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lq/p4;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lq/p4;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lq/p4;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lq/p4;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lq/p4;->b:Ljava/lang/String;

    iget-object v7, p0, Lq/p4;->f:Ljava/lang/String;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v6, v8, v0

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    const/4 v0, 0x6

    aput-object v4, v8, v0

    const/4 v0, 0x7

    aput-object v5, v8, v0

    return-object v8
.end method

.method public final h()Z
    .registers 3

    iget v0, p0, Lq/p4;->g:I

    if-ltz v0, :cond_a

    const/16 v1, 0x25

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final hashCode()I
    .registers 3

    invoke-virtual {p0}, Lq/p4;->g()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const-class v1, Lq/p4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lq/p4;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-eqz p1, :cond_11

    if-eq p1, v1, :cond_e

    const-string p1, "慎切"

    goto :goto_13

    :cond_e
    const-string p1, "次切"

    goto :goto_13

    :cond_11
    const-string p1, "首切"

    :goto_13
    return-object p1

    :cond_14
    if-eqz p1, :cond_1e

    if-eq p1, v1, :cond_1b

    const-string p1, "慎选"

    goto :goto_20

    :cond_1b
    const-string p1, "次选"

    goto :goto_20

    :cond_1e
    const-string p1, "首选"

    :goto_20
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lq/p4;->g()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "a;b;c;d;e;f;g;h"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    new-array v1, v3, [Ljava/lang/String;

    goto :goto_16

    :cond_10
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lq/p4;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    array-length v4, v1

    if-ge v3, v4, :cond_48

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_45

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_48
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
