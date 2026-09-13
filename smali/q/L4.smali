.class public final Lq/L4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/Object;


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lq/L4;

    sget-object p1, Lq/N4;->a:Ljava/util/logging/Logger;

    const-string v0, "Invalid key for map field."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method
