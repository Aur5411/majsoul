.class public final Lq/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# static fields
.field public static e:[Ljava/lang/Object;

.field public static f:I

.field public static g:[Ljava/lang/Object;

.field public static h:I


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:Lq/s;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq/k3;->e:[I

    iput-object v0, p0, Lq/t;->a:[I

    sget-object v0, Lq/k3;->f:[Ljava/lang/Object;

    iput-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lq/t;->c:I

    return-void
.end method

.method public static b([III)I
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p1, :cond_1d

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    :try_start_9
    aget v2, p0, v1
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_b} :catch_17

    if-ge v2, p2, :cond_11

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_3

    :cond_11
    if-le v2, p2, :cond_1e

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_3

    :catch_17
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1d
    not-int v1, v0

    :cond_1e
    return v1
.end method

.method public static c([I[Ljava/lang/Object;I)V
    .registers 10

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2f

    const-class v0, Lq/t;

    monitor-enter v0

    :try_start_e
    sget v1, Lq/t;->h:I

    if-ge v1, v5, :cond_2b

    sget-object v1, Lq/t;->g:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1b
    if-lt p0, v3, :cond_24

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    :catchall_22
    move-exception p0

    goto :goto_2d

    :cond_24
    sput-object p1, Lq/t;->g:[Ljava/lang/Object;

    sget p0, Lq/t;->h:I

    add-int/2addr p0, v6

    sput p0, Lq/t;->h:I

    :cond_2b
    monitor-exit v0

    goto :goto_57

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_22

    throw p0

    :cond_2f
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_57

    const-class v0, Lq/t;

    monitor-enter v0

    :try_start_36
    sget v1, Lq/t;->f:I

    if-ge v1, v5, :cond_53

    sget-object v1, Lq/t;->e:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_43
    if-lt p0, v3, :cond_4c

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_43

    :catchall_4a
    move-exception p0

    goto :goto_55

    :cond_4c
    sput-object p1, Lq/t;->e:[Ljava/lang/Object;

    sget p0, Lq/t;->f:I

    add-int/2addr p0, v6

    sput p0, Lq/t;->f:I

    :cond_53
    monitor-exit v0

    goto :goto_57

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_4a

    throw p0

    :cond_57
    :goto_57
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2d

    const-class v0, Lq/t;

    monitor-enter v0

    :try_start_a
    sget-object v4, Lq/t;->g:[Ljava/lang/Object;

    if-eqz v4, :cond_29

    iput-object v4, p0, Lq/t;->b:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Lq/t;->g:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Lq/t;->a:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Lq/t;->h:I

    sub-int/2addr p1, v3

    sput p1, Lq/t;->h:I

    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    goto :goto_2b

    :cond_29
    monitor-exit v0

    goto :goto_56

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_27

    throw p1

    :cond_2d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_56

    const-class v0, Lq/t;

    monitor-enter v0

    :try_start_33
    sget-object v4, Lq/t;->e:[Ljava/lang/Object;

    if-eqz v4, :cond_52

    iput-object v4, p0, Lq/t;->b:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Lq/t;->e:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Lq/t;->a:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Lq/t;->f:I

    sub-int/2addr p1, v3

    sput p1, Lq/t;->f:I

    monitor-exit v0

    return-void

    :catchall_50
    move-exception p1

    goto :goto_54

    :cond_52
    monitor-exit v0

    goto :goto_56

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_33 .. :try_end_55} :catchall_50

    throw p1

    :cond_56
    :goto_56
    new-array v0, p1, [I

    iput-object v0, p0, Lq/t;->a:[I

    shl-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lq/t;->b:[Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .registers 5

    iget v0, p0, Lq/t;->c:I

    if-lez v0, :cond_16

    iget-object v1, p0, Lq/t;->a:[I

    iget-object v2, p0, Lq/t;->b:[Ljava/lang/Object;

    sget-object v3, Lq/k3;->e:[I

    iput-object v3, p0, Lq/t;->a:[I

    sget-object v3, Lq/k3;->f:[Ljava/lang/Object;

    iput-object v3, p0, Lq/t;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lq/t;->c:I

    invoke-static {v1, v2, v0}, Lq/t;->c([I[Ljava/lang/Object;I)V

    :cond_16
    iget v0, p0, Lq/t;->c:I

    if-gtz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lq/t;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lq/t;->g(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public final d(ILjava/lang/Object;)I
    .registers 8

    iget v0, p0, Lq/t;->c:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    iget-object v1, p0, Lq/t;->a:[I

    invoke-static {v1, v0, p1}, Lq/t;->b([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Lq/t;->a:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_36

    iget-object v3, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_50

    iget-object v0, p0, Lq/t;->a:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_50

    iget-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v1

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_50
    not-int p1, v2

    return p1
.end method

.method public final e(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lq/t;->f()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lq/t;->d(ILjava/lang/Object;)I

    move-result p1

    :goto_f
    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 4

    iget-object v0, p0, Lq/t;->d:Lq/s;

    if-nez v0, :cond_b

    new-instance v0, Lq/s;

    invoke-direct {v0, p0}, Lq/s;-><init>(Lq/t;)V

    iput-object v0, p0, Lq/t;->d:Lq/s;

    :cond_b
    iget-object v0, p0, Lq/t;->d:Lq/s;

    iget-object v1, v0, Lq/s;->a:Lq/L3;

    if-nez v1, :cond_19

    new-instance v1, Lq/L3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lq/L3;-><init>(Lq/s;I)V

    iput-object v1, v0, Lq/s;->a:Lq/L3;

    :cond_19
    iget-object v0, v0, Lq/s;->a:Lq/L3;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    check-cast p1, Lq/t;

    iget v1, p0, Lq/t;->c:I

    iget v3, p1, Lq/t;->c:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    move v1, v2

    :goto_13
    :try_start_13
    iget v3, p0, Lq/t;->c:I

    if-ge v1, v3, :cond_3a

    iget-object v3, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v5}, Lq/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_30

    if-nez v4, :cond_2f

    invoke-virtual {p1, v5}, Lq/t;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_2f
    return v2

    :cond_30
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_34} :catch_3b
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_34} :catch_3b

    if-nez v3, :cond_37

    return v2

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_3a
    return v0

    :catch_3b
    return v2

    :cond_3c
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_74

    check-cast p1, Ljava/util/Map;

    iget v1, p0, Lq/t;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    move v1, v2

    :goto_4c
    :try_start_4c
    iget v3, p0, Lq/t;->c:I

    if-ge v1, v3, :cond_73

    iget-object v3, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_69

    if-nez v4, :cond_68

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    :cond_68
    return v2

    :cond_69
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_6d} :catch_74
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_6d} :catch_74

    if-nez v3, :cond_70

    return v2

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_73
    return v0

    :catch_74
    :cond_74
    return v2
.end method

.method public final f()I
    .registers 6

    iget v0, p0, Lq/t;->c:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v1, p0, Lq/t;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lq/t;->b([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Lq/t;->a:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    iget-object v3, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_45

    iget-object v0, p0, Lq/t;->a:[I

    aget v0, v0, v1

    if-nez v0, :cond_45

    iget-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    return v1

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_45
    not-int v0, v2

    return v0
.end method

.method public final g(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Lq/t;->c:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lq/t;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_15

    move p1, v2

    :goto_a
    if-ge p1, v0, :cond_26

    aget-object v3, v1, p1

    if-nez v3, :cond_12

    shr-int/2addr p1, v2

    return p1

    :cond_12
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_26

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_16

    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lq/t;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    iget-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public final h(I)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Lq/t;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1c

    iget-object p1, p0, Lq/t;->a:[I

    invoke-static {p1, v0, v3}, Lq/t;->c([I[Ljava/lang/Object;I)V

    sget-object p1, Lq/k3;->e:[I

    iput-object p1, p0, Lq/t;->a:[I

    sget-object p1, Lq/k3;->f:[Ljava/lang/Object;

    iput-object p1, p0, Lq/t;->b:[Ljava/lang/Object;

    goto :goto_79

    :cond_1c
    add-int/lit8 v6, v3, -0x1

    iget-object v7, p0, Lq/t;->a:[I

    array-length v8, v7

    const/16 v9, 0x8

    if-le v8, v9, :cond_5e

    array-length v8, v7

    div-int/lit8 v8, v8, 0x3

    if-ge v3, v8, :cond_5e

    if-le v3, v9, :cond_30

    shr-int/lit8 v8, v3, 0x1

    add-int v9, v3, v8

    :cond_30
    invoke-virtual {p0, v9}, Lq/t;->a(I)V

    iget v8, p0, Lq/t;->c:I

    if-ne v3, v8, :cond_58

    if-lez p1, :cond_43

    iget-object v8, p0, Lq/t;->a:[I

    invoke-static {v7, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lq/t;->b:[Ljava/lang/Object;

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_43
    if-ge p1, v6, :cond_78

    add-int/lit8 v4, p1, 0x1

    iget-object v8, p0, Lq/t;->a:[I

    sub-int v9, v6, p1

    invoke-static {v7, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v4, 0x1

    iget-object v4, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v9, 0x1

    invoke-static {v0, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_78

    :cond_58
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_5e
    if-ge p1, v6, :cond_6e

    add-int/lit8 v0, p1, 0x1

    sub-int v4, v6, p1

    invoke-static {v7, v0, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/2addr v0, v5

    shl-int/2addr v4, v5

    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6e
    iget-object p1, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/2addr v0, v5

    aput-object v1, p1, v0

    :cond_78
    :goto_78
    move v4, v6

    :goto_79
    iget p1, p0, Lq/t;->c:I

    if-ne v3, p1, :cond_80

    iput v4, p0, Lq/t;->c:I

    return-object v2

    :cond_80
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final hashCode()I
    .registers 10

    iget-object v0, p0, Lq/t;->a:[I

    iget-object v1, p0, Lq/t;->b:[Ljava/lang/Object;

    iget v2, p0, Lq/t;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    :goto_a
    if-ge v5, v2, :cond_1f

    aget-object v7, v1, v4

    aget v8, v0, v5

    if-nez v7, :cond_14

    move v7, v3

    goto :goto_18

    :cond_14
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_18
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_a

    :cond_1f
    return v6
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lq/t;->c:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 4

    iget-object v0, p0, Lq/t;->d:Lq/s;

    if-nez v0, :cond_b

    new-instance v0, Lq/s;

    invoke-direct {v0, p0}, Lq/s;-><init>(Lq/t;)V

    iput-object v0, p0, Lq/t;->d:Lq/s;

    :cond_b
    iget-object v0, p0, Lq/t;->d:Lq/s;

    iget-object v1, v0, Lq/s;->b:Lq/L3;

    if-nez v1, :cond_19

    new-instance v1, Lq/L3;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lq/L3;-><init>(Lq/s;I)V

    iput-object v1, v0, Lq/s;->b:Lq/L3;

    :cond_19
    iget-object v0, v0, Lq/s;->b:Lq/L3;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget v0, p0, Lq/t;->c:I

    const/4 v1, 0x0

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lq/t;->f()I

    move-result v2

    move v3, v1

    goto :goto_16

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lq/t;->d(ILjava/lang/Object;)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_16
    if-ltz v2, :cond_23

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_23
    not-int v2, v2

    iget-object v4, p0, Lq/t;->a:[I

    array-length v5, v4

    if-lt v0, v5, :cond_58

    const/16 v5, 0x8

    if-lt v0, v5, :cond_31

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    goto :goto_36

    :cond_31
    const/4 v6, 0x4

    if-lt v0, v6, :cond_35

    goto :goto_36

    :cond_35
    move v5, v6

    :goto_36
    iget-object v6, p0, Lq/t;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lq/t;->a(I)V

    iget v5, p0, Lq/t;->c:I

    if-ne v0, v5, :cond_52

    iget-object v5, p0, Lq/t;->a:[I

    array-length v7, v5

    if-lez v7, :cond_4e

    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lq/t;->b:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    invoke-static {v4, v6, v0}, Lq/t;->c([I[Ljava/lang/Object;I)V

    goto :goto_58

    :cond_52
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_58
    :goto_58
    if-ge v2, v0, :cond_71

    iget-object v1, p0, Lq/t;->a:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Lq/t;->c:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_71
    iget v1, p0, Lq/t;->c:I

    if-ne v0, v1, :cond_8c

    iget-object v0, p0, Lq/t;->a:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8c

    aput v3, v0, v2

    iget-object v0, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/t;->c:I

    const/4 p1, 0x0

    return-object p1

    :cond_8c
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 8

    iget v0, p0, Lq/t;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lq/t;->c:I

    iget-object v2, p0, Lq/t;->a:[I

    array-length v3, v2

    if-ge v3, v1, :cond_27

    iget-object v3, p0, Lq/t;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lq/t;->a(I)V

    iget v1, p0, Lq/t;->c:I

    if-lez v1, :cond_24

    iget-object v1, p0, Lq/t;->a:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v0, 0x1

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    invoke-static {v2, v3, v0}, Lq/t;->c([I[Ljava/lang/Object;I)V

    :cond_27
    iget v1, p0, Lq/t;->c:I

    if-ne v1, v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lq/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_4b
    return-void

    :cond_4c
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lq/t;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1}, Lq/t;->h(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lq/t;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lq/t;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lq/t;->c:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Lq/t;->c:I

    if-ge v1, v2, :cond_4b

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v2, p0, Lq/t;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    const-string v4, "(this Map)"

    if-eq v2, p0, :cond_31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq/t;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_45

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_4b
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lq/t;->d:Lq/s;

    if-nez v0, :cond_b

    new-instance v0, Lq/s;

    invoke-direct {v0, p0}, Lq/s;-><init>(Lq/t;)V

    iput-object v0, p0, Lq/t;->d:Lq/s;

    :cond_b
    iget-object v0, p0, Lq/t;->d:Lq/s;

    iget-object v1, v0, Lq/s;->c:Lq/N3;

    if-nez v1, :cond_18

    new-instance v1, Lq/N3;

    invoke-direct {v1, v0}, Lq/N3;-><init>(Lq/s;)V

    iput-object v1, v0, Lq/s;->c:Lq/N3;

    :cond_18
    iget-object v0, v0, Lq/s;->c:Lq/N3;

    return-object v0
.end method
