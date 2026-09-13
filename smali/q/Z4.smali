.class public final Lq/Z4;
.super Lq/a5;
.source "SourceFile"


# virtual methods
.method public final c(Ljava/lang/Object;J)B
    .registers 5

    iget-object v0, p0, Lq/a5;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/Object;JB)V
    .registers 6

    iget-object v0, p0, Lq/a5;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final i()Z
    .registers 7

    const-class v0, Ljava/lang/Object;

    invoke-super {p0}, Lq/a5;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lq/a5;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getByte"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putByte"

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getBoolean"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putBoolean"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getFloat"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putFloat"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDouble"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putDouble"

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_64

    const/4 v0, 0x1

    return v0

    :catchall_64
    move-exception v0

    invoke-static {v0}, Lq/b5;->a(Ljava/lang/Throwable;)V

    return v2
.end method

.method public final j()Z
    .registers 9

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    const-class v2, Ljava/lang/Object;

    iget-object v3, p0, Lq/a5;->a:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    goto :goto_82

    :cond_c
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "objectFieldOffset"

    const-class v6, Ljava/lang/reflect/Field;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lq/b5;->f()Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_7e

    if-nez v3, :cond_2b

    goto :goto_82

    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lq/a5;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getByte"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    filled-new-array {v5, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v5, v5, v5}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v2, v5, v2, v5, v5}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_77
    .catchall {:try_start_2b .. :try_end_77} :catchall_79

    const/4 v0, 0x1

    return v0

    :catchall_79
    move-exception v0

    invoke-static {v0}, Lq/b5;->a(Ljava/lang/Throwable;)V

    return v4

    :catchall_7e
    move-exception v0

    invoke-static {v0}, Lq/b5;->a(Ljava/lang/Throwable;)V

    :goto_82
    return v4
.end method
