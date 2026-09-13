.class public final Lq/Q;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final p:Lq/Q;

.field public static final q:Lq/I;


# instance fields
.field public d:I

.field public volatile e:Ljava/io/Serializable;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Lq/Z0;

.field public m:Ljava/util/List;

.field public n:Lq/b3;

.field public o:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/Q;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/Q;->e:Ljava/io/Serializable;

    sget-object v2, Lq/b3;->c:Lq/b3;

    iput-object v2, v0, Lq/Q;->n:Lq/b3;

    const/4 v3, -0x1

    iput-byte v3, v0, Lq/Q;->o:B

    iput-object v1, v0, Lq/Q;->e:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Q;->m:Ljava/util/List;

    iput-object v2, v0, Lq/Q;->n:Lq/b3;

    sput-object v0, Lq/Q;->p:Lq/Q;

    new-instance v0, Lq/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/Q;->q:Lq/I;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/J;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/J;->f:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/J;->o:Ljava/util/List;

    sget-object p1, Lq/b3;->c:Lq/b3;

    iput-object p1, v0, Lq/J;->p:Lq/b3;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/Q;->e:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/Q;->e:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Lq/Z0;
    .registers 2

    iget-object v0, p0, Lq/Q;->l:Lq/Z0;

    if-nez v0, :cond_6

    sget-object v0, Lq/Z0;->n:Lq/Z0;

    :cond_6
    return-object v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/Q;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final F()Z
    .registers 2

    iget v0, p0, Lq/Q;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final G()Lq/J;
    .registers 2

    sget-object v0, Lq/Q;->p:Lq/Q;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/J;

    invoke-direct {v0}, Lq/J;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/J;

    invoke-direct {v0}, Lq/J;-><init>()V

    invoke-virtual {v0, p0}, Lq/J;->T(Lq/Q;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 7

    iget v0, p0, Lq/Q;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/Q;->e:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v2, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    move v1, v0

    :goto_25
    iget-object v2, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    iget-object v2, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3c
    move v1, v0

    :goto_3d
    iget-object v2, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    iget-object v2, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_54
    move v1, v0

    :goto_55
    iget-object v2, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6c

    iget-object v2, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6c
    move v1, v0

    :goto_6d
    iget-object v2, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_84

    iget-object v2, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_84
    iget v1, p0, Lq/Q;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_91

    const/4 v1, 0x7

    invoke-virtual {p0}, Lq/Q;->D()Lq/Z0;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lq/F;->J(ILq/Q3;)V

    :cond_91
    move v1, v0

    :goto_92
    iget-object v2, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_aa

    iget-object v2, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_aa
    move v1, v0

    :goto_ab
    iget-object v2, p0, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c3

    iget-object v2, p0, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_c3
    :goto_c3
    iget-object v1, p0, Lq/Q;->n:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_dd

    iget-object v1, p0, Lq/Q;->n:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    :cond_dd
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
    iget v0, p0, Lq/Q;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lq/Q;->e:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    move v1, v2

    :goto_16
    iget-object v3, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2f

    iget-object v3, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2f
    move v1, v2

    :goto_30
    iget-object v3, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_49

    iget-object v3, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_49
    move v1, v2

    :goto_4a
    iget-object v3, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_63

    iget-object v3, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x4

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_63
    move v1, v2

    :goto_64
    iget-object v3, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7d

    iget-object v3, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_7d
    move v1, v2

    :goto_7e
    iget-object v3, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_97

    iget-object v3, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_97
    iget v1, p0, Lq/Q;->d:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_a6

    const/4 v1, 0x7

    invoke-virtual {p0}, Lq/Q;->D()Lq/Z0;

    move-result-object v3

    invoke-static {v1, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a6
    move v1, v2

    :goto_a7
    iget-object v3, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c1

    iget-object v3, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_c1
    move v1, v2

    :goto_c2
    iget-object v3, p0, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_dc

    iget-object v3, p0, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_dc
    move v1, v2

    :goto_dd
    iget-object v3, p0, Lq/Q;->n:Lq/b3;

    iget-object v3, v3, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f7

    iget-object v3, p0, Lq/Q;->n:Lq/b3;

    iget-object v3, v3, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lq/K2;->w(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    :cond_f7
    add-int/2addr v0, v1

    iget-object v1, p0, Lq/Q;->n:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

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
    instance-of v1, p1, Lq/Q;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/Q;

    invoke-virtual {p0}, Lq/Q;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/Q;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/Q;->E()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    iget-object v1, p0, Lq/Q;->f:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v3

    :cond_3b
    iget-object v1, p0, Lq/Q;->g:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    :cond_46
    iget-object v1, p0, Lq/Q;->h:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v3

    :cond_51
    iget-object v1, p0, Lq/Q;->i:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v3

    :cond_5c
    iget-object v1, p0, Lq/Q;->j:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v3

    :cond_67
    iget-object v1, p0, Lq/Q;->k:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    return v3

    :cond_72
    invoke-virtual {p0}, Lq/Q;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/Q;->F()Z

    move-result v2

    if-eq v1, v2, :cond_7d

    return v3

    :cond_7d
    invoke-virtual {p0}, Lq/Q;->F()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {p0}, Lq/Q;->D()Lq/Z0;

    move-result-object v1

    invoke-virtual {p1}, Lq/Q;->D()Lq/Z0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/Z0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    return v3

    :cond_92
    iget-object v1, p0, Lq/Q;->m:Ljava/util/List;

    iget-object v2, p1, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v3

    :cond_9d
    iget-object v1, p0, Lq/Q;->n:Lq/b3;

    iget-object v2, p1, Lq/Q;->n:Lq/b3;

    invoke-virtual {v1, v2}, Lq/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    return v3

    :cond_a8
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    return v3

    :cond_b3
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/Q;->o:B

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
    iget-object v3, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/C0;

    invoke-virtual {v3}, Lq/C0;->h()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    move v0, v2

    :goto_28
    iget-object v3, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/C0;

    invoke-virtual {v3}, Lq/C0;->h()Z

    move-result v3

    if-nez v3, :cond_41

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_44
    move v0, v2

    :goto_45
    iget-object v3, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_61

    iget-object v3, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q;

    invoke-virtual {v3}, Lq/Q;->h()Z

    move-result v3

    if-nez v3, :cond_5e

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_61
    move v0, v2

    :goto_62
    iget-object v3, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    iget-object v3, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Y;

    invoke-virtual {v3}, Lq/Y;->h()Z

    move-result v3

    if-nez v3, :cond_7b

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_7e
    move v0, v2

    :goto_7f
    iget-object v3, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9b

    iget-object v3, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/M;

    invoke-virtual {v3}, Lq/M;->h()Z

    move-result v3

    if-nez v3, :cond_98

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_9b
    move v0, v2

    :goto_9c
    iget-object v3, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b8

    iget-object v3, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/j1;

    invoke-virtual {v3}, Lq/j1;->h()Z

    move-result v3

    if-nez v3, :cond_b5

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_b8
    invoke-virtual {p0}, Lq/Q;->F()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    invoke-virtual {v0}, Lq/Z0;->h()Z

    move-result v0

    if-nez v0, :cond_cb

    iput-byte v2, p0, Lq/Q;->o:B

    return v2

    :cond_cb
    iput-byte v1, p0, Lq/Q;->o:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->e:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/Q;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    iget-object v1, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_51

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    iget-object v1, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_67

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_67
    iget-object v1, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7d

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7d
    iget-object v1, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_93

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget-object v1, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_aa

    const/16 v1, 0x25

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_aa
    invoke-virtual {p0}, Lq/Q;->F()Z

    move-result v1

    if-eqz v1, :cond_c0

    const/16 v1, 0x25

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/Q;->D()Lq/Z0;

    move-result-object v1

    invoke-virtual {v1}, Lq/Z0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c0
    iget-object v1, p0, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d7

    const/16 v1, 0x25

    const/16 v3, 0x9

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d7
    iget-object v1, p0, Lq/Q;->n:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f0

    const/16 v1, 0x25

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Q;->n:Lq/b3;

    invoke-virtual {v1}, Lq/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f0
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

    sget-object v0, Lq/Q;->p:Lq/Q;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/Q;->G()Lq/J;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/Q;->p:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->G()Lq/J;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/Q;->G()Lq/J;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->f:Lq/J2;

    const-class v1, Lq/Q;

    const-class v2, Lq/J;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
