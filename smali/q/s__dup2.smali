.class public final Lq/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq/L3;

.field public b:Lq/L3;

.field public c:Lq/N3;

.field public final synthetic d:Lq/t;


# direct methods
.method public constructor <init>(Lq/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/s;->d:Lq/t;

    return-void
.end method

.method public static c(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast p1, Ljava/util/Set;

    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1c

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_19} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_19} :catch_1e

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    :catch_1e
    :cond_1e
    return v2
.end method


# virtual methods
.method public final a(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lq/s;->d:Lq/t;

    iget-object v0, v0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lq/s;->d:Lq/t;

    invoke-virtual {v0, p1}, Lq/t;->h(I)Ljava/lang/Object;

    return-void
.end method

.method public final d([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lq/s;->d:Lq/t;

    iget v0, v0, Lq/t;->c:I

    array-length v1, p1

    if-ge v1, v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_21

    invoke-virtual {p0, v1, p2}, Lq/s;->a(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_21
    array-length p2, p1

    if-le p2, v0, :cond_27

    const/4 p2, 0x0

    aput-object p2, p1, v0

    :cond_27
    return-object p1
.end method
