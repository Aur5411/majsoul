.class public final Lq/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/a6;
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_57

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_18

    goto :goto_6e

    :cond_18
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The current AndroidX version doesn\'t support this callback value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2c
    instance-of p1, p2, Ljava/util/List;

    iget-object v0, p0, Lq/d6;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4b

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6e

    new-instance p1, Lq/L2;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Throwable;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lq/L2;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_4b
    new-instance p1, Lq/L2;

    check-cast p2, Ljava/lang/Throwable;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lq/L2;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_57
    iget-object p1, p0, Lq/d6;->a:Ljava/util/ArrayList;

    new-instance v0, Lq/L2;

    check-cast p2, Ljava/lang/Throwable;

    const/4 p2, 0x7

    invoke-direct {v0, p2}, Lq/L2;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_65
    if-eqz p2, :cond_6e

    check-cast p2, Ljava/lang/Long;

    goto :goto_6e

    :cond_6a
    if-eqz p2, :cond_6e

    check-cast p2, Ljava/lang/Long;

    :cond_6e
    :goto_6e
    return-void
.end method
