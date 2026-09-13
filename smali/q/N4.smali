.class public abstract Lq/N4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lq/N4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    sget v0, Lq/P4;->b:I

    sget-object v0, Lq/O4;->a:Lq/P4;

    return-void
.end method

.method public static a(B)I
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    add-int/lit8 p0, p0, -0x37

    return p0
.end method

.method public static b(B)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static c(Ljava/lang/String;ZZ)J
    .registers 10

    const-string v0, "-"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :cond_c
    move v0, v1

    goto :goto_1a

    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number must be positive: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1a
    const-string v2, "0x"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_28

    add-int/lit8 v1, v1, 0x2

    move v2, v3

    goto :goto_35

    :cond_28
    const-string v2, "0"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v2, 0x8

    goto :goto_35

    :cond_33
    const/16 v2, 0xa

    :goto_35
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Number out of range for 32-bit unsigned integer: "

    const-string v6, "Number out of range for 32-bit signed integer: "

    if-ge v4, v3, :cond_82

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    if-eqz v0, :cond_4a

    neg-long v1, v1

    :cond_4a
    if-nez p2, :cond_da

    if-eqz p1, :cond_68

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v1, p1

    if-gtz p1, :cond_5e

    const-wide/32 p1, -0x80000000

    cmp-long p1, v1, p1

    if-ltz p1, :cond_5e

    goto/16 :goto_da

    :cond_5e
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    const-wide p1, 0x100000000L

    cmp-long p1, v1, p1

    if-gez p1, :cond_78

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-ltz p1, :cond_78

    goto :goto_da

    :cond_78
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_82
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_8d

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_8d
    if-nez p2, :cond_b7

    if-eqz p1, :cond_a4

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_9a

    goto :goto_d6

    :cond_9a
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a4
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_ad

    goto :goto_d6

    :cond_ad
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    if-eqz p1, :cond_ce

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_c2

    goto :goto_d6

    :cond_c2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ce
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_db

    :goto_d6
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    :cond_da
    :goto_da
    return-wide v1

    :cond_db
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;)Lq/B;
    .registers 18

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lq/B;->c:Lq/B;

    new-instance v5, Lq/B;

    sget-object v6, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v5, v4}, Lq/B;-><init>([B)V

    array-length v6, v4

    new-array v7, v6, [B

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1e
    array-length v11, v4

    if-ge v9, v11, :cond_263

    aget-byte v11, v4, v9

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_259

    add-int/lit8 v11, v9, 0x1

    array-length v13, v4

    if-ge v11, v13, :cond_251

    aget-byte v13, v4, v11

    const/16 v14, 0x30

    if-gt v14, v13, :cond_67

    const/16 v15, 0x37

    if-gt v13, v15, :cond_67

    invoke-static {v13}, Lq/N4;->a(B)I

    move-result v12

    add-int/lit8 v9, v9, 0x2

    array-length v13, v4

    if-ge v9, v13, :cond_4c

    aget-byte v13, v4, v9

    if-gt v14, v13, :cond_4c

    if-gt v13, v15, :cond_4c

    mul-int/2addr v12, v2

    invoke-static {v13}, Lq/N4;->a(B)I

    move-result v11

    add-int/2addr v12, v11

    move v11, v9

    :cond_4c
    add-int/lit8 v9, v11, 0x1

    array-length v13, v4

    if-ge v9, v13, :cond_5e

    aget-byte v13, v4, v9

    if-gt v14, v13, :cond_5e

    if-gt v13, v15, :cond_5e

    mul-int/2addr v12, v2

    invoke-static {v13}, Lq/N4;->a(B)I

    move-result v11

    add-int/2addr v12, v11

    goto :goto_5f

    :cond_5e
    move v9, v11

    :goto_5f
    add-int/lit8 v11, v10, 0x1

    int-to-byte v12, v12

    aput-byte v12, v7, v10

    :goto_64
    move v10, v11

    goto/16 :goto_25e

    :cond_67
    const/16 v14, 0x22

    if-eq v13, v14, :cond_24c

    const/16 v14, 0x27

    if-eq v13, v14, :cond_247

    const/16 v15, 0x3f

    if-eq v13, v15, :cond_240

    const/16 v15, 0x55

    if-eq v13, v15, :cond_198

    if-eq v13, v12, :cond_192

    const/16 v12, 0x66

    const/16 v15, 0xc

    if-eq v13, v12, :cond_18c

    const/16 v12, 0x6e

    if-eq v13, v12, :cond_186

    const/16 v12, 0x72

    if-eq v13, v12, :cond_17e

    const/16 v12, 0x78

    if-eq v13, v12, :cond_144

    const/16 v12, 0x61

    if-eq v13, v12, :cond_13d

    const/16 v12, 0x62

    if-eq v13, v12, :cond_137

    packed-switch v13, :pswitch_data_270

    new-instance v0, Lq/K4;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escape sequence: \'\\"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ae  #0x76
    add-int/lit8 v9, v10, 0x1

    const/16 v12, 0xb

    aput-byte v12, v7, v10

    :goto_b4
    move v10, v9

    :goto_b5
    move v9, v11

    goto/16 :goto_25e

    :pswitch_b8  #0x75
    add-int/lit8 v11, v9, 0x2

    add-int/lit8 v12, v9, 0x5

    array-length v13, v4

    if-ge v12, v13, :cond_129

    aget-byte v13, v4, v11

    invoke-static {v13}, Lq/N4;->b(B)Z

    move-result v13

    if-eqz v13, :cond_129

    add-int/lit8 v13, v9, 0x3

    aget-byte v14, v4, v13

    invoke-static {v14}, Lq/N4;->b(B)Z

    move-result v14

    if-eqz v14, :cond_129

    add-int/lit8 v9, v9, 0x4

    aget-byte v14, v4, v9

    invoke-static {v14}, Lq/N4;->b(B)Z

    move-result v14

    if-eqz v14, :cond_129

    aget-byte v14, v4, v12

    invoke-static {v14}, Lq/N4;->b(B)Z

    move-result v14

    if-eqz v14, :cond_129

    aget-byte v11, v4, v11

    invoke-static {v11}, Lq/N4;->a(B)I

    move-result v11

    shl-int/2addr v11, v15

    aget-byte v13, v4, v13

    invoke-static {v13}, Lq/N4;->a(B)I

    move-result v13

    shl-int/2addr v13, v2

    or-int/2addr v11, v13

    aget-byte v9, v4, v9

    invoke-static {v9}, Lq/N4;->a(B)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v11

    aget-byte v11, v4, v12

    invoke-static {v11}, Lq/N4;->a(B)I

    move-result v11

    or-int/2addr v9, v11

    int-to-char v9, v9

    const v11, 0xd800

    if-lt v9, v11, :cond_116

    const v11, 0xdfff

    if-le v9, v11, :cond_10e

    goto :goto_116

    :cond_10e
    new-instance v0, Lq/K4;

    const-string v1, "Invalid escape sequence: \'\\u\' refers to a surrogate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_116
    :goto_116
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    array-length v11, v9

    invoke-static {v9, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v10, v9

    :goto_126
    move v9, v12

    goto/16 :goto_25e

    :cond_129
    new-instance v0, Lq/K4;

    const-string v1, "Invalid escape sequence: \'\\u\' with too few hex chars"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_131  #0x74
    add-int/lit8 v9, v10, 0x1

    aput-byte v1, v7, v10

    goto/16 :goto_b4

    :cond_137
    add-int/lit8 v9, v10, 0x1

    aput-byte v2, v7, v10

    goto/16 :goto_b4

    :cond_13d
    add-int/lit8 v9, v10, 0x1

    const/4 v12, 0x7

    aput-byte v12, v7, v10

    goto/16 :goto_b4

    :cond_144
    add-int/lit8 v11, v9, 0x2

    array-length v12, v4

    if-ge v11, v12, :cond_176

    aget-byte v12, v4, v11

    invoke-static {v12}, Lq/N4;->b(B)Z

    move-result v12

    if-eqz v12, :cond_176

    aget-byte v12, v4, v11

    invoke-static {v12}, Lq/N4;->a(B)I

    move-result v12

    add-int/lit8 v9, v9, 0x3

    array-length v13, v4

    if-ge v9, v13, :cond_16e

    aget-byte v13, v4, v9

    invoke-static {v13}, Lq/N4;->b(B)Z

    move-result v13

    if-eqz v13, :cond_16e

    mul-int/lit8 v12, v12, 0x10

    aget-byte v11, v4, v9

    invoke-static {v11}, Lq/N4;->a(B)I

    move-result v11

    add-int/2addr v12, v11

    goto :goto_16f

    :cond_16e
    move v9, v11

    :goto_16f
    add-int/lit8 v11, v10, 0x1

    int-to-byte v12, v12

    aput-byte v12, v7, v10

    goto/16 :goto_64

    :cond_176
    new-instance v0, Lq/K4;

    const-string v1, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17e
    add-int/lit8 v9, v10, 0x1

    const/16 v12, 0xd

    aput-byte v12, v7, v10

    goto/16 :goto_b4

    :cond_186
    add-int/lit8 v9, v10, 0x1

    aput-byte v0, v7, v10

    goto/16 :goto_b4

    :cond_18c
    add-int/lit8 v9, v10, 0x1

    aput-byte v15, v7, v10

    goto/16 :goto_b4

    :cond_192
    add-int/lit8 v9, v10, 0x1

    aput-byte v12, v7, v10

    goto/16 :goto_b4

    :cond_198
    add-int/lit8 v11, v9, 0x2

    add-int/lit8 v12, v9, 0x9

    array-length v13, v4

    const-string v14, "Invalid escape sequence: \'\\U\' with too few hex chars"

    if-ge v12, v13, :cond_23a

    move v15, v8

    move v13, v11

    :goto_1a3
    add-int/lit8 v1, v9, 0xa

    if-ge v13, v1, :cond_1be

    aget-byte v1, v4, v13

    invoke-static {v1}, Lq/N4;->b(B)Z

    move-result v16

    if-eqz v16, :cond_1b8

    shl-int/lit8 v15, v15, 0x4

    invoke-static {v1}, Lq/N4;->a(B)I

    move-result v1

    or-int/2addr v15, v1

    add-int/2addr v13, v3

    goto :goto_1a3

    :cond_1b8
    new-instance v0, Lq/K4;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1be
    invoke-static {v15}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v9

    const-string v13, "Invalid escape sequence: \'\\U"

    if-eqz v9, :cond_21b

    invoke-static {v15}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v9

    if-eqz v9, :cond_204

    sget-object v14, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e5

    sget-object v14, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e5

    sget-object v14, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e5

    goto :goto_204

    :cond_1e5
    new-instance v0, Lq/K4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v1}, Lq/B;->j(II)Lq/B;

    move-result-object v1

    invoke-virtual {v1}, Lq/B;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' refers to a surrogate code unit"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_204
    :goto_204
    filled-new-array {v15}, [I

    move-result-object v1

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1, v8, v3}, Ljava/lang/String;-><init>([III)V

    sget-object v1, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v9, v1

    invoke-static {v1, v8, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v10, v1

    goto/16 :goto_126

    :cond_21b
    new-instance v0, Lq/K4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v1}, Lq/B;->j(II)Lq/B;

    move-result-object v1

    invoke-virtual {v1}, Lq/B;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid code point value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23a
    new-instance v0, Lq/K4;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_240
    add-int/lit8 v1, v10, 0x1

    aput-byte v15, v7, v10

    :goto_244
    move v10, v1

    goto/16 :goto_b5

    :cond_247
    add-int/lit8 v1, v10, 0x1

    aput-byte v14, v7, v10

    goto :goto_244

    :cond_24c
    add-int/lit8 v1, v10, 0x1

    aput-byte v14, v7, v10

    goto :goto_244

    :cond_251
    new-instance v0, Lq/K4;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_259
    add-int/lit8 v1, v10, 0x1

    aput-byte v11, v7, v10

    move v10, v1

    :goto_25e
    add-int/2addr v9, v3

    const/16 v1, 0x9

    goto/16 :goto_1e

    :cond_263
    if-ne v6, v10, :cond_26b

    new-instance v0, Lq/B;

    invoke-direct {v0, v7}, Lq/B;-><init>([B)V

    goto :goto_26f

    :cond_26b
    invoke-static {v7, v8, v10}, Lq/B;->d([BII)Lq/B;

    move-result-object v0

    :goto_26f
    return-object v0

    :pswitch_data_270
    .packed-switch 0x74
        :pswitch_131  #00000074
        :pswitch_b8  #00000075
        :pswitch_ae  #00000076
    .end packed-switch
.end method
