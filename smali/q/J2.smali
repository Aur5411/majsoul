.class public final Lq/J2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq/G1;

.field public final b:[Lq/x2;

.field public c:[Ljava/lang/String;

.field public final d:[Lq/z2;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lq/G1;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/J2;->a:Lq/G1;

    iput-object p2, p0, Lq/J2;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lq/G1;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lq/x2;

    iput-object p2, p0, Lq/J2;->b:[Lq/x2;

    invoke-virtual {p1}, Lq/G1;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lq/z2;

    iput-object p1, p0, Lq/J2;->d:[Lq/z2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/J2;->e:Z

    return-void
.end method

.method public static a(Lq/J2;Lq/V1;)Lq/z2;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lq/V1;->e:Lq/G1;

    iget-object v1, p0, Lq/J2;->a:Lq/G1;

    if-ne v0, v1, :cond_10

    iget-object p0, p0, Lq/J2;->d:[Lq/z2;

    iget p1, p1, Lq/V1;->a:I

    aget-object p0, p0, p1

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OneofDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lq/J2;Lq/R1;)Lq/x2;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    iget-object v1, p0, Lq/J2;->a:Lq/G1;

    if-ne v0, v1, :cond_20

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lq/J2;->b:[Lq/x2;

    iget p1, p1, Lq/R1;->a:I

    aget-object p0, p0, p1

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This type does not have extensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 14

    iget-boolean v0, p0, Lq/J2;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lq/J2;->e:Z

    if-eqz v0, :cond_f

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    goto/16 :goto_122

    :cond_f
    iget-object v0, p0, Lq/J2;->b:[Lq/x2;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    const/4 v3, 0x0

    if-ge v2, v0, :cond_d6

    iget-object v4, p0, Lq/J2;->a:Lq/G1;

    invoke-virtual {v4}, Lq/G1;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lq/R1;

    iget-object v4, v6, Lq/R1;->j:Lq/V1;

    if-eqz v4, :cond_34

    iget v4, v4, Lq/V1;->a:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    array-length v7, v5

    if-ge v4, v7, :cond_34

    aget-object v4, v5, v4

    move-object v10, v4

    goto :goto_35

    :cond_34
    move-object v10, v3

    :goto_35
    invoke-virtual {v6}, Lq/R1;->p()Z

    move-result v4

    if-eqz v4, :cond_7f

    iget-object v4, v6, Lq/R1;->g:Lq/Q1;

    iget-object v4, v4, Lq/Q1;->a:Lq/P1;

    sget-object v5, Lq/P1;->j:Lq/P1;

    if-ne v4, v5, :cond_5e

    invoke-virtual {v6}, Lq/R1;->l()Z

    move-result v4

    if-nez v4, :cond_58

    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/D2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, p1, p2}, Lq/D2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_d2

    :cond_58
    new-instance p2, Lq/y2;

    invoke-direct {p2, v6, p1}, Lq/y2;-><init>(Lq/R1;Ljava/lang/Class;)V

    throw v3

    :cond_5e
    sget-object v3, Lq/P1;->i:Lq/P1;

    if-ne v4, v3, :cond_71

    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/B2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lq/B2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_d2

    :cond_71
    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/v2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, p1, p2}, Lq/v2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto :goto_d2

    :cond_7f
    iget-object v3, v6, Lq/R1;->g:Lq/Q1;

    iget-object v3, v3, Lq/Q1;->a:Lq/P1;

    sget-object v4, Lq/P1;->j:Lq/P1;

    if-ne v3, v4, :cond_98

    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/H2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lq/H2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_d2

    :cond_98
    sget-object v4, Lq/P1;->i:Lq/P1;

    if-ne v3, v4, :cond_ad

    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/E2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lq/E2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_d2

    :cond_ad
    sget-object v4, Lq/P1;->g:Lq/P1;

    if-ne v3, v4, :cond_c2

    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/I2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lq/I2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_d2

    :cond_c2
    iget-object v3, p0, Lq/J2;->b:[Lq/x2;

    new-instance v4, Lq/G2;

    iget-object v5, p0, Lq/J2;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lq/G2;-><init>(Lq/R1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_d2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_d6
    move v2, v1

    :goto_d7
    iget-object v4, p0, Lq/J2;->a:Lq/G1;

    invoke-virtual {v4}, Lq/G1;->k()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11b

    iget-object v4, p0, Lq/J2;->a:Lq/G1;

    iget-object v5, v4, Lq/G1;->i:[Lq/V1;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget v4, v4, Lq/G1;->j:I

    invoke-interface {v5, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_10d

    iget-object v4, p0, Lq/J2;->d:[Lq/z2;

    new-instance v5, Lq/A2;

    iget-object v6, p0, Lq/J2;->a:Lq/G1;

    iget-object v7, p0, Lq/J2;->c:[Ljava/lang/String;

    add-int v8, v2, v0

    aget-object v7, v7, v8

    invoke-direct {v5, v6, v7, p1, p2}, Lq/A2;-><init>(Lq/G1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v5, v4, v2

    goto :goto_118

    :cond_10d
    iget-object v4, p0, Lq/J2;->d:[Lq/z2;

    new-instance v5, Lq/y2;

    iget-object v6, p0, Lq/J2;->a:Lq/G1;

    invoke-direct {v5, v2, v6}, Lq/y2;-><init>(ILq/G1;)V

    aput-object v5, v4, v2

    :goto_118
    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    :cond_11b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/J2;->e:Z

    iput-object v3, p0, Lq/J2;->c:[Ljava/lang/String;

    monitor-exit p0

    return-void

    :goto_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_6 .. :try_end_123} :catchall_c

    throw p1
.end method
