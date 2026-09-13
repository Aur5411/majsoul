.class public final Lq/M1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:Lq/Y;

.field public final b:Ljava/lang/String;

.field public final c:Lq/S1;

.field public final d:[Lq/O1;

.field public final e:[Lq/O1;

.field public final f:I

.field public g:Ljava/util/HashMap;

.field public h:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Lq/Y;Lq/S1;Lq/G1;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq/M1;->g:Ljava/util/HashMap;

    iput-object v0, p0, Lq/M1;->h:Ljava/lang/ref/ReferenceQueue;

    iput-object p1, p0, Lq/M1;->a:Lq/Y;

    invoke-virtual {p1}, Lq/Y;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lq/X1;->a(Lq/S1;Lq/G1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lq/M1;->b:Ljava/lang/String;

    iput-object p2, p0, Lq/M1;->c:Lq/S1;

    iget-object p3, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_8a

    iget-object p3, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lq/O1;

    iput-object p3, p0, Lq/M1;->d:[Lq/O1;

    const/4 p3, 0x0

    move v1, p3

    :goto_2a
    iget-object v2, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    iget-object v2, p0, Lq/M1;->d:[Lq/O1;

    new-instance v3, Lq/O1;

    iget-object v4, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/e0;

    invoke-direct {v3, v4, p2, p0}, Lq/O1;-><init>(Lq/e0;Lq/S1;Lq/M1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_46
    iget-object v1, p0, Lq/M1;->d:[Lq/O1;

    invoke-virtual {v1}, [Lq/O1;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lq/O1;

    iput-object v1, p0, Lq/M1;->e:[Lq/O1;

    sget-object v2, Lq/O1;->d:Lq/N1;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_57
    iget-object v3, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    iget-object v3, p0, Lq/M1;->e:[Lq/O1;

    aget-object v4, v3, p3

    aget-object v5, v3, v2

    iget-object v4, v4, Lq/O1;->a:Lq/e0;

    iget v4, v4, Lq/e0;->f:I

    iget-object v6, v5, Lq/O1;->a:Lq/e0;

    iget v6, v6, Lq/e0;->f:I

    if-eq v4, v6, :cond_73

    add-int/lit8 p3, p3, 0x1

    aput-object v5, v3, p3

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_76
    add-int/2addr p3, v1

    iput p3, p0, Lq/M1;->f:I

    iget-object v1, p0, Lq/M1;->e:[Lq/O1;

    iget-object p1, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v1, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p1, p2, Lq/S1;->g:Lq/J1;

    invoke-virtual {p1, p0}, Lq/J1;->b(Lq/T1;)V

    return-void

    :cond_8a
    new-instance p1, Lq/K1;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p1
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/M1;->c:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/M1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/M1;->a:Lq/Y;

    invoke-virtual {v0}, Lq/Y;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/M1;->a:Lq/Y;

    return-object v0
.end method

.method public final f(I)Lq/O1;
    .registers 7

    iget v0, p0, Lq/M1;->f:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_5
    if-gt v1, v0, :cond_1f

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lq/M1;->e:[Lq/O1;

    aget-object v3, v3, v2

    iget-object v4, v3, Lq/O1;->a:Lq/e0;

    iget v4, v4, Lq/e0;->f:I

    if-ge p1, v4, :cond_19

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_5

    :cond_19
    if-le p1, v4, :cond_20

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_5

    :cond_1f
    const/4 v3, 0x0

    :cond_20
    return-object v3
.end method

.method public final g(I)Lq/O1;
    .registers 6

    invoke-virtual {p0, p1}, Lq/M1;->f(I)Lq/O1;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lq/M1;->h:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lq/M1;->h:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/M1;->g:Ljava/util/HashMap;

    goto :goto_27

    :catchall_1b
    move-exception p1

    goto :goto_64

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lq/M1;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lq/L1;

    if-nez v0, :cond_58

    :goto_27
    iget-object v0, p0, Lq/M1;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    goto :goto_3d

    :cond_37
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/O1;

    :goto_3d
    if-nez v0, :cond_56

    new-instance v0, Lq/O1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lq/O1;-><init>(Lq/M1;Ljava/lang/Integer;)V

    iget-object v1, p0, Lq/M1;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lq/L1;

    invoke-direct {v3, p1, v0}, Lq/L1;-><init>(ILq/O1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    monitor-exit p0

    return-object v0

    :cond_58
    iget-object v1, p0, Lq/M1;->g:Ljava/util/HashMap;

    iget v0, v0, Lq/L1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :goto_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_1b

    throw p1
.end method
