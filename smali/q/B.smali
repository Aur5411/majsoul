.class public Lq/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lq/B;

.field public static final d:Lq/L2;


# instance fields
.field public a:I

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/B;

    sget-object v1, Lq/S2;->c:[B

    invoke-direct {v0, v1}, Lq/B;-><init>([B)V

    sput-object v0, Lq/B;->c:Lq/B;

    invoke-static {}, Lq/f;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lq/L2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lq/L2;-><init>(I)V

    goto :goto_1c

    :cond_16
    new-instance v0, Lq/L2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq/L2;-><init>(I)V

    :goto_1c
    sput-object v0, Lq/B;->d:Lq/L2;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lq/B;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lq/B;->b:[B

    return-void
.end method

.method public static c(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_5f

    if-ltz p0, :cond_46

    if-ge p1, p0, :cond_2a

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    return v0
.end method

.method public static d([BII)Lq/B;
    .registers 6

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lq/B;->c(III)I

    new-instance v0, Lq/B;

    sget-object v1, Lq/B;->d:Lq/L2;

    iget v1, v1, Lq/L2;->a:I

    packed-switch v1, :pswitch_data_20

    new-array v1, p2, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b

    :pswitch_16  #0x1
    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :goto_1b
    invoke-direct {v0, v1}, Lq/B;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16  #00000001
    .end packed-switch
.end method


# virtual methods
.method public b(I)B
    .registers 3

    iget-object v0, p0, Lq/B;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public e([BI)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lq/B;->b:[B

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/B;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lq/B;

    invoke-virtual {v3}, Lq/B;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v1, p1, Lq/B;

    if-eqz v1, :cond_9c

    check-cast p1, Lq/B;

    iget v1, p0, Lq/B;->a:I

    iget v3, p1, Lq/B;->a:I

    if-eqz v1, :cond_30

    if-eqz v3, :cond_30

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    invoke-virtual {p1}, Lq/B;->size()I

    move-result v3

    if-gt v1, v3, :cond_81

    invoke-virtual {p1}, Lq/B;->size()I

    move-result v3

    if-gt v1, v3, :cond_61

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v1

    invoke-virtual {p1}, Lq/B;->f()I

    move-result v4

    :goto_4d
    if-ge v1, v3, :cond_60

    iget-object v5, p0, Lq/B;->b:[B

    aget-byte v5, v5, v1

    iget-object v6, p1, Lq/B;->b:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_5b

    move v0, v2

    goto :goto_60

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_60
    :goto_60
    return v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ran off end of other: 0, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq/B;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9c
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g(I)B
    .registers 3

    iget-object v0, p0, Lq/B;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final h()Z
    .registers 5

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v0

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Lq/i5;->a:Lq/k3;

    iget-object v3, p0, Lq/B;->b:[B

    invoke-virtual {v2, v3, v0, v1}, Lq/k3;->m([BII)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public final hashCode()I
    .registers 6

    iget v0, p0, Lq/B;->a:I

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v0

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v1

    move v3, v0

    move v2, v1

    :goto_e
    add-int v4, v1, v0

    if-ge v2, v4, :cond_1c

    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lq/B;->b:[B

    aget-byte v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    if-nez v3, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    iput v0, p0, Lq/B;->a:I

    :cond_23
    return v0
.end method

.method public final i()Lq/C;
    .registers 5

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v0

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lq/B;->b:[B

    invoke-static {v3, v0, v1, v2}, Lq/E;->d([BIIZ)Lq/C;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lq/z;

    invoke-direct {v0, p0}, Lq/z;-><init>(Lq/B;)V

    return-object v0
.end method

.method public final j(II)Lq/B;
    .registers 5

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lq/B;->c(III)I

    move-result p2

    if-nez p2, :cond_d

    sget-object p1, Lq/B;->c:Lq/B;

    return-object p1

    :cond_d
    new-instance v0, Lq/A;

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Lq/B;->b:[B

    invoke-direct {v0, p1, v1, p2}, Lq/A;-><init>([BII)V

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 6

    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    goto :goto_1b

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lq/B;->f()I

    move-result v2

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v3

    iget-object v4, p0, Lq/B;->b:[B

    invoke-direct {v1, v4, v2, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1b
    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lq/B;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v1

    invoke-virtual {p0}, Lq/B;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_1b

    invoke-static {p0}, Lq/k;->c(Lq/B;)Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lq/B;->j(II)Lq/B;

    move-result-object v3

    invoke-static {v3}, Lq/k;->c(Lq/B;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<ByteString@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
