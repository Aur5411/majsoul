.class public final Lq/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/x2;
.implements Lq/z2;


# instance fields
.field public final synthetic a:I

.field public final b:Lq/R1;


# direct methods
.method public constructor <init>(ILq/G1;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lq/y2;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Lq/G1;->k()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/V1;

    .line 3
    iget-object p1, p1, Lq/V1;->g:[Lq/R1;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/R1;

    iput-object p1, p0, Lq/y2;->b:Lq/R1;

    return-void
.end method

.method public constructor <init>(Lq/R1;Ljava/lang/Class;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lq/y2;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lq/y2;->b:Lq/R1;

    const/4 p1, 0x0

    .line 8
    new-array v0, p1, [Ljava/lang/Class;

    const-string v1, "getDefaultInstance"

    invoke-static {p2, v1, v0}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    invoke-static {v0, p2, p1}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/K2;

    invoke-virtual {p0, p1}, Lq/y2;->i(Lq/K2;)V

    throw v0
.end method


# virtual methods
.method public a(Lq/t2;)Ljava/lang/Object;
    .registers 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lq/y2;->b:Lq/R1;

    iget-object v0, v0, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->f:I

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No map fields found in "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lq/t2;)Lq/R1;
    .registers 3

    .line 1
    iget-object v0, p0, Lq/y2;->b:Lq/R1;

    invoke-virtual {p1, v0}, Lq/t2;->g(Lq/R1;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public b(Lq/K2;)Ljava/lang/Object;
    .registers 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lq/y2;->i(Lq/K2;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Lq/K2;)Lq/R1;
    .registers 3

    .line 1
    iget-object v0, p0, Lq/y2;->b:Lq/R1;

    invoke-virtual {p1, v0}, Lq/K2;->g(Lq/R1;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final c(Lq/K2;)Z
    .registers 3

    iget v0, p0, Lq/y2;->a:I

    packed-switch v0, :pswitch_data_14

    iget-object v0, p0, Lq/y2;->b:Lq/R1;

    invoke-virtual {p1, v0}, Lq/K2;->g(Lq/R1;)Z

    move-result p1

    return p1

    :pswitch_c  #0x0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c  #00000000
    .end packed-switch
.end method

.method public final d(Lq/t2;)Z
    .registers 3

    iget v0, p0, Lq/y2;->a:I

    packed-switch v0, :pswitch_data_14

    iget-object v0, p0, Lq/y2;->b:Lq/R1;

    invoke-virtual {p1, v0}, Lq/t2;->g(Lq/R1;)Z

    move-result p1

    return p1

    :pswitch_c  #0x0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c  #00000000
    .end packed-switch
.end method

.method public e(Lq/t2;)Lq/a;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder not supported for map fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lq/a;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public g(Lq/t2;Ljava/lang/Object;)V
    .registers 4

    iget-object p2, p0, Lq/y2;->b:Lq/R1;

    iget-object p2, p2, Lq/R1;->b:Lq/C0;

    iget p2, p2, Lq/C0;->f:I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public h(Lq/t2;Ljava/lang/Object;)V
    .registers 4

    iget-object p2, p0, Lq/y2;->b:Lq/R1;

    iget-object p2, p2, Lq/R1;->b:Lq/C0;

    iget p2, p2, Lq/C0;->f:I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i(Lq/K2;)V
    .registers 4

    iget-object v0, p0, Lq/y2;->b:Lq/R1;

    iget-object v0, v0, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No map fields found in "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
