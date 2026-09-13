.class public final Lq/D;
.super Lq/E;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lq/D;->i:I

    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1c

    iput-object p1, p0, Lq/D;->b:Ljava/io/InputStream;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lq/D;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lq/D;->d:I

    iput p1, p0, Lq/D;->f:I

    iput p1, p0, Lq/D;->h:I

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()I
    .registers 2

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    return v0
.end method

.method public final B()J
    .registers 3

    invoke-virtual {p0}, Lq/D;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C(I)Z
    .registers 7

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    if-eq v1, v0, :cond_35

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2d

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_23

    if-eq v1, v3, :cond_22

    const/4 p1, 0x5

    if-ne v1, p1, :cond_18

    invoke-virtual {p0, v3}, Lq/D;->N(I)V

    return v0

    :cond_18
    sget p1, Lq/U2;->a:I

    new-instance p1, Lq/T2;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    return v2

    :cond_23
    invoke-virtual {p0}, Lq/E;->D()V

    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lq/D;->a(I)V

    return v0

    :cond_2d
    invoke-virtual {p0}, Lq/D;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/D;->N(I)V

    return v0

    :cond_35
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lq/D;->N(I)V

    return v0

    :cond_3b
    iget p1, p0, Lq/D;->d:I

    iget v1, p0, Lq/D;->f:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lq/D;->c:[B

    const/16 v3, 0xa

    if-lt p1, v3, :cond_5a

    :goto_46
    if-ge v2, v3, :cond_55

    iget p1, p0, Lq/D;->f:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lq/D;->f:I

    aget-byte p1, v1, p1

    if-ltz p1, :cond_53

    goto :goto_6f

    :cond_53
    add-int/2addr v2, v0

    goto :goto_46

    :cond_55
    invoke-static {}, Lq/U2;->b()Lq/U2;

    move-result-object p1

    throw p1

    :cond_5a
    :goto_5a
    if-ge v2, v3, :cond_72

    iget p1, p0, Lq/D;->f:I

    iget v4, p0, Lq/D;->d:I

    if-ne p1, v4, :cond_65

    invoke-virtual {p0, v0}, Lq/D;->M(I)V

    :cond_65
    iget p1, p0, Lq/D;->f:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lq/D;->f:I

    aget-byte p1, v1, p1

    if-ltz p1, :cond_70

    :goto_6f
    return v0

    :cond_70
    add-int/2addr v2, v0

    goto :goto_5a

    :cond_72
    invoke-static {}, Lq/U2;->b()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final E(I)[B
    .registers 7

    invoke-virtual {p0, p1}, Lq/D;->F(I)[B

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget v0, p0, Lq/D;->f:I

    iget v1, p0, Lq/D;->d:I

    sub-int v2, v1, v0

    iget v3, p0, Lq/D;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lq/D;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lq/D;->f:I

    iput v1, p0, Lq/D;->d:I

    sub-int v3, p1, v2

    invoke-virtual {p0, v3}, Lq/D;->G(I)Ljava/util/ArrayList;

    move-result-object v3

    new-array p1, p1, [B

    iget-object v4, p0, Lq/D;->c:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_28

    :cond_3b
    return-object p1
.end method

.method public final F(I)[B
    .registers 8

    if-nez p1, :cond_5

    sget-object p1, Lq/S2;->c:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_6c

    iget v0, p0, Lq/D;->h:I

    iget v1, p0, Lq/D;->f:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    const v3, 0x7fffffff

    sub-int v3, v2, v3

    if-gtz v3, :cond_64

    iget v3, p0, Lq/D;->i:I

    if-gt v2, v3, :cond_5a

    iget v0, p0, Lq/D;->d:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    iget-object v3, p0, Lq/D;->b:Ljava/io/InputStream;

    if-lt v1, v2, :cond_2d

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return-object p1

    :cond_2d
    :goto_2d
    new-array v1, p1, [B

    iget v2, p0, Lq/D;->f:I

    iget-object v4, p0, Lq/D;->c:[B

    const/4 v5, 0x0

    invoke-static {v4, v2, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lq/D;->h:I

    iget v4, p0, Lq/D;->d:I

    add-int/2addr v2, v4

    iput v2, p0, Lq/D;->h:I

    iput v5, p0, Lq/D;->f:I

    iput v5, p0, Lq/D;->d:I

    :goto_42
    if-ge v0, p1, :cond_59

    sub-int v2, p1, v0

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_54

    iget v4, p0, Lq/D;->h:I

    add-int/2addr v4, v2

    iput v4, p0, Lq/D;->h:I

    add-int/2addr v0, v2

    goto :goto_42

    :cond_54
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_59
    return-object v1

    :cond_5a
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lq/D;->N(I)V

    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_64
    new-instance p1, Lq/U2;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final G(I)Ljava/util/ArrayList;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    iget-object v4, p0, Lq/D;->b:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    iget v5, p0, Lq/D;->h:I

    add-int/2addr v5, v4

    iput v5, p0, Lq/D;->h:I

    add-int/2addr v3, v4

    goto :goto_10

    :cond_24
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method public final H()I
    .registers 5

    iget v0, p0, Lq/D;->f:I

    iget v1, p0, Lq/D;->d:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v2}, Lq/D;->M(I)V

    iget v0, p0, Lq/D;->f:I

    :cond_d
    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lq/D;->f:I

    iget-object v1, p0, Lq/D;->c:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final I()J
    .registers 10

    iget v0, p0, Lq/D;->f:I

    iget v1, p0, Lq/D;->d:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    invoke-virtual {p0, v2}, Lq/D;->M(I)V

    iget v0, p0, Lq/D;->f:I

    :cond_e
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lq/D;->f:I

    iget-object v1, p0, Lq/D;->c:[B

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final J()J
    .registers 13

    iget v0, p0, Lq/D;->f:I

    iget v1, p0, Lq/D;->d:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b6

    :cond_8
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lq/D;->c:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_14

    iput v2, p0, Lq/D;->f:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1b

    goto/16 :goto_b6

    :cond_1b
    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_29

    xor-int/lit8 v0, v2, -0x80

    int-to-long v2, v0

    goto/16 :goto_bd

    :cond_29
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_38

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_bd

    :cond_38
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4b

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    :goto_46
    move-wide v10, v0

    move v1, v2

    move-wide v2, v10

    goto/16 :goto_bd

    :cond_4b
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    aget-byte v2, v3, v2

    int-to-long v6, v2

    const/16 v2, 0x1c

    shl-long/2addr v6, v2

    xor-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_60

    const-wide/32 v2, 0xfe03f80

    :goto_5e
    xor-long/2addr v2, v4

    goto :goto_bd

    :cond_60
    add-int/lit8 v2, v0, 0x6

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_74

    const-wide v0, -0x7f01fc080L

    :goto_72
    xor-long/2addr v0, v4

    goto :goto_46

    :cond_74
    add-int/lit8 v1, v0, 0x7

    aget-byte v2, v3, v2

    int-to-long v8, v2

    const/16 v2, 0x2a

    shl-long/2addr v8, v2

    xor-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_87

    const-wide v2, 0x3f80fe03f80L

    goto :goto_5e

    :cond_87
    add-int/lit8 v2, v0, 0x8

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_9a

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_72

    :cond_9a
    add-int/lit8 v1, v0, 0x9

    aget-byte v2, v3, v2

    int-to-long v8, v2

    const/16 v2, 0x38

    shl-long/2addr v8, v2

    xor-long/2addr v4, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-gez v2, :cond_bc

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v3, v1

    int-to-long v1, v1

    cmp-long v1, v1, v6

    if-gez v1, :cond_bb

    :goto_b6
    invoke-virtual {p0}, Lq/D;->K()J

    move-result-wide v0

    return-wide v0

    :cond_bb
    move v1, v0

    :cond_bc
    move-wide v2, v4

    :goto_bd
    iput v1, p0, Lq/D;->f:I

    return-wide v2
.end method

.method public final K()J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_28

    iget v3, p0, Lq/D;->f:I

    iget v4, p0, Lq/D;->d:I

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lq/D;->M(I)V

    :cond_11
    iget v3, p0, Lq/D;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lq/D;->f:I

    iget-object v4, p0, Lq/D;->c:[B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_25

    return-wide v0

    :cond_25
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_28
    invoke-static {}, Lq/U2;->b()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final L()V
    .registers 4

    iget v0, p0, Lq/D;->d:I

    iget v1, p0, Lq/D;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lq/D;->d:I

    iget v1, p0, Lq/D;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Lq/D;->i:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    iput v1, p0, Lq/D;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lq/D;->d:I

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lq/D;->e:I

    :goto_18
    return-void
.end method

.method public final M(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lq/D;->O(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const v0, 0x7fffffff

    iget v1, p0, Lq/D;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, Lq/D;->f:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_19

    new-instance p1, Lq/U2;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_1e
    return-void
.end method

.method public final N(I)V
    .registers 11

    iget v0, p0, Lq/D;->d:I

    iget v1, p0, Lq/D;->f:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_f

    if-ltz p1, :cond_f

    add-int/2addr v1, p1

    iput v1, p0, Lq/D;->f:I

    goto/16 :goto_90

    :cond_f
    iget-object v2, p0, Lq/D;->b:Ljava/io/InputStream;

    if-ltz p1, :cond_9b

    iget v3, p0, Lq/D;->h:I

    add-int v4, v3, v1

    add-int v5, v4, p1

    iget v6, p0, Lq/D;->i:I

    if-gt v5, v6, :cond_91

    iput v4, p0, Lq/D;->h:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iput v1, p0, Lq/D;->d:I

    iput v1, p0, Lq/D;->f:I

    :goto_25
    if-ge v0, p1, :cond_6b

    sub-int v1, p1, v0

    int-to-long v3, v1

    :try_start_2a
    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3e

    cmp-long v3, v5, v3

    if-gtz v3, :cond_3e

    if-nez v1, :cond_3b

    goto :goto_6b

    :cond_3b
    long-to-int v1, v5

    add-int/2addr v0, v1

    goto :goto_25

    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#skip returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_61
    .catchall {:try_start_2a .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    iget v1, p0, Lq/D;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/D;->h:I

    invoke-virtual {p0}, Lq/D;->L()V

    throw p1

    :cond_6b
    :goto_6b
    iget v1, p0, Lq/D;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/D;->h:I

    invoke-virtual {p0}, Lq/D;->L()V

    if-ge v0, p1, :cond_90

    iget v0, p0, Lq/D;->d:I

    iget v1, p0, Lq/D;->f:I

    sub-int v1, v0, v1

    iput v0, p0, Lq/D;->f:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lq/D;->M(I)V

    :goto_81
    sub-int v2, p1, v1

    iget v3, p0, Lq/D;->d:I

    if-le v2, v3, :cond_8e

    add-int/2addr v1, v3

    iput v3, p0, Lq/D;->f:I

    invoke-virtual {p0, v0}, Lq/D;->M(I)V

    goto :goto_81

    :cond_8e
    iput v2, p0, Lq/D;->f:I

    :cond_90
    :goto_90
    return-void

    :cond_91
    sub-int/2addr v6, v3

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lq/D;->N(I)V

    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_9b
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final O(I)Z
    .registers 8

    iget v0, p0, Lq/D;->f:I

    add-int v1, v0, p1

    iget v2, p0, Lq/D;->d:I

    if-le v1, v2, :cond_84

    iget v1, p0, Lq/D;->h:I

    const v3, 0x7fffffff

    sub-int v4, v3, v1

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    if-le p1, v4, :cond_14

    return v5

    :cond_14
    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v4, p0, Lq/D;->i:I

    if-le v1, v4, :cond_1b

    return v5

    :cond_1b
    iget-object v1, p0, Lq/D;->c:[B

    if-lez v0, :cond_31

    if-le v2, v0, :cond_25

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    iget v2, p0, Lq/D;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lq/D;->h:I

    iget v2, p0, Lq/D;->d:I

    sub-int/2addr v2, v0

    iput v2, p0, Lq/D;->d:I

    iput v5, p0, Lq/D;->f:I

    :cond_31
    iget v0, p0, Lq/D;->d:I

    array-length v2, v1

    sub-int/2addr v2, v0

    iget v4, p0, Lq/D;->h:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lq/D;->b:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_61

    const/4 v2, -0x1

    if-lt v0, v2, :cond_61

    array-length v1, v1

    if-gt v0, v1, :cond_61

    if-lez v0, :cond_60

    iget v1, p0, Lq/D;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/D;->d:I

    invoke-virtual {p0}, Lq/D;->L()V

    iget v0, p0, Lq/D;->d:I

    if-lt v0, p1, :cond_5b

    const/4 p1, 0x1

    goto :goto_5f

    :cond_5b
    invoke-virtual {p0, p1}, Lq/D;->O(I)Z

    move-result p1

    :goto_5f
    return p1

    :cond_60
    return v5

    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .registers 3

    iget v0, p0, Lq/D;->g:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lq/U2;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()I
    .registers 4

    iget v0, p0, Lq/D;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lq/D;->h:I

    iget v2, p0, Lq/D;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lq/D;->i:I

    invoke-virtual {p0}, Lq/D;->L()V

    return-void
.end method

.method public final f(I)I
    .registers 4

    if-ltz p1, :cond_17

    iget v0, p0, Lq/D;->h:I

    iget v1, p0, Lq/D;->f:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Lq/D;->i:I

    if-gt v0, p1, :cond_12

    iput v0, p0, Lq/D;->i:I

    invoke-virtual {p0}, Lq/D;->L()V

    return p1

    :cond_12
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_17
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final g()Z
    .registers 5

    invoke-virtual {p0}, Lq/D;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final h()Lq/B;
    .registers 8

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    iget v1, p0, Lq/D;->d:I

    iget v2, p0, Lq/D;->f:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lq/D;->c:[B

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    invoke-static {v3, v2, v0}, Lq/B;->d([BII)Lq/B;

    move-result-object v1

    iget v2, p0, Lq/D;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lq/D;->f:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    sget-object v0, Lq/B;->c:Lq/B;

    return-object v0

    :cond_1e
    if-ltz v0, :cond_67

    invoke-virtual {p0, v0}, Lq/D;->F(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    array-length v0, v1

    invoke-static {v1, v2, v0}, Lq/B;->d([BII)Lq/B;

    move-result-object v0

    goto :goto_66

    :cond_2d
    iget v1, p0, Lq/D;->f:I

    iget v4, p0, Lq/D;->d:I

    sub-int v5, v4, v1

    iget v6, p0, Lq/D;->h:I

    add-int/2addr v6, v4

    iput v6, p0, Lq/D;->h:I

    iput v2, p0, Lq/D;->f:I

    iput v2, p0, Lq/D;->d:I

    sub-int v4, v0, v5

    invoke-virtual {p0, v4}, Lq/D;->G(I)Ljava/util/ArrayList;

    move-result-object v4

    new-array v0, v0, [B

    invoke-static {v3, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v5, v3

    goto :goto_4b

    :cond_5e
    sget-object v1, Lq/B;->c:Lq/B;

    new-instance v1, Lq/B;

    invoke-direct {v1, v0}, Lq/B;-><init>([B)V

    move-object v0, v1

    :goto_66
    return-object v0

    :cond_67
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final i()D
    .registers 3

    invoke-virtual {p0}, Lq/D;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final j()I
    .registers 2

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    return v0
.end method

.method public final k()I
    .registers 2

    invoke-virtual {p0}, Lq/D;->H()I

    move-result v0

    return v0
.end method

.method public final l()J
    .registers 3

    invoke-virtual {p0}, Lq/D;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()F
    .registers 2

    invoke-virtual {p0}, Lq/D;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final n(ILq/P3;Lq/d2;)V
    .registers 5

    invoke-virtual {p0}, Lq/E;->b()V

    iget v0, p0, Lq/E;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/E;->a:I

    invoke-interface {p2, p0, p3}, Lq/P3;->d(Lq/E;Lq/d2;)Lq/P3;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lq/D;->a(I)V

    iget p1, p0, Lq/E;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lq/E;->a:I

    return-void
.end method

.method public final o()I
    .registers 2

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    return v0
.end method

.method public final p()J
    .registers 3

    invoke-virtual {p0}, Lq/D;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Lq/m4;Lq/d2;)Lq/Q3;
    .registers 5

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    invoke-virtual {p0}, Lq/E;->b()V

    invoke-virtual {p0, v0}, Lq/D;->f(I)I

    move-result v0

    iget v1, p0, Lq/E;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/E;->a:I

    invoke-interface {p1, p0, p2}, Lq/m4;->a(Lq/E;Lq/d2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/Q3;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lq/D;->a(I)V

    iget p2, p0, Lq/E;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lq/E;->a:I

    invoke-virtual {p0}, Lq/D;->c()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, v0}, Lq/D;->e(I)V

    return-object p1

    :cond_2b
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final r(Lq/P3;Lq/d2;)V
    .registers 5

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    invoke-virtual {p0}, Lq/E;->b()V

    invoke-virtual {p0, v0}, Lq/D;->f(I)I

    move-result v0

    iget v1, p0, Lq/E;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/E;->a:I

    invoke-interface {p1, p0, p2}, Lq/P3;->d(Lq/E;Lq/d2;)Lq/P3;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq/D;->a(I)V

    iget p1, p0, Lq/E;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lq/E;->a:I

    invoke-virtual {p0}, Lq/D;->c()I

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0, v0}, Lq/D;->e(I)V

    return-void

    :cond_28
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final s()I
    .registers 8

    iget v0, p0, Lq/D;->f:I

    iget v1, p0, Lq/D;->d:I

    if-ne v1, v0, :cond_7

    goto :goto_6b

    :cond_7
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lq/D;->c:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_12

    iput v2, p0, Lq/D;->f:I

    return v4

    :cond_12
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-ge v1, v5, :cond_18

    goto :goto_6b

    :cond_18
    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_24

    xor-int/lit8 v0, v2, -0x80

    goto :goto_79

    :cond_24
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_31

    xor-int/lit16 v0, v1, 0x3f80

    :goto_2f
    move v1, v4

    goto :goto_79

    :cond_31
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_40

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_3e
    move v1, v2

    goto :goto_79

    :cond_40
    add-int/lit8 v4, v0, 0x5

    aget-byte v2, v3, v2

    shl-int/lit8 v5, v2, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v2, :cond_75

    add-int/lit8 v2, v0, 0x6

    aget-byte v4, v3, v4

    if-gez v4, :cond_77

    add-int/lit8 v4, v0, 0x7

    aget-byte v2, v3, v2

    if-gez v2, :cond_75

    add-int/lit8 v2, v0, 0x8

    aget-byte v4, v3, v4

    if-gez v4, :cond_77

    add-int/lit8 v4, v0, 0x9

    aget-byte v2, v3, v2

    if-gez v2, :cond_75

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v3, v4

    if-gez v2, :cond_71

    :goto_6b
    invoke-virtual {p0}, Lq/D;->K()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_71
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_79

    :cond_75
    move v0, v1

    goto :goto_2f

    :cond_77
    move v0, v1

    goto :goto_3e

    :goto_79
    iput v1, p0, Lq/D;->f:I

    return v0
.end method

.method public final t()I
    .registers 2

    invoke-virtual {p0}, Lq/D;->H()I

    move-result v0

    return v0
.end method

.method public final u()J
    .registers 3

    invoke-virtual {p0}, Lq/D;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()I
    .registers 3

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final w()J
    .registers 7

    invoke-virtual {p0}, Lq/D;->J()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final x()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    iget-object v1, p0, Lq/D;->c:[B

    if-lez v0, :cond_1c

    iget v2, p0, Lq/D;->d:I

    iget v3, p0, Lq/D;->f:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1c

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lq/D;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/D;->f:I

    return-object v2

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    :cond_21
    if-ltz v0, :cond_45

    iget v2, p0, Lq/D;->d:I

    if-gt v0, v2, :cond_39

    invoke-virtual {p0, v0}, Lq/D;->M(I)V

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lq/D;->f:I

    sget-object v4, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lq/D;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/D;->f:I

    return-object v2

    :cond_39
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lq/D;->E(I)[B

    move-result-object v0

    sget-object v2, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_45
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    iget v1, p0, Lq/D;->f:I

    iget v2, p0, Lq/D;->d:I

    sub-int v3, v2, v1

    iget-object v4, p0, Lq/D;->c:[B

    if-gt v0, v3, :cond_15

    if-lez v0, :cond_15

    add-int v2, v1, v0

    iput v2, p0, Lq/D;->f:I

    goto :goto_29

    :cond_15
    if-nez v0, :cond_1a

    const-string v0, ""

    return-object v0

    :cond_1a
    if-ltz v0, :cond_30

    const/4 v1, 0x0

    if-gt v0, v2, :cond_25

    invoke-virtual {p0, v0}, Lq/D;->M(I)V

    iput v0, p0, Lq/D;->f:I

    goto :goto_29

    :cond_25
    invoke-virtual {p0, v0}, Lq/D;->E(I)[B

    move-result-object v4

    :goto_29
    sget-object v2, Lq/i5;->a:Lq/k3;

    invoke-virtual {v2, v4, v1, v0}, Lq/k3;->c([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final z()I
    .registers 3

    iget v0, p0, Lq/D;->f:I

    iget v1, p0, Lq/D;->d:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lq/D;->O(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Lq/D;->g:I

    return v0

    :cond_15
    invoke-virtual {p0}, Lq/D;->s()I

    move-result v0

    iput v0, p0, Lq/D;->g:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_20

    return v0

    :cond_20
    new-instance v0, Lq/U2;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
