.class public final Lq/b3;
.super Lq/e;
.source "SourceFile"

# interfaces
.implements Lq/c3;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final c:Lq/b3;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq/b3;

    invoke-direct {v0}, Lq/b3;-><init>()V

    sput-object v0, Lq/b3;->c:Lq/b3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lq/e;-><init>(Z)V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/b3;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lq/e;-><init>(Z)V

    .line 2
    iput-object p1, p0, Lq/b3;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lq/c3;)V
    .registers 4

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lq/e;-><init>(Z)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lq/b3;

    .line 5
    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lq/b3;->b:Ljava/util/List;

    .line 8
    invoke-virtual {p0, p1}, Lq/b3;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(I)Lq/R2;
    .registers 4

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lq/b3;

    invoke-direct {p1, v1}, Lq/b3;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lq/e;->b()V

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4

    .line 3
    invoke-virtual {p0}, Lq/e;->b()V

    .line 4
    instance-of v0, p2, Lq/c3;

    if-eqz v0, :cond_11

    check-cast p2, Lq/c3;

    check-cast p2, Lq/b3;

    .line 5
    iget-object p2, p2, Lq/b3;->b:Ljava/util/List;

    .line 6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 7
    :cond_11
    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 8
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lq/b3;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .registers 2

    invoke-virtual {p0}, Lq/e;->b()V

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final d(Lq/B;)V
    .registers 3

    invoke-virtual {p0}, Lq/e;->b()V

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final e(I)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_d

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_d
    instance-of v2, v1, Lq/B;

    if-eqz v2, :cond_21

    check-cast v1, Lq/B;

    invoke-virtual {v1}, Lq/B;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lq/B;->h()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v2

    :cond_21
    check-cast v1, [B

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lq/i5;->a:Lq/k3;

    array-length v3, v1

    sget-object v4, Lq/i5;->a:Lq/k3;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Lq/k3;->m([BII)I

    move-result v1

    if-nez v1, :cond_39

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_39
    return-object v2
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lq/b3;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lq/e;->b()V

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/String;

    goto :goto_2b

    :cond_16
    instance-of v0, p1, Lq/B;

    if-eqz v0, :cond_21

    check-cast p1, Lq/B;

    invoke-virtual {p1}, Lq/B;->k()Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_21
    check-cast p1, [B

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v0

    :goto_2b
    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lq/e;->b()V

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_12

    check-cast p1, Ljava/lang/String;

    goto :goto_27

    :cond_12
    instance-of p2, p1, Lq/B;

    if-eqz p2, :cond_1d

    check-cast p1, Lq/B;

    invoke-virtual {p1}, Lq/B;->k()Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_1d
    check-cast p1, [B

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, p2

    :goto_27
    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
