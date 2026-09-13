.class public final Lq/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq/o4;->b:Ljava/io/Serializable;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lq/o4;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lq/o4;->a:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lq/o4;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lq/o4;->b:Ljava/io/Serializable;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lq/o4;->a:I

    return-void
.end method

.method public constructor <init>([I)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 11
    iput v0, p0, Lq/o4;->a:I

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/o4;->c:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lq/o4;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 9

    iget v0, p0, Lq/o4;->a:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong data accessor type detected. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "String"

    const-string v4, "ArrayBuffer"

    const-string v5, "Unknown"

    const/4 v6, 0x1

    if-eqz v0, :cond_1d

    if-eq v0, v6, :cond_1b

    move-object v0, v5

    goto :goto_1e

    :cond_1b
    move-object v0, v4

    goto :goto_1e

    :cond_1d
    move-object v0, v3

    :goto_1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " expected, but got "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2d

    if-eq p1, v6, :cond_2c

    move-object v3, v5

    goto :goto_2d

    :cond_2c
    move-object v3, v4

    :cond_2d
    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(IIII)V
    .registers 12

    rsub-int/lit8 v0, p2, 0x4

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lq/o4;->a:I

    mul-int/lit8 v2, p2, 0x2

    rsub-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lq/o4;->a:I

    :goto_19
    const/16 v1, 0x22

    iget-object v2, p0, Lq/o4;->b:Ljava/io/Serializable;

    check-cast v2, [I

    if-ge p1, v1, :cond_28

    aget v3, v2, p1

    if-nez v3, :cond_28

    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_28
    if-lt p1, v1, :cond_2b

    return-void

    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, p1

    :goto_43
    if-ge v4, v1, :cond_4e

    aget v5, v2, v4

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lq/o4;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    mul-int/lit8 v5, p2, 0x64

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v5

    add-int/2addr v6, p4

    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v6, :cond_6f

    return-void

    :cond_6f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v2, p1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_88

    sub-int/2addr v1, v3

    aput v1, v2, p1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lq/o4;->b(IIII)V

    aget v1, v2, p1

    add-int/2addr v1, v3

    aput v1, v2, p1

    :cond_88
    const/4 v1, 0x6

    const/16 v3, 0x1b

    if-ge p1, v3, :cond_c0

    rem-int/lit8 v4, p1, 0x9

    if-gt v4, v1, :cond_c0

    add-int/lit8 v4, p1, 0x1

    aget v5, v2, v4

    if-lez v5, :cond_c0

    add-int/lit8 v5, p1, 0x2

    aget v6, v2, v5

    if-lez v6, :cond_c0

    aget v6, v2, p1

    sub-int/2addr v6, v0

    aput v6, v2, p1

    aget v6, v2, v4

    sub-int/2addr v6, v0

    aput v6, v2, v4

    aget v6, v2, v5

    sub-int/2addr v6, v0

    aput v6, v2, v5

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, p1, v6, p3, p4}, Lq/o4;->b(IIII)V

    aget v6, v2, p1

    add-int/2addr v6, v0

    aput v6, v2, p1

    aget v6, v2, v4

    add-int/2addr v6, v0

    aput v6, v2, v4

    aget v4, v2, v5

    add-int/2addr v4, v0

    aput v4, v2, v5

    :cond_c0
    aget v4, v2, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_d2

    sub-int/2addr v4, v5

    aput v4, v2, p1

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, p1, p2, v4, p4}, Lq/o4;->b(IIII)V

    aget v4, v2, p1

    add-int/2addr v4, v5

    aput v4, v2, p1

    :cond_d2
    if-ge p1, v3, :cond_f8

    rem-int/lit8 v4, p1, 0x9

    const/4 v5, 0x7

    if-gt v4, v5, :cond_f8

    add-int/lit8 v4, p1, 0x1

    aget v5, v2, v4

    if-lez v5, :cond_f8

    aget v5, v2, p1

    sub-int/2addr v5, v0

    aput v5, v2, p1

    aget v5, v2, v4

    sub-int/2addr v5, v0

    aput v5, v2, v4

    add-int/lit8 v5, p4, 0x1

    invoke-virtual {p0, p1, p2, p3, v5}, Lq/o4;->b(IIII)V

    aget v5, v2, p1

    add-int/2addr v5, v0

    aput v5, v2, p1

    aget v5, v2, v4

    add-int/2addr v5, v0

    aput v5, v2, v4

    :cond_f8
    if-ge p1, v3, :cond_11d

    rem-int/lit8 v3, p1, 0x9

    if-gt v3, v1, :cond_11d

    add-int/lit8 v1, p1, 0x2

    aget v3, v2, v1

    if-lez v3, :cond_11d

    aget v3, v2, p1

    sub-int/2addr v3, v0

    aput v3, v2, p1

    aget v3, v2, v1

    sub-int/2addr v3, v0

    aput v3, v2, v1

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {p0, p1, p2, p3, v3}, Lq/o4;->b(IIII)V

    aget v3, v2, p1

    add-int/2addr v3, v0

    aput v3, v2, p1

    aget v3, v2, v1

    add-int/2addr v3, v0

    aput v3, v2, v1

    :cond_11d
    aget v1, v2, p1

    sub-int/2addr v1, v0

    aput v1, v2, p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lq/o4;->b(IIII)V

    aget p2, v2, p1

    add-int/2addr p2, v0

    aput p2, v2, p1

    return-void
.end method
