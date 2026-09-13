.class public abstract Lq/K2;
.super Lq/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:Lq/W4;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lq/c;-><init>()V

    .line 2
    sget-object v0, Lq/W4;->b:Lq/W4;

    .line 3
    iput-object v0, p0, Lq/K2;->c:Lq/W4;

    return-void
.end method

.method public constructor <init>(Lq/t2;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lq/c;-><init>()V

    .line 5
    invoke-virtual {p1}, Lq/t2;->a()Lq/W4;

    move-result-object p1

    iput-object p1, p0, Lq/K2;->c:Lq/W4;

    return-void
.end method

.method public static B(Lq/F;ILjava/lang/Object;)V
    .registers 5

    instance-of v0, p2, Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_e

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lq/F;->M(II)V

    invoke-virtual {p0, p2}, Lq/F;->L(Ljava/lang/String;)V

    goto :goto_16

    :cond_e
    check-cast p2, Lq/B;

    invoke-virtual {p0, p1, v1}, Lq/F;->M(II)V

    invoke-virtual {p0, p2}, Lq/F;->D(Lq/B;)V

    :goto_16
    return-void
.end method

.method public static t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static v(ILjava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lq/F;->x(I)I

    move-result p0

    invoke-static {p1}, Lq/F;->w(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_10
    check-cast p1, Lq/B;

    invoke-static {p0}, Lq/F;->x(I)I

    move-result p0

    invoke-static {p1}, Lq/F;->q(Lq/B;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static w(Ljava/lang/Object;)I
    .registers 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lq/F;->w(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    check-cast p0, Lq/B;

    invoke-static {p0}, Lq/F;->q(Lq/B;)I

    move-result p0

    return p0
.end method

.method public static z(Lq/R2;)Lq/R2;
    .registers 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_9

    mul-int/lit8 v0, v0, 0x2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-gtz v0, :cond_e

    const/16 v0, 0xa

    :cond_e
    invoke-interface {p0, v0}, Lq/R2;->a(I)Lq/R2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract A(Lq/s2;)Lq/a;
.end method

.method public final a()Lq/W4;
    .registers 2

    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    return-object v0
.end method

.method public g(Lq/R1;)Z
    .registers 3

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1, p0}, Lq/x2;->c(Lq/K2;)Z

    move-result p1

    return p1
.end method

.method public final k()Lq/G1;
    .registers 2

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v0

    iget-object v0, v0, Lq/J2;->a:Lq/G1;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lq/K2;->x()Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public m(Lq/R1;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1, p0}, Lq/x2;->b(Lq/K2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lq/q4;)Lq/a;
    .registers 4

    new-instance v0, Lq/s2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lq/s2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lq/K2;->A(Lq/s2;)Lq/a;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/util/TreeMap;
    .registers 7

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v1

    iget-object v1, v1, Lq/J2;->a:Lq/G1;

    invoke-virtual {v1}, Lq/G1;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/R1;

    iget-object v4, v3, Lq/R1;->j:Lq/V1;

    if-eqz v4, :cond_41

    iget v3, v4, Lq/V1;->f:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v3

    invoke-static {v3, v4}, Lq/J2;->a(Lq/J2;Lq/V1;)Lq/z2;

    move-result-object v3

    invoke-interface {v3, p0}, Lq/z2;->c(Lq/K2;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_65

    :cond_34
    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v3

    invoke-static {v3, v4}, Lq/J2;->a(Lq/J2;Lq/V1;)Lq/z2;

    move-result-object v3

    invoke-interface {v3, p0}, Lq/z2;->b(Lq/K2;)Lq/R1;

    move-result-object v3

    goto :goto_5e

    :cond_41
    invoke-virtual {v3}, Lq/R1;->p()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {p0, v3}, Lq/K2;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_57
    invoke-virtual {p0, v3}, Lq/K2;->g(Lq/R1;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_65

    :cond_5e
    :goto_5e
    invoke-virtual {p0, v3}, Lq/K2;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_68
    return-object v0
.end method

.method public abstract y()Lq/J2;
.end method
