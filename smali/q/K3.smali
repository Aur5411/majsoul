.class public final Lq/K3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:Z

.field public final synthetic e:Lq/s;


# direct methods
.method public constructor <init>(Lq/s;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/K3;->e:Lq/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/K3;->d:Z

    iput p2, p0, Lq/K3;->a:I

    iget-object p1, p1, Lq/s;->d:Lq/t;

    iget p1, p1, Lq/t;->c:I

    iput p1, p0, Lq/K3;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lq/K3;->c:I

    iget v1, p0, Lq/K3;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lq/K3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lq/K3;->c:I

    iget-object v1, p0, Lq/K3;->e:Lq/s;

    iget v2, p0, Lq/K3;->a:I

    invoke-virtual {v1, v0, v2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lq/K3;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lq/K3;->c:I

    iput-boolean v2, p0, Lq/K3;->d:Z

    return-object v0

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3

    iget-boolean v0, p0, Lq/K3;->d:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lq/K3;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq/K3;->c:I

    iget v1, p0, Lq/K3;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lq/K3;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lq/K3;->d:Z

    iget-object v1, p0, Lq/K3;->e:Lq/s;

    invoke-virtual {v1, v0}, Lq/s;->b(I)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
