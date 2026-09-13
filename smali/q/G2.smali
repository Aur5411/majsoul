.class public Lq/G2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/x2;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lq/R1;

.field public final c:Z

.field public final d:Z

.field public final e:Lq/F2;


# direct methods
.method public constructor <init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lq/R1;->j:Lq/V1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v3, v0, Lq/V1;->g:[Lq/R1;

    array-length v4, v3

    if-ne v4, v1, :cond_15

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lq/R1;->f:Z

    if-eqz v3, :cond_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    if-eqz v0, :cond_19

    move v8, v1

    goto :goto_1a

    :cond_19
    move v8, v2

    :goto_1a
    iput-boolean v8, p0, Lq/G2;->c:Z

    iget-object v0, p1, Lq/R1;->d:Lq/S1;

    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2b

    invoke-virtual {p1}, Lq/R1;->k()Z

    move-result v3

    if-nez v3, :cond_54

    :cond_2b
    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_54

    iget-boolean v3, p1, Lq/R1;->f:Z

    if-nez v3, :cond_54

    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v0

    if-ne v0, v4, :cond_47

    invoke-virtual {p1}, Lq/R1;->m()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lq/R1;->j:Lq/V1;

    if-nez v0, :cond_47

    goto :goto_54

    :cond_47
    if-nez v8, :cond_52

    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v3, Lq/P1;->j:Lq/P1;

    if-ne v0, v3, :cond_52

    goto :goto_54

    :cond_52
    move v9, v2

    goto :goto_55

    :cond_54
    :goto_54
    move v9, v1

    :goto_55
    iput-boolean v9, p0, Lq/G2;->d:Z

    new-instance v0, Lq/F2;

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v3 .. v9}, Lq/F2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V

    iput-object p1, p0, Lq/G2;->b:Lq/R1;

    iget-object p1, v0, Lq/F2;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lq/G2;->a:Ljava/lang/Class;

    iput-object v0, p0, Lq/G2;->e:Lq/F2;

    return-void
.end method


# virtual methods
.method public a(Lq/t2;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/G2;->e:Lq/F2;

    iget-object v1, v1, Lq/F2;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lq/K2;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/G2;->e:Lq/F2;

    iget-object v1, v1, Lq/F2;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lq/K2;)Z
    .registers 7

    iget-boolean v0, p0, Lq/G2;->d:Z

    iget-object v1, p0, Lq/G2;->e:Lq/F2;

    const/4 v2, 0x0

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lq/G2;->c:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lq/G2;->b:Lq/R1;

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lq/F2;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p1

    iget-object v0, v4, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->f:I

    if-ne p1, v0, :cond_25

    move v2, v3

    :cond_25
    return v2

    :cond_26
    invoke-virtual {p0, p1}, Lq/G2;->b(Lq/K2;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_34
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lq/F2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final d(Lq/t2;)Z
    .registers 7

    iget-boolean v0, p0, Lq/G2;->d:Z

    iget-object v1, p0, Lq/G2;->e:Lq/F2;

    const/4 v2, 0x0

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lq/G2;->c:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lq/G2;->b:Lq/R1;

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lq/F2;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p1

    iget-object v0, v4, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->f:I

    if-ne p1, v0, :cond_25

    move v2, v3

    :cond_25
    return v2

    :cond_26
    invoke-virtual {p0, p1}, Lq/G2;->a(Lq/t2;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_34
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lq/F2;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
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

.method public final g(Lq/t2;Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lq/t2;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lq/G2;->e:Lq/F2;

    iget-object v0, v0, Lq/F2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
