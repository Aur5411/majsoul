.class public final synthetic Lq/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Lq/p4;

    iget p1, p1, Lq/p4;->e:F

    float-to-double v0, p1

    return-wide v0
.end method
