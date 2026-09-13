.class public abstract Lq/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Lq/a5;

.field public static final c:Z

.field public static final d:Z

.field public static final e:J

.field public static final f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lq/b5;->i()Lsun/misc/Unsafe;

    move-result-object v0

    sget-object v1, Lq/f;->a:Ljava/lang/Class;

    sput-object v1, Lq/b5;->a:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lq/b5;->g(Ljava/lang/Class;)Z

    move-result v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lq/b5;->g(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_18

    goto :goto_35

    :cond_18
    invoke-static {}, Lq/f;->a()Z

    move-result v4

    if-eqz v4, :cond_30

    if-eqz v1, :cond_27

    new-instance v3, Lq/Y4;

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Lq/Y4;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_35

    :cond_27
    if-eqz v2, :cond_35

    new-instance v3, Lq/Y4;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lq/Y4;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_35

    :cond_30
    new-instance v3, Lq/Z4;

    invoke-direct {v3, v0}, Lq/a5;-><init>(Lsun/misc/Unsafe;)V

    :cond_35
    :goto_35
    sput-object v3, Lq/b5;->b:Lq/a5;

    const/4 v0, 0x0

    if-nez v3, :cond_3c

    move v1, v0

    goto :goto_40

    :cond_3c
    invoke-virtual {v3}, Lq/a5;->j()Z

    move-result v1

    :goto_40
    sput-boolean v1, Lq/b5;->c:Z

    if-nez v3, :cond_46

    move v1, v0

    goto :goto_4a

    :cond_46
    invoke-virtual {v3}, Lq/a5;->i()Z

    move-result v1

    :goto_4a
    sput-boolean v1, Lq/b5;->d:Z

    const-class v1, [B

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lq/b5;->e:J

    const-class v1, [Z

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    invoke-static {v1}, Lq/b5;->e(Ljava/lang/Class;)V

    const-class v1, [I

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    invoke-static {v1}, Lq/b5;->e(Ljava/lang/Class;)V

    const-class v1, [J

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    invoke-static {v1}, Lq/b5;->e(Ljava/lang/Class;)V

    const-class v1, [F

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    invoke-static {v1}, Lq/b5;->e(Ljava/lang/Class;)V

    const-class v1, [D

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    invoke-static {v1}, Lq/b5;->e(Ljava/lang/Class;)V

    const-class v1, [Ljava/lang/Object;

    invoke-static {v1}, Lq/b5;->d(Ljava/lang/Class;)I

    invoke-static {v1}, Lq/b5;->e(Ljava/lang/Class;)V

    invoke-static {}, Lq/b5;->f()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_91

    if-nez v3, :cond_8e

    goto :goto_91

    :cond_8e
    invoke-virtual {v3, v1}, Lq/a5;->f(Ljava/lang/reflect/Field;)J

    :cond_91
    :goto_91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_9a

    const/4 v0, 0x1

    :cond_9a
    sput-boolean v0, Lq/b5;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 5

    const-class v0, Lq/b5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;JB)V
    .registers 9

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lq/b5;->b:Lq/a5;

    invoke-virtual {v2, p0, v0, v1}, Lq/a5;->d(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p0, v0, v1, p1}, Lq/a5;->h(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static c(Ljava/lang/Object;JB)V
    .registers 9

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lq/b5;->b:Lq/a5;

    invoke-virtual {v2, p0, v0, v1}, Lq/a5;->d(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p0, v0, v1, p1}, Lq/a5;->h(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static d(Ljava/lang/Class;)I
    .registers 2

    sget-boolean v0, Lq/b5;->d:Z

    if-eqz v0, :cond_b

    sget-object v0, Lq/b5;->b:Lq/a5;

    invoke-virtual {v0, p0}, Lq/a5;->a(Ljava/lang/Class;)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public static e(Ljava/lang/Class;)V
    .registers 2

    sget-boolean v0, Lq/b5;->d:Z

    if-eqz v0, :cond_9

    sget-object v0, Lq/b5;->b:Lq/a5;

    invoke-virtual {v0, p0}, Lq/a5;->b(Ljava/lang/Class;)I

    :cond_9
    return-void
.end method

.method public static f()Ljava/lang/reflect/Field;
    .registers 4

    invoke-static {}, Lq/f;->a()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const-string v0, "effectiveDirectAddress"

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    goto :goto_11

    :catchall_10
    move-object v0, v2

    :goto_11
    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    const-string v0, "address"

    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1b

    goto :goto_1c

    :catchall_1b
    move-object v0, v2

    :goto_1c
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_27

    move-object v2, v0

    :cond_27
    return-object v2
.end method

.method public static g(Ljava/lang/Class;)Z
    .registers 8

    const-class v0, [B

    invoke-static {}, Lq/f;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    sget-object v1, Lq/b5;->a:Ljava/lang/Class;

    const-string v3, "peekLong"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5c
    .catchall {:try_start_a .. :try_end_5c} :catchall_5e

    const/4 p0, 0x1

    return p0

    :catchall_5e
    return v2
.end method

.method public static h([BJ)B
    .registers 5

    sget-wide v0, Lq/b5;->e:J

    add-long/2addr v0, p1

    sget-object p1, Lq/b5;->b:Lq/a5;

    invoke-virtual {p1, p0, v0, v1}, Lq/a5;->c(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static i()Lsun/misc/Unsafe;
    .registers 1

    :try_start_0
    new-instance v0, Lq/X4;

    invoke-direct {v0}, Lq/X4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static j([BJB)V
    .registers 6

    sget-wide v0, Lq/b5;->e:J

    add-long/2addr v0, p1

    sget-object p1, Lq/b5;->b:Lq/a5;

    invoke-virtual {p1, p0, v0, v1, p3}, Lq/a5;->g(Ljava/lang/Object;JB)V

    return-void
.end method
