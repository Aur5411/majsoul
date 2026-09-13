.class public final Lq/I2;
.super Lq/G2;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lq/G2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    const-string p1, "get"

    const-string p5, "Bytes"

    invoke-static {p1, p2, p5}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p3, p1, v0}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lq/B;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lq/I2;->f:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final h(Lq/t2;Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p2, Lq/B;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lq/I2;->f:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_e
    invoke-super {p0, p1, p2}, Lq/G2;->h(Lq/t2;Ljava/lang/Object;)V

    :goto_11
    return-void
.end method
