.class public final Lq/B2;
.super Lq/v2;
.source "SourceFile"


# instance fields
.field public final c:Lq/M1;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Z

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 9

    invoke-direct {p0, p2, p3, p4}, Lq/v2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lq/R1;->h()Lq/M1;

    move-result-object v0

    iput-object v0, p0, Lq/B2;->c:Lq/M1;

    iget-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const-class v1, Lq/O1;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    invoke-static {v0, v2, v1}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lq/B2;->d:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getValueDescriptor"

    invoke-static {v0, v2, v1}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lq/B2;->e:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Lq/R1;->q()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lq/B2;->f:Z

    if-nez p1, :cond_73

    const-string p1, "get"

    const-string v0, "Value"

    invoke-static {p1, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {p3, v1, v3}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lq/B2;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lq/B2;->h:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p1, "add"

    invoke-static {p1, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lq/B2;->i:Ljava/lang/reflect/Method;

    :cond_73
    return-void
.end method


# virtual methods
.method public final a(Lq/t2;)Ljava/lang/Object;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v3, Lq/C2;

    iget-object v4, v3, Lq/C2;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, v4, v2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v1

    :goto_19
    if-ge v4, v2, :cond_56

    iget-boolean v5, p0, Lq/B2;->f:Z

    if-eqz v5, :cond_3a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lq/B2;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v6, v5}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lq/B2;->c:Lq/M1;

    invoke-virtual {v6, v5}, Lq/M1;->g(I)Lq/O1;

    move-result-object v5

    goto :goto_50

    :cond_3a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lq/C2;->d:Ljava/lang/reflect/Method;

    invoke-static {p1, v6, v5}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lq/B2;->e:Ljava/lang/reflect/Method;

    invoke-static {v5, v7, v6}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_50
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lq/K2;)Ljava/lang/Object;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v3, Lq/C2;

    iget-object v4, v3, Lq/C2;->f:Ljava/lang/reflect/Method;

    invoke-static {p1, v4, v2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v1

    :goto_19
    if-ge v4, v2, :cond_56

    iget-boolean v5, p0, Lq/B2;->f:Z

    if-eqz v5, :cond_3a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lq/B2;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, v6, v5}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lq/B2;->c:Lq/M1;

    invoke-virtual {v6, v5}, Lq/M1;->g(I)Lq/O1;

    move-result-object v5

    goto :goto_50

    :cond_3a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lq/C2;->c:Ljava/lang/reflect/Method;

    invoke-static {p1, v6, v5}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lq/B2;->e:Ljava/lang/reflect/Method;

    invoke-static {v5, v7, v6}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_50
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lq/t2;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lq/B2;->f:Z

    if-eqz v0, :cond_18

    check-cast p2, Lq/O1;

    iget-object p2, p2, Lq/O1;->a:Lq/e0;

    iget p2, p2, Lq/e0;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lq/B2;->i:Ljava/lang/reflect/Method;

    invoke-static {p1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_18
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lq/B2;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lq/v2;->g(Lq/t2;Ljava/lang/Object;)V

    return-void
.end method
