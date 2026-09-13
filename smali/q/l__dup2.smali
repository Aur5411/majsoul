.class public final synthetic Lq/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# virtual methods
.method public final applyAsLong(JJ)J
    .registers 5

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method
