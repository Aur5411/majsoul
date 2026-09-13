.class public final Lq/A;
.super Lq/B;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BII)V
    .registers 5

    invoke-direct {p0, p1}, Lq/B;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lq/B;->c(III)I

    iput p2, p0, Lq/A;->e:I

    iput p3, p0, Lq/A;->f:I

    return-void
.end method


# virtual methods
.method public final b(I)B
    .registers 6

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lq/A;->f:I

    sub-int v0, v1, v0

    or-int/2addr v0, p1

    if-gez v0, :cond_3b

    if-gez p1, :cond_1f

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index > length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iget v0, p0, Lq/A;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lq/B;->b:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public final e([BI)V
    .registers 6

    iget v0, p0, Lq/A;->e:I

    iget-object v1, p0, Lq/B;->b:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lq/A;->e:I

    return v0
.end method

.method public final g(I)B
    .registers 3

    iget v0, p0, Lq/A;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lq/B;->b:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lq/A;->f:I

    return v0
.end method
