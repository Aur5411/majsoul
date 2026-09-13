.class public final Lq/H4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/Iterator;

.field public final synthetic d:Lq/D4;


# direct methods
.method public constructor <init>(Lq/D4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/H4;->d:Lq/D4;

    const/4 p1, -0x1

    iput p1, p0, Lq/H4;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lq/H4;->c:Ljava/util/Iterator;

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/H4;->d:Lq/D4;

    iget-object v0, v0, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lq/H4;->c:Ljava/util/Iterator;

    :cond_12
    iget-object v0, p0, Lq/H4;->c:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    iget v0, p0, Lq/H4;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lq/H4;->d:Lq/D4;

    iget-object v3, v2, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_22

    iget-object v0, v2, Lq/D4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lq/H4;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_22
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/H4;->b:Z

    iget v1, p0, Lq/H4;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/H4;->a:I

    iget-object v0, p0, Lq/H4;->d:Lq/D4;

    iget-object v2, v0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v0, v0, Lq/D4;->b:Ljava/util/List;

    iget v1, p0, Lq/H4;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_27

    :cond_1d
    invoke-virtual {p0}, Lq/H4;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_27
    return-object v0
.end method

.method public final remove()V
    .registers 4

    iget-boolean v0, p0, Lq/H4;->b:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/H4;->b:Z

    sget v0, Lq/D4;->g:I

    iget-object v0, p0, Lq/H4;->d:Lq/D4;

    invoke-virtual {v0}, Lq/D4;->b()V

    iget v1, p0, Lq/H4;->a:I

    iget-object v2, v0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    iget v1, p0, Lq/H4;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lq/H4;->a:I

    invoke-virtual {v0, v1}, Lq/D4;->h(I)Ljava/lang/Object;

    goto :goto_29

    :cond_22
    invoke-virtual {p0}, Lq/H4;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
