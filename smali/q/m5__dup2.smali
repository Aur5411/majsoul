.class public final Lq/m5;
.super Lq/I1;
.source "SourceFile"

# interfaces
.implements Lq/n5;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>(IILjava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq/m5;->a:I

    iput-object p3, p0, Lq/m5;->b:Ljava/lang/String;

    iput-object p4, p0, Lq/m5;->c:[B

    iput p2, p0, Lq/m5;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lq/y3;)V
    .registers 9

    iget v6, p0, Lq/m5;->a:I

    iget-object v2, p0, Lq/m5;->b:Ljava/lang/String;

    iget-object v3, p0, Lq/m5;->c:[B

    iget v5, p0, Lq/m5;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_b
    iget-object v0, p1, Lq/y3;->a:Lq/w3;

    const/16 v4, 0xc

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lq/w3;->a(ILjava/lang/String;[BII)V

    iget-object v0, p1, Lq/y3;->a:Lq/w3;

    invoke-virtual {v0, v6}, Lq/w3;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    monitor-enter p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_2b

    :try_start_1c
    iget-wide v0, p1, Lq/y3;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lq/y3;->f:J

    const/4 v0, -0x1

    iput v0, p1, Lq/y3;->g:I
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_28

    :try_start_26
    monitor-exit p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_27} :catch_2b

    goto :goto_2b

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lq/m5;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1b

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lq/m5;

    if-eq v2, v1, :cond_d

    goto :goto_1b

    :cond_d
    invoke-virtual {p0}, Lq/m5;->g()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lq/m5;

    invoke-virtual {p1}, Lq/m5;->g()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_1b
    return v0
.end method

.method public final synthetic g()[Ljava/lang/Object;
    .registers 7

    iget v0, p0, Lq/m5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lq/m5;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lq/m5;->b:Ljava/lang/String;

    iget-object v3, p0, Lq/m5;->c:[B

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    return-object v4
.end method

.method public final hashCode()I
    .registers 3

    invoke-virtual {p0}, Lq/m5;->g()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const-class v1, Lq/m5;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lq/m5;->g()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "a;b;c;d"

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

    const-class v4, Lq/m5;

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
