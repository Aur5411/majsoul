.class public Lq/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/x2;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    .line 4
    :try_start_11
    invoke-static {p1}, Lq/v2;->j(Landroid/content/ContextWrapper;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_26
    .catch Lq/K1; {:try_start_11 .. :try_end_15} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_15} :catch_22

    .line 5
    :try_start_15
    invoke-static {v0}, Lq/S0;->C(Ljava/io/InputStream;)Lq/S0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lq/v2;->i(Lq/S0;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_28

    if-eqz v0, :cond_85

    .line 6
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_26
    .catch Lq/K1; {:try_start_1e .. :try_end_21} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_85

    :catch_22
    move-exception v0

    goto :goto_34

    :catch_24
    move-exception v0

    goto :goto_34

    :catch_26
    move-exception v0

    goto :goto_34

    :catchall_28
    move-exception v1

    if-eqz v0, :cond_33

    .line 7
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw v1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_26
    .catch Lq/K1; {:try_start_30 .. :try_end_34} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_34} :catch_22

    .line 8
    :goto_34
    invoke-static {p1}, Lq/y;->a(Landroid/content/Context;)Lq/A2;

    move-result-object v1

    if-nez v1, :cond_49

    .line 9
    instance-of p1, v0, Ljava/io/IOException;

    if-nez p1, :cond_46

    .line 10
    instance-of p1, v0, Lq/K1;

    if-eqz p1, :cond_45

    check-cast v0, Lq/K1;

    .line 11
    throw v0

    .line 12
    :cond_45
    throw v0

    .line 13
    :cond_46
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 14
    :cond_49
    sget-object v0, Lq/y;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_4c
    invoke-static {p1}, Lq/y;->A(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    sput-object v2, Lq/y;->b:Lq/A2;

    .line 17
    const-string v2, ""

    sput-object v2, Lq/y;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 20
    :cond_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_92

    .line 21
    iget-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 22
    iget-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "liqi/liqi.desc"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 24
    :try_start_79
    invoke-static {p1}, Lq/S0;->C(Ljava/io/InputStream;)Lq/S0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq/v2;->i(Lq/S0;)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_86

    if-eqz p1, :cond_85

    .line 25
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_85
    :goto_85
    return-void

    :catchall_86
    move-exception v0

    if-eqz p1, :cond_91

    .line 26
    :try_start_89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw v0

    :catchall_92
    move-exception p1

    .line 27
    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw p1
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    .line 31
    invoke-static {p1}, Lq/S0;->C(Ljava/io/InputStream;)Lq/S0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq/v2;->i(Lq/S0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lq/C2;

    invoke-direct {v0, p1, p2, p3}, Lq/C2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 45
    iget-object p1, v0, Lq/C2;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lq/v2;->a:Ljava/lang/Object;

    .line 46
    iput-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq/w2;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    .line 34
    iget-boolean v0, p1, Lq/g2;->c:Z

    .line 35
    iget-object p1, p1, Lq/g2;->a:Lq/D4;

    if-eqz v0, :cond_1d

    .line 36
    new-instance v0, Lq/Z2;

    invoke-virtual {p1}, Lq/D4;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lq/I4;

    invoke-virtual {p1}, Lq/I4;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, v0, Lq/Z2;->a:Ljava/util/Iterator;

    goto :goto_27

    .line 39
    :cond_1d
    invoke-virtual {p1}, Lq/D4;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lq/I4;

    invoke-virtual {p1}, Lq/I4;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    :goto_27
    iput-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lq/v2;->b:Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public static j(Landroid/content/ContextWrapper;)Ljava/io/InputStream;
    .registers 3

    invoke-static {p0}, Lq/y;->a(Landroid/content/Context;)Lq/A2;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    if-lez v1, :cond_13

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "liqi/liqi.desc"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lq/t2;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v1, Lq/C2;

    iget-object v1, v1, Lq/C2;->b:Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lq/K2;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v1, Lq/C2;

    iget-object v1, v1, Lq/C2;->a:Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lq/K2;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lq/t2;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lq/t2;)Lq/a;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lq/a;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lq/t2;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Lq/C2;

    iget-object v0, v0, Lq/C2;->e:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Lq/t2;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v1, Lq/C2;

    iget-object v1, v1, Lq/C2;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lq/v2;->g(Lq/t2;Ljava/lang/Object;)V

    goto :goto_12

    :cond_20
    return-void
.end method

.method public i(Lq/S0;)V
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lq/S0;->d:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_68

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/P0;

    iget-object v5, v4, Lq/P0;->g:Lq/b3;

    iget-object v5, v5, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lq/S1;

    move v6, v2

    :goto_2f
    iget-object v7, v4, Lq/P0;->g:Lq/b3;

    iget-object v7, v7, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4d

    iget-object v7, v4, Lq/P0;->g:Lq/b3;

    invoke-virtual {v7, v6}, Lq/b3;->e(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/S1;

    aput-object v7, v5, v6

    if-nez v7, :cond_4a

    goto :goto_18

    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_4d
    invoke-static {v4, v5, v2}, Lq/S1;->f(Lq/P0;[Lq/S1;Z)Lq/S1;

    move-result-object v3

    invoke-virtual {v4}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_18

    :cond_5d
    if-eqz v3, :cond_60

    goto :goto_c

    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Liqi descriptor dependencies cannot be resolved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/S1;

    invoke-virtual {v0}, Lq/S1;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/G1;

    invoke-virtual {p0, v2}, Lq/v2;->k(Lq/G1;)V

    goto :goto_84

    :cond_94
    iget-object v0, v0, Lq/S1;->d:[Lq/W1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/W1;

    iget-object v2, v1, Lq/W1;->d:[Lq/U1;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/U1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lq/W1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lq/U1;->a:Lq/c1;

    invoke-virtual {v5}, Lq/c1;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc

    :cond_ec
    return-void
.end method

.method public k(Lq/G1;)V
    .registers 4

    iget-object v0, p1, Lq/G1;->b:Ljava/lang/String;

    iget-object v1, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lq/G1;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/G1;

    invoke-virtual {p0, v0}, Lq/v2;->k(Lq/G1;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method public l(Ljava/lang/String;)Lq/G1;
    .registers 5

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    :cond_9
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_16
    iget-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/G1;

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lq."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/G1;

    return-object p1

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()Z
    .registers 5

    iget-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "lq.FastTest.authGame"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/U1;

    const/4 v3, 0x0

    if-nez v2, :cond_11

    move-object v2, v3

    goto :goto_13

    :cond_11
    iget-object v2, v2, Lq/U1;->d:Lq/G1;

    :goto_13
    if-eqz v2, :cond_3c

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/U1;

    if-nez v1, :cond_1f

    move-object v1, v3

    goto :goto_21

    :cond_1f
    iget-object v1, v1, Lq/U1;->e:Lq/G1;

    :goto_21
    if-eqz v1, :cond_3c

    const-string v1, "lq.Lobby.fetchInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/U1;

    if-nez v0, :cond_2e

    goto :goto_30

    :cond_2e
    iget-object v3, v0, Lq/U1;->e:Lq/G1;

    :goto_30
    if-eqz v3, :cond_3c

    const-string v0, ".lq.NotifyAccountUpdate"

    invoke-virtual {p0, v0}, Lq/v2;->l(Ljava/lang/String;)Lq/G1;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return v0
.end method

.method public n(ILq/F;)V
    .registers 5

    :goto_0
    iget-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/R1;

    iget-object v0, v0, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->f:I

    if-ge v0, p1, :cond_3e

    iget-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/R1;

    iget-object v1, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lq/g2;->q(Lq/f2;Ljava/lang/Object;Lq/F;)V

    iget-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lq/v2;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3e
    return-void
.end method
