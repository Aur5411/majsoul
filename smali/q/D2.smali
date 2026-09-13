.class public final Lq/D2;
.super Lq/v2;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lq/v2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p2, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "newBuilder"

    invoke-static {p2, v1, v0}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lq/D2;->c:Ljava/lang/reflect/Method;

    const-string p2, "get"

    const-string v0, "Builder"

    invoke-static {p2, p1, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final f()Lq/a;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/D2;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/a;

    return-object v0
.end method

.method public final g(Lq/t2;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lq/v2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_21

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/D2;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/a;

    check-cast p2, Lq/c;

    invoke-virtual {v0, p2}, Lq/a;->w(Lq/c;)Lq/a;

    move-result-object p2

    invoke-virtual {p2}, Lq/a;->o()Lq/c;

    move-result-object p2

    :goto_21
    invoke-super {p0, p1, p2}, Lq/v2;->g(Lq/t2;Ljava/lang/Object;)V

    return-void
.end method
