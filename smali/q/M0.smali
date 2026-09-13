.class public final Lq/M0;
.super Lq/w2;
.source "SourceFile"


# static fields
.field public static final t:Lq/M0;


# instance fields
.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Lq/x0;

.field public r:Ljava/util/List;

.field public s:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lq/M0;

    invoke-direct {v0}, Lq/w2;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq/M0;->g:Z

    iput-boolean v1, v0, Lq/M0;->i:Z

    iput-boolean v1, v0, Lq/M0;->j:Z

    iput-boolean v1, v0, Lq/M0;->k:Z

    iput-boolean v1, v0, Lq/M0;->l:Z

    iput-boolean v1, v0, Lq/M0;->m:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/M0;->s:B

    iput v1, v0, Lq/M0;->f:I

    iput v1, v0, Lq/M0;->h:I

    iput v1, v0, Lq/M0;->n:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/M0;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/M0;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/M0;->r:Ljava/util/List;

    sput-object v0, Lq/M0;->t:Lq/M0;

    new-instance v0, Lq/D0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/E0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const/4 p1, 0x0

    iput p1, v0, Lq/E0;->g:I

    iput p1, v0, Lq/E0;->i:I

    iput p1, v0, Lq/E0;->o:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/E0;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/E0;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/E0;->t:Ljava/util/List;

    return-object v0
.end method

