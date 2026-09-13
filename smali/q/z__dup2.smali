.class public final Lq/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lq/B;


# direct methods
.method public constructor <init>(Lq/B;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/z;->c:Lq/B;

    const/4 v0, 0x0

    iput v0, p0, Lq/z;->a:I

    invoke-virtual {p1}, Lq/B;->size()I

    move-result p1

    iput p1, p0, Lq/z;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lq/z;->a:I

    iget v1, p0, Lq/z;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lq/z;->a:I

    iget v1, p0, Lq/z;->b:I

    if-ge v0, v1, :cond_15

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lq/z;->a:I

    iget-object v1, p0, Lq/z;->c:Lq/B;

    invoke-virtual {v1, v0}, Lq/B;->g(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
