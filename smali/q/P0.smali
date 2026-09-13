.class public final Lq/P0;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final s:Lq/P0;

.field public static final t:Lq/N0;


# instance fields
.field public d:I

.field public volatile e:Ljava/io/Serializable;

.field public volatile f:Ljava/io/Serializable;

.field public g:Lq/b3;

.field public h:Lq/Q2;

.field public i:Lq/Q2;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Lq/W0;

.field public o:Lq/y1;

.field public volatile p:Ljava/io/Serializable;

.field public q:I

.field public r:B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lq/P0;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/P0;->e:Ljava/io/Serializable;

    iput-object v1, v0, Lq/P0;->f:Ljava/io/Serializable;

    sget-object v2, Lq/b3;->c:Lq/b3;

    iput-object v2, v0, Lq/P0;->g:Lq/b3;

    sget-object v3, Lq/O2;->d:Lq/O2;

    iput-object v3, v0, Lq/P0;->h:Lq/Q2;

    iput-object v3, v0, Lq/P0;->i:Lq/Q2;

    iput-object v1, v0, Lq/P0;->p:Ljava/io/Serializable;

    const/4 v4, 0x0

    iput v4, v0, Lq/P0;->q:I

    const/4 v5, -0x1

    iput-byte v5, v0, Lq/P0;->r:B

    iput-object v1, v0, Lq/P0;->e:Ljava/io/Serializable;

    iput-object v1, v0, Lq/P0;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/P0;->g:Lq/b3;

    iput-object v3, v0, Lq/P0;->h:Lq/Q2;

    iput-object v3, v0, Lq/P0;->i:Lq/Q2;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lq/P0;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lq/P0;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lq/P0;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lq/P0;->m:Ljava/util/List;

    iput-object v1, v0, Lq/P0;->p:Ljava/io/Serializable;

    iput v4, v0, Lq/P0;->q:I

    sput-object v0, Lq/P0;->s:Lq/P0;

    new-instance v0, Lq/N0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/P0;->t:Lq/N0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 4

    new-instance v0, Lq/O0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/O0;->f:Ljava/io/Serializable;

    iput-object p1, v0, Lq/O0;->g:Ljava/io/Serializable;

    sget-object v1, Lq/b3;->c:Lq/b3;

    iput-object v1, v0, Lq/O0;->h:Lq/b3;

    sget-object v1, Lq/O2;->d:Lq/O2;

    iput-object v1, v0, Lq/O0;->i:Lq/Q2;

    iput-object v1, v0, Lq/O0;->j:Lq/Q2;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/O0;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/O0;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/O0;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/O0;->n:Ljava/util/List;

    iput-object p1, v0, Lq/O0;->s:Ljava/io/Serializable;

    const/4 p1, 0x0

    iput p1, v0, Lq/O0;->t:I

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/P0;->e:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lq/B;

    invoke-virtual {v0}, Lq/B;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lq/B;->h()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lq/P0;->e:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Lq/W0;
    .registers 2

    iget-object v0, p0, Lq/P0;->n:Lq/W0;

    if-nez v0, :cond_6

    sget-object v0, Lq/W0;->C:Lq/W0;

    :cond_6
    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/P0;->f:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lq/B;

    invoke-virtual {v0}, Lq/B;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lq/B;->h()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lq/P0;->f:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final F()Lq/y1;
    .registers 2

    iget-object v0, p0, Lq/P0;->o:Lq/y1;

    if-nez v0, :cond_6

    sget-object v0, Lq/y1;->f:Lq/y1;

    :cond_6
    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/P0;->p:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lq/B;

    invoke-virtual {v0}, Lq/B;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lq/B;->h()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lq/P0;->p:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final H()Z
    .registers 2

    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final I()Z
    .registers 3

    iget v0, p0, Lq/P0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final J()Z
    .registers 2

    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final K()Z
    .registers 2

    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final L()Z
    .registers 2

    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final M()Z
    .registers 2

    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final N()Lq/O0;
    .registers 2

    sget-object v0, Lq/P0;->s:Lq/P0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/O0;

    invoke-direct {v0}, Lq/O0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/O0;

    invoke-direct {v0}, Lq/O0;-><init>()V

    invoke-virtual {v0, p0}, Lq/O0;->T(Lq/P0;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 7

    iget v0, p0, Lq/P0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/P0;->e:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lq/P0;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lq/P0;->f:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    move v1, v0

    :goto_18
    iget-object v2, p0, Lq/P0;->g:Lq/b3;

    iget-object v2, v2, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lq/P0;->g:Lq/b3;

    iget-object v2, v2, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_31
    move v1, v0

    :goto_32
    iget-object v2, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_49
    move v1, v0

    :goto_4a
    iget-object v2, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    iget-object v2, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_61
    move v1, v0

    :goto_62
    iget-object v2, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

    iget-object v2, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_79
    move v1, v0

    :goto_7a
    iget-object v2, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_91

    iget-object v2, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_91
    iget v1, p0, Lq/P0;->d:I

    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-eqz v1, :cond_9f

    invoke-virtual {p0}, Lq/P0;->D()Lq/W0;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lq/F;->J(ILq/Q3;)V

    :cond_9f
    iget v1, p0, Lq/P0;->d:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_ad

    const/16 v1, 0x9

    invoke-virtual {p0}, Lq/P0;->F()Lq/y1;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lq/F;->J(ILq/Q3;)V

    :cond_ad
    move v1, v0

    :goto_ae
    iget-object v2, p0, Lq/P0;->h:Lq/Q2;

    check-cast v2, Lq/O2;

    iget v3, v2, Lq/O2;->c:I

    if-ge v1, v3, :cond_c2

    invoke-virtual {v2, v1}, Lq/O2;->f(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lq/F;->H(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    :cond_c2
    :goto_c2
    iget-object v1, p0, Lq/P0;->i:Lq/Q2;

    check-cast v1, Lq/O2;

    iget v2, v1, Lq/O2;->c:I

    if-ge v0, v2, :cond_d6

    invoke-virtual {v1, v0}, Lq/O2;->f(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_d6
    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_e3

    const/16 v0, 0xc

    iget-object v1, p0, Lq/P0;->p:Ljava/io/Serializable;

    invoke-static {p1, v0, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_e3
    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_f0

    iget v0, p0, Lq/P0;->q:I

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lq/F;->H(II)V

    :cond_f0
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->c(Lq/F;)V

    return-void
.end method

.method public final e()I
    .registers 7

    iget v0, p0, Lq/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lq/P0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lq/P0;->e:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iget v1, p0, Lq/P0;->d:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_22

    iget-object v1, p0, Lq/P0;->f:Ljava/io/Serializable;

    invoke-static {v3, v1}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    move v1, v2

    move v3, v1

    :goto_24
    iget-object v4, p0, Lq/P0;->g:Lq/b3;

    iget-object v4, v4, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3e

    iget-object v4, p0, Lq/P0;->g:Lq/b3;

    iget-object v4, v4, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lq/K2;->w(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3e
    add-int/2addr v0, v3

    iget-object v1, p0, Lq/P0;->g:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v2

    :goto_49
    iget-object v3, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v0, v3, :cond_62

    iget-object v3, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_62
    move v0, v2

    :goto_63
    iget-object v3, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7c

    iget-object v3, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_7c
    move v0, v2

    :goto_7d
    iget-object v3, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_96

    iget-object v3, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    :cond_96
    move v0, v2

    :goto_97
    iget-object v3, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b0

    iget-object v3, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_b0
    iget v0, p0, Lq/P0;->d:I

    and-int/2addr v0, v4

    const/16 v3, 0x8

    if-eqz v0, :cond_c0

    invoke-virtual {p0}, Lq/P0;->D()Lq/W0;

    move-result-object v0

    invoke-static {v3, v0}, Lq/F;->u(ILq/Q3;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c0
    iget v0, p0, Lq/P0;->d:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_d0

    const/16 v0, 0x9

    invoke-virtual {p0}, Lq/P0;->F()Lq/y1;

    move-result-object v3

    invoke-static {v0, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d0
    move v0, v2

    move v3, v0

    :goto_d2
    iget-object v4, p0, Lq/P0;->h:Lq/Q2;

    check-cast v4, Lq/O2;

    iget v5, v4, Lq/O2;->c:I

    if-ge v0, v5, :cond_e6

    invoke-virtual {v4, v0}, Lq/O2;->f(I)I

    move-result v4

    invoke-static {v4}, Lq/F;->t(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    :cond_e6
    add-int/2addr v1, v3

    add-int/2addr v1, v5

    move v0, v2

    :goto_e9
    iget-object v3, p0, Lq/P0;->i:Lq/Q2;

    check-cast v3, Lq/O2;

    iget v4, v3, Lq/O2;->c:I

    if-ge v2, v4, :cond_fd

    invoke-virtual {v3, v2}, Lq/O2;->f(I)I

    move-result v3

    invoke-static {v3}, Lq/F;->t(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :cond_fd
    add-int/2addr v1, v0

    add-int/2addr v1, v4

    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10e

    const/16 v0, 0xc

    iget-object v2, p0, Lq/P0;->p:Ljava/io/Serializable;

    invoke-static {v0, v2}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_10e
    iget v0, p0, Lq/P0;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_11d

    const/16 v0, 0xe

    iget v2, p0, Lq/P0;->q:I

    invoke-static {v0, v2}, Lq/F;->r(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11d
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0}, Lq/W4;->e()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lq/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/P0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/P0;

    invoke-virtual {p0}, Lq/P0;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/P0;->I()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/P0;->I()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    invoke-virtual {p0}, Lq/P0;->K()Z

    move-result v1

    invoke-virtual {p1}, Lq/P0;->K()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p0}, Lq/P0;->K()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lq/P0;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/P0;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    :cond_50
    iget-object v1, p0, Lq/P0;->g:Lq/b3;

    iget-object v2, p1, Lq/P0;->g:Lq/b3;

    invoke-virtual {v1, v2}, Lq/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v3

    :cond_5b
    iget-object v1, p0, Lq/P0;->h:Lq/Q2;

    iget-object v2, p1, Lq/P0;->h:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v2}, Lq/O2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    return v3

    :cond_68
    iget-object v1, p0, Lq/P0;->i:Lq/Q2;

    iget-object v2, p1, Lq/P0;->i:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v2}, Lq/O2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v3

    :cond_75
    iget-object v1, p0, Lq/P0;->j:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v3

    :cond_80
    iget-object v1, p0, Lq/P0;->k:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    return v3

    :cond_8b
    iget-object v1, p0, Lq/P0;->l:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    return v3

    :cond_96
    iget-object v1, p0, Lq/P0;->m:Ljava/util/List;

    iget-object v2, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    return v3

    :cond_a1
    invoke-virtual {p0}, Lq/P0;->J()Z

    move-result v1

    invoke-virtual {p1}, Lq/P0;->J()Z

    move-result v2

    if-eq v1, v2, :cond_ac

    return v3

    :cond_ac
    invoke-virtual {p0}, Lq/P0;->J()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {p0}, Lq/P0;->D()Lq/W0;

    move-result-object v1

    invoke-virtual {p1}, Lq/P0;->D()Lq/W0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/W0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    return v3

    :cond_c1
    invoke-virtual {p0}, Lq/P0;->L()Z

    move-result v1

    invoke-virtual {p1}, Lq/P0;->L()Z

    move-result v2

    if-eq v1, v2, :cond_cc

    return v3

    :cond_cc
    invoke-virtual {p0}, Lq/P0;->L()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-virtual {p0}, Lq/P0;->F()Lq/y1;

    move-result-object v1

    invoke-virtual {p1}, Lq/P0;->F()Lq/y1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/y1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    return v3

    :cond_e1
    invoke-virtual {p0}, Lq/P0;->M()Z

    move-result v1

    invoke-virtual {p1}, Lq/P0;->M()Z

    move-result v2

    if-eq v1, v2, :cond_ec

    return v3

    :cond_ec
    invoke-virtual {p0}, Lq/P0;->M()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-virtual {p0}, Lq/P0;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/P0;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    return v3

    :cond_101
    invoke-virtual {p0}, Lq/P0;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/P0;->H()Z

    move-result v2

    if-eq v1, v2, :cond_10c

    return v3

    :cond_10c
    invoke-virtual {p0}, Lq/P0;->H()Z

    move-result v1

    if-eqz v1, :cond_119

    iget v1, p0, Lq/P0;->q:I

    iget v2, p1, Lq/P0;->q:I

    if-eq v1, v2, :cond_119

    return v3

    :cond_119
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_124

    return v3

    :cond_124
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/P0;->r:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    move v0, v2

    :goto_b
    iget-object v3, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q;

    invoke-virtual {v3}, Lq/Q;->h()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lq/P0;->r:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    move v0, v2

    :goto_28
    iget-object v3, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Y;

    invoke-virtual {v3}, Lq/Y;->h()Z

    move-result v3

    if-nez v3, :cond_41

    iput-byte v2, p0, Lq/P0;->r:B

    return v2

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_44
    move v0, v2

    :goto_45
    iget-object v3, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_61

    iget-object v3, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/p1;

    invoke-virtual {v3}, Lq/p1;->h()Z

    move-result v3

    if-nez v3, :cond_5e

    iput-byte v2, p0, Lq/P0;->r:B

    return v2

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_61
    move v0, v2

    :goto_62
    iget-object v3, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    iget-object v3, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/C0;

    invoke-virtual {v3}, Lq/C0;->h()Z

    move-result v3

    if-nez v3, :cond_7b

    iput-byte v2, p0, Lq/P0;->r:B

    return v2

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_7e
    invoke-virtual {p0}, Lq/P0;->J()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p0}, Lq/P0;->D()Lq/W0;

    move-result-object v0

    invoke-virtual {v0}, Lq/W0;->h()Z

    move-result v0

    if-nez v0, :cond_91

    iput-byte v2, p0, Lq/P0;->r:B

    return v2

    :cond_91
    iput-byte v1, p0, Lq/P0;->r:B

    return v1
.end method

.method public final hashCode()I
    .registers 6

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->c:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/P0;->I()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    invoke-virtual {p0}, Lq/P0;->K()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/P0;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    iget-object v1, p0, Lq/P0;->g:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_53

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/P0;->g:Lq/b3;

    invoke-virtual {v1}, Lq/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    iget-object v1, p0, Lq/P0;->h:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->size()I

    move-result v1

    if-lez v1, :cond_6e

    const/16 v1, 0x25

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/P0;->h:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6e
    iget-object v1, p0, Lq/P0;->i:Lq/Q2;

    move-object v3, v1

    check-cast v3, Lq/O2;

    iget v3, v3, Lq/O2;->c:I

    if-lez v3, :cond_86

    const/16 v3, 0x25

    const/16 v4, 0xb

    invoke-static {v0, v3, v4, v2}, Lq/I1;->d(IIII)I

    move-result v0

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    iget-object v1, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9c

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9c
    iget-object v1, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b2

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b2
    iget-object v1, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c8

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c8
    iget-object v1, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_de

    const/16 v1, 0x25

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/P0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_de
    invoke-virtual {p0}, Lq/P0;->J()Z

    move-result v1

    if-eqz v1, :cond_f5

    const/16 v1, 0x25

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/P0;->D()Lq/W0;

    move-result-object v1

    invoke-virtual {v1}, Lq/W0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f5
    invoke-virtual {p0}, Lq/P0;->L()Z

    move-result v1

    if-eqz v1, :cond_10c

    const/16 v1, 0x25

    const/16 v3, 0x9

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/P0;->F()Lq/y1;

    move-result-object v1

    invoke-virtual {v1}, Lq/y1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10c
    invoke-virtual {p0}, Lq/P0;->M()Z

    move-result v1

    if-eqz v1, :cond_123

    const/16 v1, 0x25

    const/16 v3, 0xc

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/P0;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_123
    invoke-virtual {p0}, Lq/P0;->H()Z

    move-result v1

    if-eqz v1, :cond_134

    const/16 v1, 0x25

    const/16 v3, 0xe

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/P0;->q:I

    add-int/2addr v0, v1

    :cond_134
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1}, Lq/W4;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lq/c;->a:I

    return v1
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/P0;->s:Lq/P0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/P0;->N()Lq/O0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/P0;->s:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->N()Lq/O0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/P0;->N()Lq/O0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->d:Lq/J2;

    const-class v1, Lq/P0;

    const-class v2, Lq/O0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
