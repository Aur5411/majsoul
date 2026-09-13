.class public final Lq/E2;
.super Lq/G2;
.source "SourceFile"


# instance fields
.field public final f:Lq/M1;

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Z

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;

.field public final l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Lq/G2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lq/R1;->h()Lq/M1;

    move-result-object p5

    iput-object p5, p0, Lq/E2;->f:Lq/M1;

    iget-object p5, p0, Lq/G2;->a:Ljava/lang/Class;

    const-class v0, Lq/O1;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-static {p5, v1, v0}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lq/E2;->g:Ljava/lang/reflect/Method;

    iget-object p5, p0, Lq/G2;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getValueDescriptor"

    invoke-static {p5, v2, v1}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lq/E2;->h:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Lq/R1;->q()Z

    move-result p1

    xor-int/lit8 p5, p1, 0x1

    iput-boolean p5, p0, Lq/E2;->i:Z

    if-nez p1, :cond_5e

    const-string p1, "get"

    const-string p5, "Value"

    invoke-static {p1, p2, p5}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-static {p3, v1, v2}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lq/E2;->j:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, p5}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lq/E2;->k:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lq/E2;->l:Ljava/lang/reflect/Method;

    :cond_5e
    return-void
.end method


# virtual methods
.method public final a(Lq/t2;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lq/E2;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lq/E2;->k:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lq/E2;->f:Lq/M1;

    invoke-virtual {v0, p1}, Lq/M1;->g(I)Lq/O1;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-super {p0, p1}, Lq/G2;->a(Lq/t2;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lq/E2;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lq/K2;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lq/E2;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lq/E2;->j:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lq/E2;->f:Lq/M1;

    invoke-virtual {v0, p1}, Lq/M1;->g(I)Lq/O1;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-super {p0, p1}, Lq/G2;->b(Lq/K2;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lq/E2;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lq/t2;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lq/E2;->i:Z

    if-eqz v0, :cond_18

    check-cast p2, Lq/O1;

    iget-object p2, p2, Lq/O1;->a:Lq/e0;

    iget p2, p2, Lq/e0;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lq/E2;->l:Ljava/lang/reflect/Method;

    invoke-static {p1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_18
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lq/E2;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lq/G2;->h(Lq/t2;Ljava/lang/Object;)V

    return-void
.end method
