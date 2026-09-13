.class public final Lq/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ljava/util/Iterator;


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lq/Z2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq/Z2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lq/a3;

    if-eqz v1, :cond_18

    new-instance v1, Lq/Y2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lq/Y2;->a:Ljava/util/Map$Entry;

    move-object v0, v1

    :cond_18
    return-object v0
.end method

.method public final remove()V
    .registers 2

    iget-object v0, p0, Lq/Z2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
