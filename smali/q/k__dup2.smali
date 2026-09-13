.class public abstract Lq/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lq/k;->b:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x8
        0x9
        0x11
        0x12
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_54

    :try_start_12
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const v0, 0x8000

    new-array v0, v0, [B

    :goto_1d
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_29

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1d

    :catchall_27
    move-exception p1

    goto :goto_49

    :cond_29
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lq/k;->f([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_27

    :try_start_45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_54

    return p1

    :goto_49
    if-eqz p0, :cond_53

    :try_start_4b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p0

    :try_start_50
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_54

    :catch_54
    return v2
.end method

.method public static b(Ljava/io/File;)Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_53

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_46

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "frida"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "xposed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "lsposed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "substrate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "gadget"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3f

    if-eqz p0, :cond_a

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_4a

    :cond_41
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 p0, 0x1

    return p0

    :cond_46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_53

    goto :goto_53

    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v0

    :try_start_4f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_53

    :catch_53
    :goto_53
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lq/B;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lq/s2;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lq/s2;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lq/k;->d(Lq/s2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lq/s2;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq/s2;->m()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Lq/s2;->m()I

    move-result v2

    if-ge v1, v2, :cond_9f

    iget v2, p0, Lq/s2;->a:I

    packed-switch v2, :pswitch_data_a4

    iget-object v2, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v2, [B

    aget-byte v2, v2, v1

    goto :goto_24

    :pswitch_1c  #0x6
    iget-object v2, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v2, Lq/B;

    invoke-virtual {v2, v1}, Lq/B;->b(I)B

    move-result v2

    :goto_24
    const/16 v3, 0x22

    if-eq v2, v3, :cond_96

    const/16 v3, 0x27

    if-eq v2, v3, :cond_90

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_8a

    packed-switch v2, :pswitch_data_aa

    const/16 v4, 0x20

    if-lt v2, v4, :cond_40

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_40

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_60  #0xd
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_66  #0xc
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_6c  #0xb
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_72  #0xa
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_78  #0x9
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_7e  #0x8
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :pswitch_84  #0x7
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_8a
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_90
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_96
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_a4
    .packed-switch 0x6
        :pswitch_1c  #00000006
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x7
        :pswitch_84  #00000007
        :pswitch_7e  #00000008
        :pswitch_78  #00000009
        :pswitch_72  #0000000a
        :pswitch_6c  #0000000b
        :pswitch_66  #0000000c
        :pswitch_60  #0000000d
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lq/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "c3ecf420dae315b2d40fc8a5748c8680dc3aca3ef185f1883a0285f073b9cd26"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static f([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    const-string p0, "c3ecf420dae315b2d40fc8a5748c8680dc3aca3ef185f1883a0285f073b9cd26"

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lq/R5;->a:Lq/h;

    sget-object v0, Lq/i;->c:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/H;

    move-object v3, v2

    check-cast v3, Lq/i;

    iget-object v3, v3, Lq/i;->a:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2c
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/H;

    check-cast v0, Lq/i;

    invoke-virtual {v0}, Lq/i;->a()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_50
    const/4 p0, 0x1

    goto :goto_53

    :cond_52
    const/4 p0, 0x0

    :goto_53
    return p0

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown feature "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Lq/n;Ljava/util/List;)[Z
    .registers 18

    move-object/from16 v0, p0

    iget v0, v0, Lq/n;->c:I

    new-array v1, v0, [Z

    const/4 v2, 0x7

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v3

    if-nez v3, :cond_10

    return-object v1

    :cond_10
    iget-object v3, v3, Lq/p;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_25

    goto :goto_16

    :cond_25
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2e
    if-ge v7, v5, :cond_16

    aget-object v8, v4, v7

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eqz v8, :cond_8a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3e

    goto :goto_8a

    :cond_3e
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x30

    const/16 v13, 0x73

    const/16 v14, 0x70

    const/16 v15, 0x6d

    if-ne v11, v12, :cond_60

    if-eq v8, v15, :cond_5d

    if-eq v8, v14, :cond_5a

    if-eq v8, v13, :cond_57

    goto :goto_8a

    :cond_57
    const/16 v10, 0x24

    goto :goto_8a

    :cond_5a
    const/16 v10, 0x23

    goto :goto_8a

    :cond_5d
    const/16 v10, 0x22

    goto :goto_8a

    :cond_60
    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    const/16 v12, 0x9

    const/16 v2, 0x7a

    if-eq v8, v15, :cond_7c

    if-eq v8, v14, :cond_7a

    if-eq v8, v13, :cond_77

    if-eq v8, v2, :cond_74

    move v13, v10

    goto :goto_7d

    :cond_74
    const/16 v13, 0x1b

    goto :goto_7d

    :cond_77
    const/16 v13, 0x12

    goto :goto_7d

    :cond_7a
    move v13, v12

    goto :goto_7d

    :cond_7c
    move v13, v6

    :goto_7d
    if-ne v8, v2, :cond_80

    const/4 v12, 0x7

    :cond_80
    if-ltz v13, :cond_8a

    if-lt v11, v9, :cond_8a

    if-le v11, v12, :cond_87

    goto :goto_8a

    :cond_87
    add-int/2addr v13, v11

    add-int/lit8 v10, v13, -0x1

    :cond_8a
    :goto_8a
    if-ltz v10, :cond_90

    if-ge v10, v0, :cond_90

    aput-boolean v9, v1, v10

    :cond_90
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x7

    goto :goto_2e

    :cond_94
    return-object v1
.end method

.method public static j(Ljava/util/List;ID)Lq/p4;
    .registers 19

    move-object v0, p0

    if-eqz v0, :cond_c6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_c6

    :cond_b
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/p4;

    const/16 v3, 0xa

    move/from16 v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v3, :cond_c5

    invoke-virtual {v2}, Lq/p4;->h()Z

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_c5

    :cond_28
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/p4;

    invoke-virtual {v6}, Lq/p4;->h()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_32

    :cond_4d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_55

    return-object v2

    :cond_55
    const-wide/high16 v5, 0x4014000000000000L  # 5.0

    int-to-double v7, v3

    div-double/2addr v5, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [D

    const-wide/16 v7, 0x0

    move v3, v1

    move-wide v9, v7

    :goto_63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_85

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq/p4;

    iget v11, v11, Lq/p4;->e:F

    float-to-double v11, v11

    const-wide v13, 0x3e112e0be826d695L  # 1.0E-9

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    aput-wide v11, v0, v3

    add-double/2addr v9, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_85
    invoke-static {v9, v10}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_c5

    cmpg-double v3, v9, v7

    if-gtz v3, :cond_90

    goto :goto_c5

    :cond_90
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v2

    move-wide/from16 v5, p2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :goto_a0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b8

    aget-wide v5, v0, v1

    div-double/2addr v5, v9

    add-double/2addr v7, v5

    cmpg-double v5, v2, v7

    if-gez v5, :cond_b5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/p4;

    return-object v0

    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    :cond_b8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/p4;

    return-object v0

    :cond_c5
    :goto_c5
    return-object v2

    :cond_c6
    :goto_c6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k([B)Ljava/lang/String;
    .registers 7

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2e

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l([I)I
    .registers 9

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    new-instance v0, Lq/o4;

    invoke-direct {v0, p0}, Lq/o4;-><init>([I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lq/o4;->b(IIII)V

    iget v0, v0, Lq/o4;->a:I

    array-length v2, p0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_15
    if-ge v3, v2, :cond_25

    aget v6, p0, v3

    if-lez v6, :cond_1d

    add-int/lit8 v5, v5, 0x1

    :cond_1d
    const/4 v7, 0x2

    if-lt v6, v7, :cond_22

    add-int/lit8 v4, v4, 0x1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    rsub-int/lit8 v2, v4, 0x6

    rsub-int/lit8 v3, v5, 0x7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    sget-object v2, Lq/k;->b:[I

    move v4, v1

    move v5, v4

    :goto_32
    const/16 v6, 0xd

    if-ge v1, v6, :cond_45

    aget v6, v2, v1

    aget v6, p0, v6

    if-lez v6, :cond_3e

    add-int/lit8 v4, v4, 0x1

    :cond_3e
    const/4 v7, 0x1

    if-le v6, v7, :cond_42

    move v5, v7

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_45
    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static m(I)Ljava/lang/String;
    .registers 8

    const-string v5, "发"

    const-string v6, "中"

    const-string v0, "东"

    const-string v1, "南"

    const-string v2, "西"

    const-string v3, "北"

    const-string v4, "白"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    if-lt p0, v1, :cond_1a

    sub-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0

    :cond_1a
    rem-int/lit8 v0, p0, 0x9

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x9

    if-ge p0, v1, :cond_25

    const-string p0, "万"

    goto :goto_2e

    :cond_25
    const/16 v1, 0x12

    if-ge p0, v1, :cond_2c

    const-string p0, "筒"

    goto :goto_2e

    :cond_2c
    const-string p0, "索"

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Lq/k;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "INSTALL_SIGNATURE"

    return-object p0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://qiuhui-license-kgzhijzjos.cn-hangzhou.fcapp.run"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "LICENSE_ENDPOINT_PROTOCOL"
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1c6

    return-object p0

    :cond_1f
    const-string v0, "com.qiuhui.mahjong"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string p0, "PACKAGE_NAME"

    return-object p0

    :cond_2e
    sget v0, Lq/k;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    if-lez v0, :cond_38

    move v0, v2

    goto :goto_82

    :cond_38
    move v0, v1

    goto :goto_82

    :cond_3a
    const-class v0, Lq/k;

    monitor-enter v0

    :try_start_3d
    sget v3, Lq/k;->a:I

    if-eqz v3, :cond_4e

    sget v3, Lq/k;->a:I

    if-lez v3, :cond_47

    move v3, v2

    goto :goto_48

    :cond_47
    move v3, v1

    :goto_48
    monitor-exit v0

    :goto_49
    move v0, v3

    goto :goto_82

    :catchall_4b
    move-exception p0

    goto/16 :goto_1c4

    :cond_4e
    const-string v3, "web/bridge.js"

    const-string v4, "82787d5674d4ee3150f0db88e8bbcc71f710623461b2fc6d716adda682ededd6"

    invoke-static {p0, v3, v4}, Lq/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "web/cat-hud.js"

    const-string v4, "b2a62254f3ed75a19cf0a78107db8ac5165550f033f0d709c4b1b6ad326f924a"

    invoke-static {p0, v3, v4}, Lq/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "liqi/liqi.desc"

    const-string v4, "f3578baf6361ecd5a4d1a6b7390bb9a65578194db73fe80193ae312a9d9b9a2e"

    invoke-static {p0, v3, v4}, Lq/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "majsoulmax/max_data.yaml"

    const-string v4, "93d3a07223fbd45d1b534f968885baf4791cd57b3888561b91dd073cc5cea8f4"

    invoke-static {p0, v3, v4}, Lq/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    move v3, v2

    goto :goto_79

    :cond_78
    move v3, v1

    :goto_79
    if-eqz v3, :cond_7d

    move v4, v2

    goto :goto_7e

    :cond_7d
    const/4 v4, -0x1

    :goto_7e
    sput v4, Lq/k;->a:I

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3d .. :try_end_81} :catchall_4b

    goto :goto_49

    :goto_82
    if-nez v0, :cond_87

    const-string p0, "ASSET_INTEGRITY"

    return-object p0

    :cond_87
    :try_start_87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_94

    const-string p0, "DEBUGGABLE"
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_93} :catch_1c1

    return-object p0

    :cond_94
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1be

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_a2

    goto/16 :goto_1be

    :cond_a2
    :try_start_a2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/self/status"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ae} :catch_e0

    :cond_ae
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d3

    const-string v4, "TracerPid:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ae

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_cc
    .catchall {:try_start_ae .. :try_end_cc} :catchall_d1

    xor-int/2addr v3, v2

    :try_start_cd
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_e1

    :catchall_d1
    move-exception v3

    goto :goto_d7

    :cond_d3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d6} :catch_e0

    goto :goto_e0

    :goto_d7
    :try_start_d7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    goto :goto_df

    :catchall_db
    move-exception v0

    :try_start_dc
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_df
    throw v3
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e0} :catch_e0

    :catch_e0
    :goto_e0
    move v3, v1

    :goto_e1
    if-eqz v3, :cond_e6

    const-string p0, "TRACER"

    return-object p0

    :cond_e6
    :try_start_e6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_f0
    if-ge v4, v3, :cond_124

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "xposed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_122

    const-string v6, "substrate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_122

    const-string v6, "frida"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_122

    const-string v6, "lsposed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11f

    goto :goto_122

    :cond_11f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    :catchall_122
    :cond_122
    :goto_122
    move v0, v2

    goto :goto_176

    :cond_124
    const-string v0, "de.robv.android.xposed.XposedBridge"

    const-string v3, "de.robv.android.xposed.XC_MethodHook"

    const-string v4, "com.saurik.substrate.MS$2"

    const-string v5, "io.github.lsposed.lspd.core.Main"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    const-class v3, Lq/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move v4, v1

    :goto_137
    const/4 v5, 0x4

    if-ge v4, v5, :cond_143

    aget-object v5, v0, v4
    :try_end_13c
    .catchall {:try_start_e6 .. :try_end_13c} :catchall_122

    :try_start_13c
    invoke-static {v5, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_13f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13c .. :try_end_13f} :catch_140
    .catchall {:try_start_13c .. :try_end_13f} :catchall_122

    goto :goto_122

    :catch_140
    add-int/lit8 v4, v4, 0x1

    goto :goto_137

    :cond_143
    :try_start_143
    new-instance v0, Ljava/io/File;

    const-string v3, "/proc/self/maps"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lq/k;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_151

    goto :goto_122

    :cond_151
    new-instance v0, Ljava/io/File;

    const-string v3, "/proc/self/task"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_175

    array-length v3, v0

    move v4, v1

    :goto_160
    if-ge v4, v3, :cond_175

    aget-object v5, v0, v4

    new-instance v6, Ljava/io/File;

    const-string v7, "comm"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lq/k;->b(Ljava/io/File;)Z

    move-result v5
    :try_end_16f
    .catchall {:try_start_143 .. :try_end_16f} :catchall_122

    if-eqz v5, :cond_172

    goto :goto_122

    :cond_172
    add-int/lit8 v4, v4, 0x1

    goto :goto_160

    :cond_175
    move v0, v1

    :goto_176
    if-eqz v0, :cond_17b

    const-string p0, "HOOK_FRAMEWORK"

    return-object p0

    :cond_17b
    :try_start_17b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez p0, :cond_186

    const-string p0, ""

    goto :goto_18c

    :cond_186
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_18c
    const-string v0, "/virtual/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b4

    const-string v0, "parallel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b4

    const-string v0, "dualapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b4

    const-string v0, "multiapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b4

    const-string v0, "cloneapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1b2
    .catch Ljava/lang/RuntimeException; {:try_start_17b .. :try_end_1b2} :catch_1b6

    if-eqz p0, :cond_1b5

    :cond_1b4
    move v1, v2

    :cond_1b5
    move v2, v1

    :catch_1b6
    if-eqz v2, :cond_1bb

    const-string p0, "CLONED_RUNTIME"

    return-object p0

    :cond_1bb
    const-string p0, ""

    return-object p0

    :cond_1be
    :goto_1be
    const-string p0, "DEBUGGER"

    return-object p0

    :catch_1c1
    const-string p0, "APPLICATION_INFO"

    return-object p0

    :goto_1c4
    :try_start_1c4
    monitor-exit v0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_4b

    throw p0

    :catch_1c6
    const-string p0, "LICENSE_ENDPOINT_INVALID"

    return-object p0
.end method
