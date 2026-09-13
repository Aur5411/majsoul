.class public final Lq/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_12

    goto :goto_2f

    :cond_12
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The current AndroidX version doesn\'t support this callback value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_26
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lq/c6;->b:Ljava/lang/String;

    goto :goto_2f

    :cond_2b
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lq/c6;->a:Ljava/lang/Integer;

    :goto_2f
    return-void
.end method
