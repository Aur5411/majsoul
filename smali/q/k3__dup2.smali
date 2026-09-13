.class public abstract Lq/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static b:J

.field public static c:J

.field public static d:J

.field public static final e:[I

.field public static final f:[Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lq/k3;->a:[B

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lq/k3;->e:[I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lq/k3;->f:[Ljava/lang/Object;

    return-void

    nop

    :array_14
    .array-data 1
        0x2dt
        0x71t
        -0x3ct
        0x19t
        0x56t
        -0x58t
        0x3t
        0x6et
        -0x2et
        0x48t
        -0x61t
        0x35t
        0x7bt
        0x14t
        -0x1bt
        0x62t
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 15

    const-class v0, Lq/k3;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lq/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Lq/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6f

    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6f

    cmp-long p0, p2, v1

    if-lez p0, :cond_6f

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_6f

    :cond_28
    const-wide/32 v3, 0x1b7740

    sub-long v1, p2, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-string v3, "mask"

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p1

    move-object v5, v10

    invoke-static/range {v3 .. v9}, Lq/k3;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    xor-long v5, v1, v3

    sput-wide v5, Lq/k3;->b:J

    const/16 p0, 0x11

    invoke-static {v3, v4, p0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    xor-long/2addr v3, p2

    sput-wide v3, Lq/k3;->c:J

    const-string v3, "tag"

    move-object v4, p1

    move-object v5, v10

    move-wide v6, v1

    move-wide v8, p2

    invoke-static/range {v3 .. v9}, Lq/k3;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    sput-wide p0, Lq/k3;->d:J
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_6d

    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    goto :goto_74

    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-static {}, Lq/k3;->b()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_6d

    monitor-exit v0

    return-void

    :goto_74
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_6d

    throw p0
.end method

.method public static declared-synchronized b()V
    .registers 3

    const-class v0, Lq/k3;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_5
    sput-wide v1, Lq/k3;->b:J

    sput-wide v1, Lq/k3;->c:J

    sput-wide v1, Lq/k3;->d:J
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)[B
    .registers 10

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lq/k3;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update(B)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/16 p0, 0x10

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static f(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lq/k3;->f(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static g(Lq/S3;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10

    const/4 v0, 0x1

    invoke-interface {p0}, Lq/S3;->k()Lq/G1;

    move-result-object v1

    invoke-virtual {v1}, Lq/G1;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/R1;

    iget-object v3, v2, Lq/R1;->b:Lq/C0;

    iget v3, v3, Lq/C0;->g:I

    if-eq v3, v0, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    sget-object v3, Lq/A0;->b:Lq/A0;

    const/4 v3, 0x0

    goto :goto_31

    :cond_29
    sget-object v3, Lq/A0;->c:Lq/A0;

    goto :goto_31

    :cond_2c
    sget-object v3, Lq/A0;->d:Lq/A0;

    goto :goto_31

    :cond_2f
    sget-object v3, Lq/A0;->b:Lq/A0;

    :goto_31
    if-nez v3, :cond_35

    sget-object v3, Lq/A0;->b:Lq/A0;

    :cond_35
    sget-object v4, Lq/A0;->d:Lq/A0;

    if-ne v3, v4, :cond_d

    invoke-interface {p0, v2}, Lq/S3;->g(Lq/R1;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lq/R1;->b:Lq/C0;

    invoke-virtual {v2}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_58
    invoke-interface {p0}, Lq/S3;->l()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/R1;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v3, Lq/R1;->g:Lq/Q1;

    iget-object v4, v4, Lq/Q1;->a:Lq/P1;

    sget-object v5, Lq/P1;->j:Lq/P1;

    if-ne v4, v5, :cond_64

    invoke-virtual {v3}, Lq/R1;->p()Z

    move-result v4

    if-eqz v4, :cond_a6

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_8f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/S3;

    add-int/lit8 v6, v4, 0x1

    invoke-static {p1, v3, v4}, Lq/k3;->o(Ljava/lang/String;Lq/R1;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lq/k3;->g(Lq/S3;Ljava/lang/String;Ljava/util/ArrayList;)V

    move v4, v6

    goto :goto_8f

    :cond_a6
    invoke-interface {p0, v3}, Lq/S3;->g(Lq/R1;)Z

    move-result v4

    if-eqz v4, :cond_64

    check-cast v2, Lq/S3;

    const/4 v4, -0x1

    invoke-static {p1, v3, v4}, Lq/k3;->o(Ljava/lang/String;Lq/R1;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lq/k3;->g(Lq/S3;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_64

    :cond_b7
    return-void
.end method

.method public static h(Ljava/util/List;I)Lq/p;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/p;

    iget v2, v1, Lq/p;->a:I

    if-ne v2, p1, :cond_8

    return-object v1

    :cond_19
    return-object v0
.end method

.method public static declared-synchronized i(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static j(Lq/E;Lq/S4;Lq/d2;Lq/G1;Lq/U3;I)Z
    .registers 13

    iget-object v0, p3, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6c

    const/16 v0, 0xb

    if-ne p5, v0, :cond_6c

    :cond_11
    :goto_11
    invoke-virtual {p0}, Lq/E;->z()I

    move-result p5

    if-nez p5, :cond_18

    goto :goto_3e

    :cond_18
    const/16 v0, 0x10

    if-ne p5, v0, :cond_2e

    invoke-virtual {p0}, Lq/E;->A()I

    move-result p5

    if-eqz p5, :cond_2c

    instance-of v0, p2, Lq/b2;

    if-eqz v0, :cond_2c

    move-object v0, p2

    check-cast v0, Lq/b2;

    invoke-interface {p4, v0, p3, p5}, Lq/U3;->j(Lq/b2;Lq/G1;I)V

    :cond_2c
    move v2, p5

    goto :goto_11

    :cond_2e
    const/16 v0, 0x1a

    if-ne p5, v0, :cond_38

    invoke-virtual {p0}, Lq/E;->h()Lq/B;

    move-result-object p5

    move-object v3, p5

    goto :goto_11

    :cond_38
    invoke-virtual {p0, p5}, Lq/E;->C(I)Z

    move-result p5

    if-nez p5, :cond_11

    :goto_3e
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Lq/E;->a(I)V

    if-eqz v3, :cond_6b

    if-eqz v2, :cond_6b

    if-eqz p1, :cond_6b

    sget p0, Lq/U4;->f:I

    new-instance p0, Lq/T4;

    invoke-direct {p0}, Lq/T4;-><init>()V

    iget-object p2, p0, Lq/T4;->a:Lq/U4;

    iget-object p3, p2, Lq/U4;->d:Ljava/util/List;

    if-nez p3, :cond_5d

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lq/U4;->d:Ljava/util/List;

    :cond_5d
    iget-object p2, p0, Lq/T4;->a:Lq/U4;

    iget-object p2, p2, Lq/U4;->d:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lq/T4;->a()Lq/U4;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lq/S4;->p(ILq/U4;)V

    :cond_6b
    return v1

    :cond_6c
    and-int/lit8 v0, p5, 0x7

    ushr-int/lit8 v4, p5, 0x3

    iget-object v5, p3, Lq/G1;->k:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-gez v5, :cond_7a

    not-int v5, v5

    sub-int/2addr v5, v1

    :cond_7a
    if-ltz v5, :cond_8d

    iget-object v6, p3, Lq/G1;->l:[I

    aget v5, v6, v5

    if-ge v4, v5, :cond_8d

    instance-of v5, p2, Lq/b2;

    if-eqz v5, :cond_97

    move-object v5, p2

    check-cast v5, Lq/b2;

    invoke-interface {p4, v5, p3, v4}, Lq/U3;->j(Lq/b2;Lq/G1;I)V

    goto :goto_97

    :cond_8d
    invoke-interface {p4}, Lq/U3;->c()I

    move-result v5

    if-ne v5, v1, :cond_97

    invoke-virtual {p3, v4}, Lq/G1;->h(I)Lq/R1;

    move-result-object v3

    :cond_97
    :goto_97
    if-nez v3, :cond_9c

    :cond_99
    move p3, v2

    move v2, v1

    goto :goto_b3

    :cond_9c
    invoke-virtual {v3}, Lq/R1;->i()Lq/i6;

    move-result-object p3

    iget p3, p3, Lq/i6;->b:I

    if-ne v0, p3, :cond_a6

    move p3, v2

    goto :goto_b3

    :cond_a6
    invoke-virtual {v3}, Lq/R1;->n()Z

    move-result p3

    if-eqz p3, :cond_99

    invoke-virtual {v3}, Lq/R1;->i()Lq/i6;

    const/4 p3, 0x2

    if-ne v0, p3, :cond_99

    move p3, v1

    :goto_b3
    if-eqz v2, :cond_c1

    if-eqz p1, :cond_bc

    invoke-virtual {p1, p5, p0}, Lq/S4;->q(ILq/E;)Z

    move-result p0

    return p0

    :cond_bc
    invoke-virtual {p0, p5}, Lq/E;->C(I)Z

    move-result p0

    return p0

    :cond_c1
    if-eqz p3, :cond_11d

    invoke-virtual {p0}, Lq/E;->s()I

    move-result p2

    invoke-virtual {p0, p2}, Lq/E;->f(I)I

    move-result p2

    invoke-virtual {v3}, Lq/R1;->i()Lq/i6;

    move-result-object p3

    sget-object p5, Lq/i6;->d:Lq/i6;

    if-ne p3, p5, :cond_103

    :cond_d3
    :goto_d3
    invoke-virtual {p0}, Lq/E;->c()I

    move-result p3

    if-lez p3, :cond_119

    invoke-virtual {p0}, Lq/E;->j()I

    move-result p3

    invoke-virtual {v3}, Lq/R1;->q()Z

    move-result p5

    if-eqz p5, :cond_f7

    invoke-virtual {v3}, Lq/R1;->h()Lq/M1;

    move-result-object p5

    invoke-virtual {p5, p3}, Lq/M1;->f(I)Lq/O1;

    move-result-object p5

    if-nez p5, :cond_f3

    if-eqz p1, :cond_d3

    invoke-virtual {p1, v4, p3}, Lq/S4;->s(II)V

    goto :goto_d3

    :cond_f3
    invoke-interface {p4, v3, p5}, Lq/U3;->i(Lq/R1;Ljava/lang/Object;)Lq/U3;

    goto :goto_d3

    :cond_f7
    invoke-virtual {v3}, Lq/R1;->h()Lq/M1;

    move-result-object p5

    invoke-virtual {p5, p3}, Lq/M1;->g(I)Lq/O1;

    move-result-object p3

    invoke-interface {p4, v3, p3}, Lq/U3;->i(Lq/R1;Ljava/lang/Object;)Lq/U3;

    goto :goto_d3

    :cond_103
    :goto_103
    invoke-virtual {p0}, Lq/E;->c()I

    move-result p1

    if-lez p1, :cond_119

    invoke-virtual {v3}, Lq/R1;->i()Lq/i6;

    move-result-object p1

    invoke-interface {p4, v3}, Lq/U3;->b(Lq/R1;)I

    move-result p3

    invoke-static {p0, p1, p3}, Lq/j3;->k(Lq/E;Lq/i6;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, v3, p1}, Lq/U3;->i(Lq/R1;Ljava/lang/Object;)Lq/U3;

    goto :goto_103

    :cond_119
    invoke-virtual {p0, p2}, Lq/E;->e(I)V

    goto :goto_16d

    :cond_11d
    iget-object p3, v3, Lq/R1;->g:Lq/Q1;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/16 p5, 0x9

    if-eq p3, p5, :cond_172

    const/16 p5, 0xa

    if-eq p3, p5, :cond_16e

    const/16 p2, 0xd

    if-eq p3, p2, :cond_13c

    invoke-virtual {v3}, Lq/R1;->i()Lq/i6;

    move-result-object p1

    invoke-interface {p4, v3}, Lq/U3;->b(Lq/R1;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lq/j3;->k(Lq/E;Lq/i6;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_160

    :cond_13c
    invoke-virtual {p0}, Lq/E;->j()I

    move-result p0

    invoke-virtual {v3}, Lq/R1;->q()Z

    move-result p2

    if-eqz p2, :cond_158

    invoke-virtual {v3}, Lq/R1;->h()Lq/M1;

    move-result-object p2

    invoke-virtual {p2, p0}, Lq/M1;->f(I)Lq/O1;

    move-result-object p2

    if-nez p2, :cond_156

    if-eqz p1, :cond_155

    invoke-virtual {p1, v4, p0}, Lq/S4;->s(II)V

    :cond_155
    return v1

    :cond_156
    move-object p0, p2

    goto :goto_160

    :cond_158
    invoke-virtual {v3}, Lq/R1;->h()Lq/M1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lq/M1;->g(I)Lq/O1;

    move-result-object p0

    :goto_160
    invoke-virtual {v3}, Lq/R1;->p()Z

    move-result p1

    if-eqz p1, :cond_16a

    invoke-interface {p4, v3, p0}, Lq/U3;->i(Lq/R1;Ljava/lang/Object;)Lq/U3;

    goto :goto_16d

    :cond_16a
    invoke-interface {p4, v3, p0}, Lq/U3;->g(Lq/R1;Ljava/lang/Object;)Lq/U3;

    :goto_16d
    return v1

    :cond_16e
    invoke-interface {p4, p0, p2, v3}, Lq/U3;->a(Lq/E;Lq/d2;Lq/R1;)V

    return v1

    :cond_172
    invoke-interface {p4, p0, p2, v3}, Lq/U3;->f(Lq/E;Lq/d2;Lq/R1;)V

    return v1
.end method

.method public static k(Lq/p4;Ljava/util/List;)I
    .registers 9

    const/4 v0, 0x7

    if-eqz p0, :cond_a

    const/16 v1, 0x25

    iget v2, p0, Lq/p4;->g:I

    if-ne v2, v1, :cond_a

    return v0

    :cond_a
    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_10

    :cond_e
    iget-object p0, p0, Lq/p4;->b:Ljava/lang/String;

    :goto_10
    const-string v1, "跳过"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    return v2

    :cond_1a
    const-string v1, "立直"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    return v0

    :cond_23
    if-eqz p0, :cond_2f

    const-string v0, "吃"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 p0, 0x2

    return p0

    :cond_2f
    const-string v0, "碰"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_39

    return v1

    :cond_39
    const-string v0, "自摸"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 p0, 0x8

    return p0

    :cond_44
    const-string v0, "荣和"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/16 p0, 0x9

    return p0

    :cond_4f
    const-string v0, "九种九牌"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 p0, 0xa

    return p0

    :cond_5a
    const-string v0, "拔北"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, -0x1

    if-nez v0, :cond_8b

    const-string v0, "拔北/杠"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_8b

    :cond_6f
    const-string v0, "杠"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    filled-new-array {v3, v5, v4}, [I

    move-result-object p0

    :goto_7b
    if-ge v2, v1, :cond_8a

    aget v0, p0, v2

    invoke-static {p1, v0}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v3

    if-eqz v3, :cond_87

    move v6, v0

    goto :goto_8a

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_8a
    :goto_8a
    return v6

    :cond_8b
    :goto_8b
    const/16 p0, 0xb

    invoke-static {p1, p0}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v0

    if-eqz v0, :cond_94

    return p0

    :cond_94
    filled-new-array {v3, v5, v4}, [I

    move-result-object p0

    :goto_98
    if-ge v2, v1, :cond_a7

    aget v0, p0, v2

    invoke-static {p1, v0}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v3

    if-eqz v3, :cond_a4

    move v6, v0

    goto :goto_a7

    :cond_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    :cond_a7
    :goto_a7
    return v6
.end method

.method public static l(Ljava/lang/String;)Lq/u;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_10

    return-object v0

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    const/16 v3, 0x6d

    const/16 v4, 0x7a

    if-eq p0, v3, :cond_2e

    const/16 v3, 0x70

    if-eq p0, v3, :cond_2e

    const/16 v3, 0x73

    if-eq p0, v3, :cond_2e

    if-ne p0, v4, :cond_4c

    :cond_2e
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4c

    const/16 v5, 0x39

    if-le v1, v5, :cond_37

    goto :goto_4c

    :cond_37
    if-ne v1, v3, :cond_3b

    const/4 v1, 0x5

    goto :goto_3c

    :cond_3b
    sub-int/2addr v1, v3

    :goto_3c
    if-lt v1, v2, :cond_4c

    if-ne p0, v4, :cond_42

    const/4 v2, 0x7

    goto :goto_44

    :cond_42
    const/16 v2, 0x9

    :goto_44
    if-le v1, v2, :cond_47

    goto :goto_4c

    :cond_47
    new-instance v0, Lq/u;

    invoke-direct {v0, v1, p0}, Lq/u;-><init>(IC)V

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public static n(Landroid/app/Activity;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lq/l2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lq/l2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static o(Ljava/lang/String;Lq/R1;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {p0}, Lq/C0;->J()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lq/R1;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_1d
    iget-object p0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {p0}, Lq/C0;->F()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    const/4 p0, -0x1

    if-eq p2, p0, :cond_36

    const/16 p0, 0x5b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c([BII)Ljava/lang/String;
.end method

.method public abstract e(IILjava/lang/String;[B)I
.end method

.method public abstract m([BII)I
.end method