.method public final D()Lq/x0;
    .registers 2

    iget-object v0, p0, Lq/M0;->q:Lq/x0;

    if-nez v0, :cond_6

    sget-object v0, Lq/x0;->m:Lq/x0;

    :cond_6
    return-object v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/M0;->e:I

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

    iget v0, p0, Lq/M0;->e:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final G()Z
    .registers 2

    iget v0, p0, Lq/M0;->e:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final H()Z
    .registers 2

    iget v0, p0, Lq/M0;->e:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final I()Z
    .registers 2

    iget v0, p0, Lq/M0;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final J()Z
    .registers 2

    iget v0, p0, Lq/M0;->e:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lq/M0;->e:I

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

    iget v0, p0, Lq/M0;->e:I

    and-int/lit16 v0, v0, 0x100

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

    iget v0, p0, Lq/M0;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final N()Z
    .registers 2

    iget v0, p0, Lq/M0;->e:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final O()Lq/E0;
    .registers 2

    sget-object v0, Lq/M0;->t:Lq/M0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/E0;

    invoke-direct {v0}, Lq/E0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/E0;

    invoke-direct {v0}, Lq/E0;-><init>()V

    invoke-virtual {v0, p0}, Lq/E0;->W(Lq/M0;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 7

    new-instance v0, Lq/v2;

    invoke-direct {v0, p0}, Lq/v2;-><init>(Lq/w2;)V

    iget v1, p0, Lq/M0;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    iget v1, p0, Lq/M0;->f:I

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_10
    iget v1, p0, Lq/M0;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lq/M0;->g:Z

    invoke-virtual {p1, v2, v1}, Lq/F;->C(IZ)V

    :cond_1b
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_27

    const/4 v1, 0x3

    iget-boolean v2, p0, Lq/M0;->k:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_27
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_33

    const/4 v1, 0x5

    iget-boolean v2, p0, Lq/M0;->i:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_33
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3f

    iget v1, p0, Lq/M0;->h:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_3f
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4c

    const/16 v1, 0xa

    iget-boolean v2, p0, Lq/M0;->l:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_4c
    iget v1, p0, Lq/M0;->e:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_5a

    const/16 v1, 0xf

    iget-boolean v3, p0, Lq/M0;->j:Z

    invoke-virtual {p1, v1, v3}, Lq/F;->C(IZ)V

    :cond_5a
    iget v1, p0, Lq/M0;->e:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Lq/M0;->m:Z

    invoke-virtual {p1, v2, v1}, Lq/F;->C(IZ)V

    :cond_65
    iget v1, p0, Lq/M0;->e:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_72

    iget v1, p0, Lq/M0;->n:I

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_72
    const/4 v1, 0x0

    move v2, v1

    :goto_74
    iget-object v3, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_90

    iget-object v3, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lq/F;->H(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_90
    move v2, v1

    :goto_91
    iget-object v3, p0, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a9

    iget-object v3, p0, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v3}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_a9
    iget v2, p0, Lq/M0;->e:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b8

    const/16 v2, 0x15

    invoke-virtual {p0}, Lq/M0;->D()Lq/x0;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lq/F;->J(ILq/Q3;)V

    :cond_b8
    :goto_b8
    iget-object v2, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d0

    iget-object v2, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    :cond_d0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lq/v2;->n(ILq/F;)V

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
    iget v0, p0, Lq/M0;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget v0, p0, Lq/M0;->f:I

    invoke-static {v1, v0}, Lq/F;->r(II)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iget v1, p0, Lq/M0;->e:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_20

    invoke-static {v3}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_38

    const/4 v1, 0x5

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_46

    const/4 v1, 0x6

    iget v4, p0, Lq/M0;->h:I

    invoke-static {v1, v4}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_46
    iget v1, p0, Lq/M0;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_53

    const/16 v1, 0xa

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    iget v1, p0, Lq/M0;->e:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-eqz v1, :cond_61

    const/16 v1, 0xf

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_61
    iget v1, p0, Lq/M0;->e:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6c

    invoke-static {v4}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6c
    iget v1, p0, Lq/M0;->e:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7b

    const/16 v1, 0x11

    iget v4, p0, Lq/M0;->n:I

    invoke-static {v1, v4}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    move v1, v2

    move v4, v1

    :goto_7d
    iget-object v5, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_99

    iget-object v5, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lq/F;->t(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_99
    add-int/2addr v0, v4

    iget-object v1, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    move v0, v2

    :goto_a3
    iget-object v3, p0, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_bd

    iget-object v3, p0, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/16 v4, 0x14

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_bd
    iget v0, p0, Lq/M0;->e:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_ce

    const/16 v0, 0x15

    invoke-virtual {p0}, Lq/M0;->D()Lq/x0;

    move-result-object v3

    invoke-static {v0, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_ce
    :goto_ce
    iget-object v0, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e8

    iget-object v0, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lq/F;->u(ILq/Q3;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    :cond_e8
    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->h()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1}, Lq/W4;->e()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lq/c;->b:I

    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/M0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/M0;

    invoke-virtual {p0}, Lq/M0;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/M0;->E()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lq/M0;->f:I

    iget v2, p1, Lq/M0;->f:I

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lq/M0;->K()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->K()Z

    move-result v2

    if-eq v1, v2, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lq/M0;->K()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-boolean v1, p0, Lq/M0;->g:Z

    iget-boolean v2, p1, Lq/M0;->g:Z

    if-eq v1, v2, :cond_40

    return v3

    :cond_40
    invoke-virtual {p0}, Lq/M0;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->I()Z

    move-result v2

    if-eq v1, v2, :cond_4b

    return v3

    :cond_4b
    invoke-virtual {p0}, Lq/M0;->I()Z

    move-result v1

    if-eqz v1, :cond_58

    iget v1, p0, Lq/M0;->h:I

    iget v2, p1, Lq/M0;->h:I

    if-eq v1, v2, :cond_58

    return v3

    :cond_58
    invoke-virtual {p0}, Lq/M0;->J()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->J()Z

    move-result v2

    if-eq v1, v2, :cond_63

    return v3

    :cond_63
    invoke-virtual {p0}, Lq/M0;->J()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-boolean v1, p0, Lq/M0;->i:Z

    iget-boolean v2, p1, Lq/M0;->i:Z

    if-eq v1, v2, :cond_70

    return v3

    :cond_70
    invoke-virtual {p0}, Lq/M0;->M()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->M()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    :cond_7b
    invoke-virtual {p0}, Lq/M0;->M()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-boolean v1, p0, Lq/M0;->j:Z

    iget-boolean v2, p1, Lq/M0;->j:Z

    if-eq v1, v2, :cond_88

    return v3

    :cond_88
    invoke-virtual {p0}, Lq/M0;->G()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->G()Z

    move-result v2

    if-eq v1, v2, :cond_93

    return v3

    :cond_93
    invoke-virtual {p0}, Lq/M0;->G()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-boolean v1, p0, Lq/M0;->k:Z

    iget-boolean v2, p1, Lq/M0;->k:Z

    if-eq v1, v2, :cond_a0

    return v3

    :cond_a0
    invoke-virtual {p0}, Lq/M0;->N()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->N()Z

    move-result v2

    if-eq v1, v2, :cond_ab

    return v3

    :cond_ab
    invoke-virtual {p0}, Lq/M0;->N()Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-boolean v1, p0, Lq/M0;->l:Z

    iget-boolean v2, p1, Lq/M0;->l:Z

    if-eq v1, v2, :cond_b8

    return v3

    :cond_b8
    invoke-virtual {p0}, Lq/M0;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->F()Z

    move-result v2

    if-eq v1, v2, :cond_c3

    return v3

    :cond_c3
    invoke-virtual {p0}, Lq/M0;->F()Z

    move-result v1

    if-eqz v1, :cond_d0

    iget-boolean v1, p0, Lq/M0;->m:Z

    iget-boolean v2, p1, Lq/M0;->m:Z

    if-eq v1, v2, :cond_d0

    return v3

    :cond_d0
    invoke-virtual {p0}, Lq/M0;->L()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->L()Z

    move-result v2

    if-eq v1, v2, :cond_db

    return v3

    :cond_db
    invoke-virtual {p0}, Lq/M0;->L()Z

    move-result v1

    if-eqz v1, :cond_e8

    iget v1, p0, Lq/M0;->n:I

    iget v2, p1, Lq/M0;->n:I

    if-eq v1, v2, :cond_e8

    return v3

    :cond_e8
    iget-object v1, p0, Lq/M0;->o:Ljava/util/List;

    iget-object v2, p1, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    return v3

    :cond_f3
    iget-object v1, p0, Lq/M0;->p:Ljava/util/List;

    iget-object v2, p1, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    return v3

    :cond_fe
    invoke-virtual {p0}, Lq/M0;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/M0;->H()Z

    move-result v2

    if-eq v1, v2, :cond_109

    return v3

    :cond_109
    invoke-virtual {p0}, Lq/M0;->H()Z

    move-result v1

    if-eqz v1, :cond_11e

    invoke-virtual {p0}, Lq/M0;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {p1}, Lq/M0;->D()Lq/x0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/x0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11e

    return v3

    :cond_11e
    iget-object v1, p0, Lq/M0;->r:Ljava/util/List;

    iget-object v2, p1, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_129

    return v3

    :cond_129
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object v2, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, v2}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_134

    return v3

    :cond_134
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    invoke-virtual {p1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_147

    return v3

    :cond_147
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/M0;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/M0;->H()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lq/M0;->D()Lq/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq/x0;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lq/M0;->s:B

    return v2

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v3, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/E1;

    invoke-virtual {v3}, Lq/E1;->h()Z

    move-result v3

    if-nez v3, :cond_37

    iput-byte v2, p0, Lq/M0;->s:B

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->j()Z

    move-result v0

    if-nez v0, :cond_45

    iput-byte v2, p0, Lq/M0;->s:B

    return v2

    :cond_45
    iput-byte v1, p0, Lq/M0;->s:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->G:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/M0;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1f

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/M0;->f:I

    add-int/2addr v0, v1

    :cond_1f
    invoke-virtual {p0}, Lq/M0;->K()Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/M0;->g:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    invoke-virtual {p0}, Lq/M0;->I()Z

    move-result v1

    if-eqz v1, :cond_43

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/M0;->h:I

    add-int/2addr v0, v1

    :cond_43
    invoke-virtual {p0}, Lq/M0;->J()Z

    move-result v1

    if-eqz v1, :cond_57

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/M0;->i:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_57
    invoke-virtual {p0}, Lq/M0;->M()Z

    move-result v1

    if-eqz v1, :cond_6c

    const/16 v1, 0x25

    const/16 v3, 0xf

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/M0;->j:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6c
    invoke-virtual {p0}, Lq/M0;->G()Z

    move-result v1

    if-eqz v1, :cond_80

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/M0;->k:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_80
    invoke-virtual {p0}, Lq/M0;->N()Z

    move-result v1

    if-eqz v1, :cond_95

    const/16 v1, 0x25

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/M0;->l:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_95
    invoke-virtual {p0}, Lq/M0;->F()Z

    move-result v1

    if-eqz v1, :cond_aa

    const/16 v1, 0x25

    const/16 v3, 0x10

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/M0;->m:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_aa
    invoke-virtual {p0}, Lq/M0;->L()Z

    move-result v1

    if-eqz v1, :cond_bb

    const/16 v1, 0x25

    const/16 v3, 0x11

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/M0;->n:I

    add-int/2addr v0, v1

    :cond_bb
    iget-object v1, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d2

    const/16 v1, 0x25

    const/16 v3, 0x13

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/M0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d2
    iget-object v1, p0, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e9

    const/16 v1, 0x25

    const/16 v3, 0x14

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/M0;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e9
    invoke-virtual {p0}, Lq/M0;->H()Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v1, 0x25

    const/16 v3, 0x15

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/M0;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {v1}, Lq/x0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_100
    iget-object v1, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_117

    const/16 v1, 0x25

    const/16 v3, 0x3e7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/M0;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_117
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lq/c;->o(ILjava/util/Map;)I

    move-result v0

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

    sget-object v0, Lq/M0;->t:Lq/M0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/M0;->O()Lq/E0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/M0;->t:Lq/M0;

    invoke-virtual {v0}, Lq/M0;->O()Lq/E0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/M0;->O()Lq/E0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->H:Lq/J2;

    const-class v1, Lq/M0;

    const-class v2, Lq/E0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
