.class public final Lq/F;
.super Lq/k3;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/logging/Logger;

.field public static final k:Z


# instance fields
.field public final g:[B

.field public final h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lq/F;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lq/F;->j:Ljava/util/logging/Logger;

    sget-boolean v0, Lq/b5;->d:Z

    sput-boolean v0, Lq/F;->k:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_13

    iput-object p1, p0, Lq/F;->g:[B

    iput p2, p0, Lq/F;->i:I

    iput v2, p0, Lq/F;->h:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p(I)I
    .registers 1

    invoke-static {p0}, Lq/F;->x(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static q(Lq/B;)I
    .registers 2

    invoke-virtual {p0}, Lq/B;->size()I

    move-result p0

    invoke-static {p0}, Lq/F;->y(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static r(II)I
    .registers 2

    invoke-static {p0}, Lq/F;->x(I)I

    move-result p0

    invoke-static {p1}, Lq/F;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static s(II)I
    .registers 2

    invoke-static {p0}, Lq/F;->x(I)I

    move-result p0

    invoke-static {p1}, Lq/F;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static t(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lq/F;->y(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static u(ILq/Q3;)I
    .registers 2

    invoke-static {p0}, Lq/F;->x(I)I

    move-result p0

    invoke-static {p1}, Lq/F;->v(Lq/Q3;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static v(Lq/Q3;)I
    .registers 2

    invoke-interface {p0}, Lq/Q3;->e()I

    move-result p0

    invoke-static {p0}, Lq/F;->y(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lq/i5;->b(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Lq/h5; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_c
    invoke-static {p0}, Lq/F;->y(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static x(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lq/F;->y(I)I

    move-result p0

    return p0
.end method

.method public static y(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static z(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method


# virtual methods
.method public final A(B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lq/F;->g:[B

    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq/F;->i:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance v0, Lq/G;

    iget v1, p0, Lq/F;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lq/F;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lq/G;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final B([BII)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lq/F;->g:[B

    iget v1, p0, Lq/F;->i:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lq/F;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lq/F;->i:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p2, Lq/G;

    iget v0, p0, Lq/F;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lq/F;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lq/G;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final C(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lq/F;->M(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lq/F;->A(B)V

    return-void
.end method

.method public final D(Lq/B;)V
    .registers 4

    invoke-virtual {p1}, Lq/B;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lq/F;->N(I)V

    invoke-virtual {p1}, Lq/B;->f()I

    move-result v0

    invoke-virtual {p1}, Lq/B;->size()I

    move-result v1

    iget-object p1, p1, Lq/B;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lq/F;->B([BII)V

    return-void
.end method

.method public final E(I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lq/F;->g:[B

    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq/F;->i:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lq/F;->i:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lq/F;->i:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/F;->i:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

    new-instance v0, Lq/G;

    iget v1, p0, Lq/F;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lq/F;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lq/G;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final F(J)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lq/F;->g:[B

    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq/F;->i:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lq/F;->i:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lq/F;->i:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lq/F;->i:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Lq/F;->i:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Lq/F;->i:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    iput v2, p0, Lq/F;->i:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lq/F;->i:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_6e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6e} :catch_6f

    return-void

    :catch_6f
    move-exception p1

    new-instance p2, Lq/G;

    iget v0, p0, Lq/F;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lq/F;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lq/G;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final G(ILq/Q3;)V
    .registers 4

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lq/F;->M(II)V

    invoke-interface {p2, p0}, Lq/Q3;->c(Lq/F;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lq/F;->M(II)V

    return-void
.end method

.method public final H(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lq/F;->M(II)V

    invoke-virtual {p0, p2}, Lq/F;->I(I)V

    return-void
.end method

.method public final I(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lq/F;->N(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lq/F;->O(J)V

    :goto_a
    return-void
.end method

.method public final J(ILq/Q3;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lq/F;->M(II)V

    invoke-virtual {p0, p2}, Lq/F;->K(Lq/Q3;)V

    return-void
.end method

.method public final K(Lq/Q3;)V
    .registers 3

    invoke-interface {p1}, Lq/Q3;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lq/F;->N(I)V

    invoke-interface {p1, p0}, Lq/Q3;->c(Lq/F;)V

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .registers 8

    iget v0, p0, Lq/F;->i:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lq/F;->y(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lq/F;->y(I)I

    move-result v2
    :try_end_14
    .catch Lq/h5; {:try_start_2 .. :try_end_14} :catch_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_14} :catch_30

    iget-object v3, p0, Lq/F;->g:[B

    iget v4, p0, Lq/F;->h:I

    if-ne v2, v1, :cond_34

    add-int v1, v0, v2

    :try_start_1c
    iput v1, p0, Lq/F;->i:I

    sub-int/2addr v4, v1

    sget-object v5, Lq/i5;->a:Lq/k3;

    invoke-virtual {v5, v1, v4, p1, v3}, Lq/k3;->e(IILjava/lang/String;[B)I

    move-result v1

    iput v0, p0, Lq/F;->i:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lq/F;->N(I)V

    iput v1, p0, Lq/F;->i:I

    goto :goto_67

    :catch_30
    move-exception p1

    goto :goto_47

    :catch_32
    move-exception v1

    goto :goto_4d

    :cond_34
    invoke-static {p1}, Lq/i5;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lq/F;->N(I)V

    iget v1, p0, Lq/F;->i:I

    sub-int/2addr v4, v1

    sget-object v2, Lq/i5;->a:Lq/k3;

    invoke-virtual {v2, v1, v4, p1, v3}, Lq/k3;->e(IILjava/lang/String;[B)I

    move-result v1

    iput v1, p0, Lq/F;->i:I
    :try_end_46
    .catch Lq/h5; {:try_start_1c .. :try_end_46} :catch_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_46} :catch_30

    goto :goto_67

    :goto_47
    new-instance v0, Lq/G;

    invoke-direct {v0, p1}, Lq/G;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v0

    :goto_4d
    iput v0, p0, Lq/F;->i:I

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v3, Lq/F;->j:Ljava/util/logging/Logger;

    invoke-virtual {v3, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_5e
    array-length v0, p1

    invoke-virtual {p0, v0}, Lq/F;->N(I)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lq/F;->B([BII)V
    :try_end_67
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5e .. :try_end_67} :catch_68

    :goto_67
    return-void

    :catch_68
    move-exception p1

    new-instance v0, Lq/G;

    invoke-direct {v0, p1}, Lq/G;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final M(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lq/F;->N(I)V

    return-void
.end method

.method public final N(I)V
    .registers 6

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lq/F;->g:[B

    if-nez v0, :cond_12

    :try_start_6
    iget v0, p0, Lq/F;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lq/F;->i:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :catch_10
    move-exception p1

    goto :goto_22

    :cond_12
    iget v0, p0, Lq/F;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lq/F;->i:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_1f} :catch_10

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_22
    new-instance v0, Lq/G;

    iget v1, p0, Lq/F;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lq/F;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lq/G;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final O(J)V
    .registers 13

    iget-object v0, p0, Lq/F;->g:[B

    sget-boolean v1, Lq/F;->k:Z

    iget v2, p0, Lq/F;->h:I

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x80

    if-eqz v1, :cond_3a

    iget v1, p0, Lq/F;->i:I

    sub-int v1, v2, v1

    const/16 v8, 0xa

    if-lt v1, v8, :cond_3a

    :goto_15
    and-long v1, p1, v6

    cmp-long v1, v1, v4

    if-nez v1, :cond_28

    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq/F;->i:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lq/b5;->j([BJB)V

    return-void

    :cond_28
    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq/F;->i:I

    int-to-long v1, v1

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v1, v2, v8}, Lq/b5;->j([BJB)V

    ushr-long/2addr p1, v3

    goto :goto_15

    :cond_3a
    :goto_3a
    and-long v8, p1, v6

    cmp-long v1, v8, v4

    if-nez v1, :cond_4d

    :try_start_40
    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lq/F;->i:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_4b
    move-exception p1

    goto :goto_5d

    :cond_4d
    iget v1, p0, Lq/F;->i:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lq/F;->i:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v1
    :try_end_5b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_5b} :catch_4b

    ushr-long/2addr p1, v3

    goto :goto_3a

    :goto_5d
    new-instance p2, Lq/G;

    iget v0, p0, Lq/F;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lq/G;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method
