.class public abstract Lq/V3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "QHMODL02"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lq/V3;->a:[B

    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_1c

    sput-object v1, Lq/V3;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    sput-object v0, Lq/V3;->c:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x71
        0xd
        0xa8
        0x52
        0xe3
        0x29
        0x47
        0xbc
        0x16
        0xf4
        0x9b
        0x63
        0x2a
        0xd5
        0x80
        0x3e
        0xc1
        0x57
        0x4
        0x99
        0x6d
        0xb2
        0x38
        0xef
        0x45
        0x8c
        0xda
        0x20
        0x7f
        0x13
        0xb6
        0x5a
    .end array-data

    :array_60
    .array-data 4
        0x9c
        0x32
        0x65
        0xf1
        0xb
        0x87
        0xd4
        0x5e
        0xa3
        0x18
        0x7a
        0xc6
        0x41
        0xed
        0x24
        0x90
        0x56
        0xbb
        0xf
        0x73
        0xd8
        0x2d
        0xe4
        0x69
        0x1a
        0x85
        0xcf
        0x34
        0x92
        0x4b
        0xf7
        0x60
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 8

    if-eqz p0, :cond_59

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_59

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v0, :cond_2e

    mul-int/lit8 v4, v3, 0x7

    and-int/lit8 v4, v4, 0x1f

    sget-object v5, Lq/V3;->b:[I

    aget v4, v5, v4

    rsub-int/lit8 v5, v3, 0x1f

    sget-object v6, Lq/V3;->c:[I

    aget v5, v6, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x1d

    add-int/lit8 v5, v5, 0x5b

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2e
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const-string p0, "com.qiuhui.mahjong:model-v1"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :cond_59
    new-instance p0, Ljava/io/IOException;

    const-string v0, "安装包签名不可用"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Lq/n;)[B
    .registers 24

    move-object/from16 v0, p1

    const-string v1, "|"

    invoke-static/range {p0 .. p0}, Lq/V3;->c(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lq/k;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_268

    invoke-static/range {p0 .. p0}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_268

    sget-object v2, Lq/n;->e:Lq/n;

    if-ne v0, v2, :cond_1a

    const-string v3, "models/mortal_4p.qhm"

    goto :goto_1c

    :cond_1a
    const-string v3, "models/mortal_3p.qhm"

    :goto_1c
    if-ne v0, v2, :cond_22

    const-wide/32 v4, 0x5adff3d

    goto :goto_25

    :cond_22
    const-wide/32 v4, 0x5715b85

    :goto_25
    :try_start_25
    invoke-static/range {p0 .. p0}, Lq/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq/V3;->a(Ljava/lang/String;)[B

    move-result-object v8
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_245
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_242
    .catchall {:try_start_25 .. :try_end_2d} :catchall_23e

    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_23a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_236
    .catchall {:try_start_2d .. :try_end_35} :catchall_233

    :try_start_35
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    const/high16 v12, 0x100000

    invoke-direct {v11, v9, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v10, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_218

    :try_start_41
    sget-object v11, Lq/V3;->a:[B

    array-length v13, v11

    new-array v13, v13, [B

    invoke-virtual {v10, v13}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v11, v13}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_1fe

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v11

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    const/4 v15, 0x2

    if-ne v11, v15, :cond_1ef

    const/16 v11, 0x8

    if-ne v13, v11, :cond_1ef

    if-ne v14, v12, :cond_1ef

    cmp-long v4, v6, v4

    if-nez v4, :cond_1ef

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v6, v4

    if-gtz v4, :cond_1ef

    new-array v4, v13, [B

    invoke-virtual {v10, v4}, Ljava/io/DataInputStream;->readFully([B)V

    long-to-int v5, v6

    new-array v11, v5, [B
    :try_end_7b
    .catchall {:try_start_41 .. :try_end_7b} :catchall_1e6

    :try_start_7b
    const-string v12, "SHA-256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    const-string v15, "AES"

    invoke-direct {v13, v8, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_1df

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_8c
    if-ge v15, v5, :cond_143

    move-object/from16 v17, v9

    :try_start_90
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-lez v9, :cond_139

    if-gt v9, v14, :cond_139

    move/from16 v18, v14

    sub-int v14, v5, v15

    if-gt v9, v14, :cond_139

    add-int/lit8 v14, v9, 0x10

    new-array v14, v14, [B

    invoke-virtual {v10, v14}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v19, 0xc

    move/from16 v20, v5

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const-string v19, "AES/GCM/NoPadding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object/from16 v19, v2

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_c3
    .catchall {:try_start_90 .. :try_end_c3} :catchall_135

    move-object/from16 v21, v10

    const/16 v10, 0x80

    :try_start_c7
    invoke-direct {v2, v10, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v13, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.qiuhui.mahjong|"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    invoke-virtual {v0, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    array-length v2, v0

    if-ne v2, v9, :cond_129

    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v11, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v15, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v14, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, p1

    move-object/from16 v9, v17

    move/from16 v14, v18

    move-object/from16 v2, v19

    move/from16 v5, v20

    move-object/from16 v10, v21

    goto/16 :goto_8c

    :catchall_122
    move-exception v0

    :goto_123
    move-object v1, v0

    move-object v6, v11

    move-object/from16 v2, v16

    goto/16 :goto_20b

    :cond_129
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "模型分块解密不完整"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_135
    move-exception v0

    move-object/from16 v21, v10

    goto :goto_123

    :cond_139
    move-object/from16 v21, v10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "模型分块长度异常"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_143
    .catchall {:try_start_c7 .. :try_end_143} :catchall_122

    :cond_143
    move-object/from16 v19, v2

    move-object/from16 v17, v9

    move-object/from16 v21, v10

    const/4 v1, 0x0

    :try_start_14a
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d5

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    new-array v2, v2, [C

    const/4 v3, 0x0

    :goto_164
    array-length v4, v0

    if-ge v3, v4, :cond_17e

    aget-byte v4, v0, v3

    and-int/lit16 v5, v4, 0xff

    mul-int/lit8 v6, v3, 0x2

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v1, v5

    aput-char v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v1, v4

    aput-char v4, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_164

    :cond_17e
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    if-ne v1, v2, :cond_190

    const-string v1, "697CB2D3E0E4CF0A6E2700B017E96233951C7FE12CCD827BC582510C56AB0D24"

    goto :goto_192

    :cond_190
    const-string v1, "28E0DBC7C91AF9382736F9498BD948C998089894720EFDC0C9D2C65E6938BEA2"

    :goto_192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_196
    .catchall {:try_start_14a .. :try_end_196} :catchall_1d1

    if-eqz v0, :cond_1c3

    :try_start_198
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_1bc

    if-eqz v17, :cond_1b3

    :try_start_19d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a0} :catch_1a7
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1a1

    goto :goto_1b3

    :catchall_1a1
    move-exception v0

    move-object/from16 v6, v16

    :goto_1a4
    const/4 v1, 0x0

    goto/16 :goto_262

    :catch_1a7
    move-exception v0

    move-object v6, v11

    move-object/from16 v2, v16

    goto/16 :goto_248

    :catch_1ad
    move-exception v0

    move-object v6, v11

    move-object/from16 v2, v16

    goto/16 :goto_256

    :cond_1b3
    :goto_1b3
    if-eqz v16, :cond_1bb

    move-object/from16 v2, v16

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_1bb
    return-object v11

    :catchall_1bc
    move-exception v0

    move-object/from16 v2, v16

    move-object v1, v0

    move-object v6, v11

    goto/16 :goto_21e

    :cond_1c3
    move-object/from16 v2, v16

    :try_start_1c5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "模型完整性校验失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1cd
    move-exception v0

    :goto_1ce
    move-object v1, v0

    move-object v6, v11

    goto :goto_20b

    :catchall_1d1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_1ce

    :cond_1d5
    move-object/from16 v2, v16

    new-instance v0, Ljava/io/IOException;

    const-string v1, "模型容器包含多余数据"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1df
    .catchall {:try_start_1c5 .. :try_end_1df} :catchall_1cd

    :catchall_1df
    move-exception v0

    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v21, v10

    goto :goto_1ce

    :catchall_1e6
    move-exception v0

    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v21, v10

    :goto_1ec
    move-object v1, v0

    const/4 v6, 0x0

    goto :goto_20b

    :cond_1ef
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v21, v10

    :try_start_1f4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "模型容器元数据错误"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1fc
    move-exception v0

    goto :goto_1ec

    :cond_1fe
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v21, v10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "模型容器格式错误"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20b
    .catchall {:try_start_1f4 .. :try_end_20b} :catchall_1fc

    :goto_20b
    :try_start_20b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_20f

    goto :goto_214

    :catchall_20f
    move-exception v0

    move-object v3, v0

    :try_start_211
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_214
    throw v1
    :try_end_215
    .catchall {:try_start_211 .. :try_end_215} :catchall_215

    :catchall_215
    move-exception v0

    move-object v1, v0

    goto :goto_21e

    :catchall_218
    move-exception v0

    move-object v2, v8

    move-object/from16 v17, v9

    move-object v1, v0

    const/4 v6, 0x0

    :goto_21e
    if-eqz v17, :cond_232

    :try_start_220
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_223
    .catchall {:try_start_220 .. :try_end_223} :catchall_224

    goto :goto_232

    :catchall_224
    move-exception v0

    move-object v3, v0

    :try_start_226
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_232

    :catchall_22a
    move-exception v0

    :goto_22b
    move-object v6, v2

    goto/16 :goto_1a4

    :catch_22e
    move-exception v0

    goto :goto_248

    :catch_230
    move-exception v0

    goto :goto_256

    :cond_232
    :goto_232
    throw v1
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_233} :catch_230
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_233} :catch_22e
    .catchall {:try_start_226 .. :try_end_233} :catchall_22a

    :catchall_233
    move-exception v0

    move-object v2, v8

    goto :goto_22b

    :catch_236
    move-exception v0

    move-object v2, v8

    :goto_238
    const/4 v6, 0x0

    goto :goto_248

    :catch_23a
    move-exception v0

    move-object v2, v8

    :goto_23c
    const/4 v6, 0x0

    goto :goto_256

    :catchall_23e
    move-exception v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_262

    :catch_242
    move-exception v0

    const/4 v2, 0x0

    goto :goto_238

    :catch_245
    move-exception v0

    const/4 v2, 0x0

    goto :goto_23c

    :goto_248
    if-eqz v6, :cond_24e

    const/4 v1, 0x0

    :try_start_24b
    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_24e
    new-instance v1, Ljava/io/IOException;

    const-string v3, "模型解密失败"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_256
    .catchall {:try_start_24b .. :try_end_256} :catchall_22a

    :goto_256
    if-eqz v6, :cond_260

    const/4 v1, 0x0

    :try_start_259
    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_261

    :catchall_25d
    move-exception v0

    move-object v6, v2

    goto :goto_262

    :cond_260
    const/4 v1, 0x0

    :goto_261
    throw v0
    :try_end_262
    .catchall {:try_start_259 .. :try_end_262} :catchall_25d

    :goto_262
    if-eqz v6, :cond_267

    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_267
    throw v0

    :cond_268
    new-instance v0, Ljava/io/IOException;

    const-string v1, "授权或安装包校验失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "models"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "mortal_4p.onnx.tmp"

    const-string v1, "mortal_3p.onnx.tmp"

    const-string v2, "mortal_4p.onnx"

    const-string v3, "mortal_3p.onnx"

    filled-new-array {v2, v3, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_18
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2e

    aget-object v2, p0, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3a

    array-length p0, p0

    if-nez p0, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3a
    return-void
.end method
