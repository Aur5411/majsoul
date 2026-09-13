.class public final Lq/k5;
.super Lq/j5;
.source "SourceFile"


# instance fields
.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroid/os/Parcel;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Lq/t;

    invoke-direct {v5}, Lq/t;-><init>()V

    new-instance v6, Lq/t;

    invoke-direct {v6}, Lq/t;-><init>()V

    new-instance v7, Lq/t;

    invoke-direct {v7}, Lq/t;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lq/k5;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lq/t;Lq/t;Lq/t;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Lq/t;Lq/t;Lq/t;)V
    .registers 8

    .line 2
    invoke-direct {p0, p5, p6, p7}, Lq/j5;-><init>(Lq/t;Lq/t;Lq/t;)V

    .line 3
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lq/k5;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 4
    iput p5, p0, Lq/k5;->i:I

    .line 5
    iput p5, p0, Lq/k5;->k:I

    .line 6
    iput-object p1, p0, Lq/k5;->e:Landroid/os/Parcel;

    .line 7
    iput p2, p0, Lq/k5;->f:I

    .line 8
    iput p3, p0, Lq/k5;->g:I

    .line 9
    iput p2, p0, Lq/k5;->j:I

    .line 10
    iput-object p4, p0, Lq/k5;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lq/k5;
    .registers 10

    new-instance v8, Lq/k5;

    iget-object v1, p0, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Lq/k5;->j:I

    iget v3, p0, Lq/k5;->f:I

    if-ne v0, v3, :cond_10

    iget v0, p0, Lq/k5;->g:I

    :cond_10
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lq/k5;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lq/j5;->b:Lq/t;

    iget-object v7, p0, Lq/j5;->c:Lq/t;

    iget-object v5, p0, Lq/j5;->a:Lq/t;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lq/k5;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lq/t;Lq/t;Lq/t;)V

    return-object v8
.end method

.method public final e(I)Z
    .registers 6

    :goto_0
    iget v0, p0, Lq/k5;->j:I

    iget v1, p0, Lq/k5;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_33

    iget v0, p0, Lq/k5;->k:I

    if-ne v0, p1, :cond_d

    return v3

    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    return v2

    :cond_1c
    iget v0, p0, Lq/k5;->j:I

    iget-object v1, p0, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lq/k5;->k:I

    iget v1, p0, Lq/k5;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lq/k5;->j:I

    goto :goto_0

    :cond_33
    iget v0, p0, Lq/k5;->k:I

    if-ne v0, p1, :cond_38

    move v2, v3

    :cond_38
    return v2
.end method

.method public final h(I)V
    .registers 7

    iget v0, p0, Lq/k5;->i:I

    iget-object v1, p0, Lq/k5;->d:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lq/k5;->e:Landroid/os/Parcel;

    if-ltz v0, :cond_1b

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v4, v3, v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_1b
    iput p1, p0, Lq/k5;->i:I

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
