.class public final Lq/C;
.super Lq/E;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public final f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>([BIIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p4, 0x7fffffff

    iput p4, p0, Lq/C;->h:I

    iput-object p1, p0, Lq/C;->b:[B

    add-int/2addr p3, p2

    iput p3, p0, Lq/C;->c:I

    iput p2, p0, Lq/C;->e:I

    iput p2, p0, Lq/C;->f:I

    return-void
.end method


# virtual methods
.method public final A()I
    .registers 2

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    return v0
.end method

.method public final B()J
    .registers 3

    invoke-virtual {p0}, Lq/C;->G()J

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

    invoke-virtual {p0, v3}, Lq/C;->J(I)V

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

    invoke-virtual {p0, p1}, Lq/C;->a(I)V

    return v0

    :cond_2d
    invoke-virtual {p0}, Lq/C;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/C;->J(I)V

    return v0

    :cond_35
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lq/C;->J(I)V

    return v0

    :cond_3b
    iget p1, p0, Lq/C;->c:I

    iget v1, p0, Lq/C;->e:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lq/C;->b:[B

    const/16 v3, 0xa

    if-lt p1, v3, :cond_5a

    :goto_46
    if-ge v2, v3, :cond_55

    iget p1, p0, Lq/C;->e:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lq/C;->e:I

    aget-byte p1, v1, p1

    if-ltz p1, :cond_53

    goto :goto_6a

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

    iget p1, p0, Lq/C;->e:I

    iget v4, p0, Lq/C;->c:I

    if-eq p1, v4, :cond_6d

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lq/C;->e:I

    aget-byte p1, v1, p1

    if-ltz p1, :cond_6b

    :goto_6a
    return v0

    :cond_6b
    add-int/2addr v2, v0

    goto :goto_5a

    :cond_6d
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_72
    invoke-static {}, Lq/U2;->b()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final E()I
    .registers 5

    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lq/C;->e:I

    iget-object v1, p0, Lq/C;->b:[B

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

    :cond_2e
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final F()J
    .registers 10

    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5b

    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lq/C;->e:I

    iget-object v1, p0, Lq/C;->b:[B

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

    :cond_5b
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final G()J
    .registers 13

    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->c:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b6

    :cond_8
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lq/C;->b:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_14

    iput v2, p0, Lq/C;->e:I

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
    invoke-virtual {p0}, Lq/C;->H()J

    move-result-wide v0

    return-wide v0

    :cond_bb
    move v1, v0

    :cond_bc
    move-wide v2, v4

    :goto_bd
    iput v1, p0, Lq/C;->e:I

    return-wide v2
.end method

.method public final H()J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_27

    iget v3, p0, Lq/C;->e:I

    iget v4, p0, Lq/C;->c:I

    if-eq v3, v4, :cond_22

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lq/C;->e:I

    iget-object v4, p0, Lq/C;->b:[B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1f

    return-wide v0

    :cond_1f
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_22
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object v0

    throw v0

    :cond_27
    invoke-static {}, Lq/U2;->b()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final I()V
    .registers 4

    iget v0, p0, Lq/C;->c:I

    iget v1, p0, Lq/C;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lq/C;->c:I

    iget v1, p0, Lq/C;->f:I

    sub-int v1, v0, v1

    iget v2, p0, Lq/C;->h:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    iput v1, p0, Lq/C;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lq/C;->c:I

    goto :goto_19

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lq/C;->d:I

    :goto_19
    return-void
.end method

.method public final J(I)V
    .registers 4

    if-ltz p1, :cond_d

    iget v0, p0, Lq/C;->c:I

    iget v1, p0, Lq/C;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    iput v1, p0, Lq/C;->e:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final a(I)V
    .registers 3

    iget v0, p0, Lq/C;->g:I

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

    iget v0, p0, Lq/C;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lq/C;->e:I

    iget v2, p0, Lq/C;->f:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lq/C;->h:I

    invoke-virtual {p0}, Lq/C;->I()V

    return-void
.end method

.method public final f(I)I
    .registers 4

    if-ltz p1, :cond_21

    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->f:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-ltz v0, :cond_19

    iget p1, p0, Lq/C;->h:I

    if-gt v0, p1, :cond_14

    iput v0, p0, Lq/C;->h:I

    invoke-virtual {p0}, Lq/C;->I()V

    return p1

    :cond_14
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1

    :cond_19
    new-instance p1, Lq/U2;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final g()Z
    .registers 5

    invoke-virtual {p0}, Lq/C;->G()J

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
    .registers 5

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    iget-object v1, p0, Lq/C;->b:[B

    if-lez v0, :cond_19

    iget v2, p0, Lq/C;->c:I

    iget v3, p0, Lq/C;->e:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_19

    invoke-static {v1, v3, v0}, Lq/B;->d([BII)Lq/B;

    move-result-object v1

    iget v2, p0, Lq/C;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lq/C;->e:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    sget-object v0, Lq/B;->c:Lq/B;

    return-object v0

    :cond_1e
    if-lez v0, :cond_2f

    iget v2, p0, Lq/C;->c:I

    iget v3, p0, Lq/C;->e:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2f

    add-int/2addr v0, v3

    iput v0, p0, Lq/C;->e:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_35

    :cond_2f
    if-gtz v0, :cond_42

    if-nez v0, :cond_3d

    sget-object v0, Lq/S2;->c:[B

    :goto_35
    sget-object v1, Lq/B;->c:Lq/B;

    new-instance v1, Lq/B;

    invoke-direct {v1, v0}, Lq/B;-><init>([B)V

    return-object v1

    :cond_3d
    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object v0

    throw v0

    :cond_42
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final i()D
    .registers 3

    invoke-virtual {p0}, Lq/C;->F()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final j()I
    .registers 2

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    return v0
.end method

.method public final k()I
    .registers 2

    invoke-virtual {p0}, Lq/C;->E()I

    move-result v0

    return v0
.end method

.method public final l()J
    .registers 3

    invoke-virtual {p0}, Lq/C;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()F
    .registers 2

    invoke-virtual {p0}, Lq/C;->E()I

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

    invoke-virtual {p0, p1}, Lq/C;->a(I)V

    iget p1, p0, Lq/E;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lq/E;->a:I

    return-void
.end method

.method public final o()I
    .registers 2

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    return v0
.end method

.method public final p()J
    .registers 3

    invoke-virtual {p0}, Lq/C;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Lq/m4;Lq/d2;)Lq/Q3;
    .registers 5

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    invoke-virtual {p0}, Lq/E;->b()V

    invoke-virtual {p0, v0}, Lq/C;->f(I)I

    move-result v0

    iget v1, p0, Lq/E;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/E;->a:I

    invoke-interface {p1, p0, p2}, Lq/m4;->a(Lq/E;Lq/d2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/Q3;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lq/C;->a(I)V

    iget p2, p0, Lq/E;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lq/E;->a:I

    invoke-virtual {p0}, Lq/C;->c()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, v0}, Lq/C;->e(I)V

    return-object p1

    :cond_2b
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final r(Lq/P3;Lq/d2;)V
    .registers 5

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    invoke-virtual {p0}, Lq/E;->b()V

    invoke-virtual {p0, v0}, Lq/C;->f(I)I

    move-result v0

    iget v1, p0, Lq/E;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/E;->a:I

    invoke-interface {p1, p0, p2}, Lq/P3;->d(Lq/E;Lq/d2;)Lq/P3;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq/C;->a(I)V

    iget p1, p0, Lq/E;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lq/E;->a:I

    invoke-virtual {p0}, Lq/C;->c()I

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0, v0}, Lq/C;->e(I)V

    return-void

    :cond_28
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object p1

    throw p1
.end method

.method public final s()I
    .registers 8

    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->c:I

    if-ne v1, v0, :cond_7

    goto :goto_6b

    :cond_7
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lq/C;->b:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_12

    iput v2, p0, Lq/C;->e:I

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
    invoke-virtual {p0}, Lq/C;->H()J

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
    iput v1, p0, Lq/C;->e:I

    return v0
.end method

.method public final t()I
    .registers 2

    invoke-virtual {p0}, Lq/C;->E()I

    move-result v0

    return v0
.end method

.method public final u()J
    .registers 3

    invoke-virtual {p0}, Lq/C;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()I
    .registers 3

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final w()J
    .registers 7

    invoke-virtual {p0}, Lq/C;->G()J

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

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    if-lez v0, :cond_1c

    iget v1, p0, Lq/C;->c:I

    iget v2, p0, Lq/C;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lq/C;->b:[B

    sget-object v4, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lq/C;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lq/C;->e:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    :cond_21
    if-gez v0, :cond_28

    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object v0

    throw v0

    :cond_28
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    if-lez v0, :cond_1b

    iget v1, p0, Lq/C;->c:I

    iget v2, p0, Lq/C;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    sget-object v1, Lq/i5;->a:Lq/k3;

    iget-object v3, p0, Lq/C;->b:[B

    invoke-virtual {v1, v3, v2, v0}, Lq/k3;->c([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lq/C;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lq/C;->e:I

    return-object v1

    :cond_1b
    if-nez v0, :cond_20

    const-string v0, ""

    return-object v0

    :cond_20
    if-gtz v0, :cond_27

    invoke-static {}, Lq/U2;->c()Lq/U2;

    move-result-object v0

    throw v0

    :cond_27
    invoke-static {}, Lq/U2;->d()Lq/U2;

    move-result-object v0

    throw v0
.end method

.method public final z()I
    .registers 3

    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->c:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lq/C;->g:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lq/C;->s()I

    move-result v0

    iput v0, p0, Lq/C;->g:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    :cond_15
    new-instance v0, Lq/U2;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
