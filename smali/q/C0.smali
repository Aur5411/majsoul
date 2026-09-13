.class public final Lq/C0;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final q:Lq/C0;

.field public static final r:Lq/y0;


# instance fields
.field public d:I

.field public volatile e:Ljava/io/Serializable;

.field public f:I

.field public g:I

.field public h:I

.field public volatile i:Ljava/io/Serializable;

.field public volatile j:Ljava/io/Serializable;

.field public volatile k:Ljava/io/Serializable;

.field public l:I

.field public volatile m:Ljava/io/Serializable;

.field public n:Lq/M0;

.field public o:Z

.field public p:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/C0;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/C0;->e:Ljava/io/Serializable;

    const/4 v2, 0x0

    iput v2, v0, Lq/C0;->f:I

    const/4 v3, 0x1

    iput v3, v0, Lq/C0;->g:I

    iput v3, v0, Lq/C0;->h:I

    iput-object v1, v0, Lq/C0;->i:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->j:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->k:Ljava/io/Serializable;

    iput v2, v0, Lq/C0;->l:I

    iput-object v1, v0, Lq/C0;->m:Ljava/io/Serializable;

    iput-boolean v2, v0, Lq/C0;->o:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/C0;->p:B

    iput-object v1, v0, Lq/C0;->e:Ljava/io/Serializable;

    iput v3, v0, Lq/C0;->g:I

    iput v3, v0, Lq/C0;->h:I

    iput-object v1, v0, Lq/C0;->i:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->j:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->k:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->m:Ljava/io/Serializable;

    sput-object v0, Lq/C0;->q:Lq/C0;

    new-instance v0, Lq/y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/C0;->r:Lq/y0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 4

    new-instance v0, Lq/z0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/z0;->f:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, v0, Lq/z0;->h:I

    iput v1, v0, Lq/z0;->i:I

    iput-object p1, v0, Lq/z0;->j:Ljava/io/Serializable;

    iput-object p1, v0, Lq/z0;->k:Ljava/io/Serializable;

    iput-object p1, v0, Lq/z0;->l:Ljava/io/Serializable;

    iput-object p1, v0, Lq/z0;->n:Ljava/io/Serializable;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/C0;->k:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/C0;->k:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/C0;->j:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/C0;->j:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final E()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/C0;->m:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/C0;->m:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final F()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/C0;->e:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/C0;->e:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final G()Lq/M0;
    .registers 2

    iget-object v0, p0, Lq/C0;->n:Lq/M0;

    if-nez v0, :cond_6

    sget-object v0, Lq/M0;->t:Lq/M0;

    :cond_6
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/C0;->i:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/C0;->i:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final I()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x40

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

    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x20

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

    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x100

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

    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final M()Z
    .registers 3

    iget v0, p0, Lq/C0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final N()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final O()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final P()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final Q()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final R()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final S()Z
    .registers 2

    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final T()Lq/z0;
    .registers 2

    sget-object v0, Lq/C0;->q:Lq/C0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/z0;

    invoke-direct {v0}, Lq/z0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/z0;

    invoke-direct {v0}, Lq/z0;-><init>()V

    invoke-virtual {v0, p0}, Lq/z0;->P(Lq/C0;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 5

    iget v0, p0, Lq/C0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/C0;->e:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_17

    iget-object v0, p0, Lq/C0;->j:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_17
    iget v0, p0, Lq/C0;->d:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget v1, p0, Lq/C0;->f:I

    invoke-virtual {p1, v0, v1}, Lq/F;->H(II)V

    :cond_22
    iget v0, p0, Lq/C0;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    iget v0, p0, Lq/C0;->g:I

    invoke-virtual {p1, v1, v0}, Lq/F;->H(II)V

    :cond_2d
    iget v0, p0, Lq/C0;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_3a

    iget v0, p0, Lq/C0;->h:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lq/F;->H(II)V

    :cond_3a
    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_46

    const/4 v0, 0x6

    iget-object v2, p0, Lq/C0;->i:Ljava/io/Serializable;

    invoke-static {p1, v0, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_46
    iget v0, p0, Lq/C0;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_52

    const/4 v0, 0x7

    iget-object v2, p0, Lq/C0;->k:Ljava/io/Serializable;

    invoke-static {p1, v0, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_52
    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lq/C0;->G()Lq/M0;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lq/F;->J(ILq/Q3;)V

    :cond_5f
    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6c

    const/16 v0, 0x9

    iget v1, p0, Lq/C0;->l:I

    invoke-virtual {p1, v0, v1}, Lq/F;->H(II)V

    :cond_6c
    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_79

    const/16 v0, 0xa

    iget-object v1, p0, Lq/C0;->m:Ljava/io/Serializable;

    invoke-static {p1, v0, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_79
    iget v0, p0, Lq/C0;->d:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_86

    const/16 v0, 0x11

    iget-boolean v1, p0, Lq/C0;->o:Z

    invoke-virtual {p1, v0, v1}, Lq/F;->C(IZ)V

    :cond_86
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->c(Lq/F;)V

    return-void
.end method

.method public final e()I
    .registers 5

    iget v0, p0, Lq/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lq/C0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lq/C0;->e:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/C0;->d:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    iget-object v1, p0, Lq/C0;->j:Ljava/io/Serializable;

    invoke-static {v2, v1}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget v1, p0, Lq/C0;->d:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    const/4 v1, 0x3

    iget v2, p0, Lq/C0;->f:I

    invoke-static {v1, v2}, Lq/F;->s(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lq/C0;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_3c

    iget v1, p0, Lq/C0;->g:I

    invoke-static {v2, v1}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget v1, p0, Lq/C0;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_4b

    const/4 v1, 0x5

    iget v3, p0, Lq/C0;->h:I

    invoke-static {v1, v3}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4b
    iget v1, p0, Lq/C0;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_59

    const/4 v1, 0x6

    iget-object v3, p0, Lq/C0;->i:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_59
    iget v1, p0, Lq/C0;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_67

    const/4 v1, 0x7

    iget-object v3, p0, Lq/C0;->k:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_67
    iget v1, p0, Lq/C0;->d:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_76

    invoke-virtual {p0}, Lq/C0;->G()Lq/M0;

    move-result-object v1

    invoke-static {v2, v1}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_76
    iget v1, p0, Lq/C0;->d:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_85

    const/16 v1, 0x9

    iget v2, p0, Lq/C0;->l:I

    invoke-static {v1, v2}, Lq/F;->s(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_85
    iget v1, p0, Lq/C0;->d:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_94

    const/16 v1, 0xa

    iget-object v2, p0, Lq/C0;->m:Ljava/io/Serializable;

    invoke-static {v1, v2}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_94
    iget v1, p0, Lq/C0;->d:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a1

    const/16 v1, 0x11

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a1
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
    instance-of v1, p1, Lq/C0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/C0;

    invoke-virtual {p0}, Lq/C0;->M()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->M()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/C0;->M()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    invoke-virtual {p0}, Lq/C0;->N()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->N()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p0}, Lq/C0;->N()Z

    move-result v1

    if-eqz v1, :cond_48

    iget v1, p0, Lq/C0;->f:I

    iget v2, p1, Lq/C0;->f:I

    if-eq v1, v2, :cond_48

    return v3

    :cond_48
    invoke-virtual {p0}, Lq/C0;->L()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->L()Z

    move-result v2

    if-eq v1, v2, :cond_53

    return v3

    :cond_53
    invoke-virtual {p0}, Lq/C0;->L()Z

    move-result v1

    if-eqz v1, :cond_60

    iget v1, p0, Lq/C0;->g:I

    iget v2, p1, Lq/C0;->g:I

    if-eq v1, v2, :cond_60

    return v3

    :cond_60
    invoke-virtual {p0}, Lq/C0;->R()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->R()Z

    move-result v2

    if-eq v1, v2, :cond_6b

    return v3

    :cond_6b
    invoke-virtual {p0}, Lq/C0;->R()Z

    move-result v1

    if-eqz v1, :cond_78

    iget v1, p0, Lq/C0;->h:I

    iget v2, p1, Lq/C0;->h:I

    if-eq v1, v2, :cond_78

    return v3

    :cond_78
    invoke-virtual {p0}, Lq/C0;->S()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->S()Z

    move-result v2

    if-eq v1, v2, :cond_83

    return v3

    :cond_83
    invoke-virtual {p0}, Lq/C0;->S()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-virtual {p0}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    return v3

    :cond_98
    invoke-virtual {p0}, Lq/C0;->J()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->J()Z

    move-result v2

    if-eq v1, v2, :cond_a3

    return v3

    :cond_a3
    invoke-virtual {p0}, Lq/C0;->J()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {p0}, Lq/C0;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/C0;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    return v3

    :cond_b8
    invoke-virtual {p0}, Lq/C0;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->I()Z

    move-result v2

    if-eq v1, v2, :cond_c3

    return v3

    :cond_c3
    invoke-virtual {p0}, Lq/C0;->I()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-virtual {p0}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    return v3

    :cond_d8
    invoke-virtual {p0}, Lq/C0;->O()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->O()Z

    move-result v2

    if-eq v1, v2, :cond_e3

    return v3

    :cond_e3
    invoke-virtual {p0}, Lq/C0;->O()Z

    move-result v1

    if-eqz v1, :cond_f0

    iget v1, p0, Lq/C0;->l:I

    iget v2, p1, Lq/C0;->l:I

    if-eq v1, v2, :cond_f0

    return v3

    :cond_f0
    invoke-virtual {p0}, Lq/C0;->K()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->K()Z

    move-result v2

    if-eq v1, v2, :cond_fb

    return v3

    :cond_fb
    invoke-virtual {p0}, Lq/C0;->K()Z

    move-result v1

    if-eqz v1, :cond_110

    invoke-virtual {p0}, Lq/C0;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/C0;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    return v3

    :cond_110
    invoke-virtual {p0}, Lq/C0;->P()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->P()Z

    move-result v2

    if-eq v1, v2, :cond_11b

    return v3

    :cond_11b
    invoke-virtual {p0}, Lq/C0;->P()Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-virtual {p0}, Lq/C0;->G()Lq/M0;

    move-result-object v1

    invoke-virtual {p1}, Lq/C0;->G()Lq/M0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/M0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    return v3

    :cond_130
    invoke-virtual {p0}, Lq/C0;->Q()Z

    move-result v1

    invoke-virtual {p1}, Lq/C0;->Q()Z

    move-result v2

    if-eq v1, v2, :cond_13b

    return v3

    :cond_13b
    invoke-virtual {p0}, Lq/C0;->Q()Z

    move-result v1

    if-eqz v1, :cond_148

    iget-boolean v1, p0, Lq/C0;->o:Z

    iget-boolean v2, p1, Lq/C0;->o:Z

    if-eq v1, v2, :cond_148

    return v3

    :cond_148
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_153

    return v3

    :cond_153
    return v0
.end method

.method public final h()Z
    .registers 4

    iget-byte v0, p0, Lq/C0;->p:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/C0;->P()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lq/C0;->G()Lq/M0;

    move-result-object v0

    invoke-virtual {v0}, Lq/M0;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lq/C0;->p:B

    return v2

    :cond_1d
    iput-byte v1, p0, Lq/C0;->p:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->o:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/C0;->M()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    invoke-virtual {p0}, Lq/C0;->N()Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/C0;->f:I

    add-int/2addr v0, v1

    :cond_35
    invoke-virtual {p0}, Lq/C0;->L()Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/C0;->g:I

    add-int/2addr v0, v1

    :cond_45
    invoke-virtual {p0}, Lq/C0;->R()Z

    move-result v1

    if-eqz v1, :cond_55

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/C0;->h:I

    add-int/2addr v0, v1

    :cond_55
    invoke-virtual {p0}, Lq/C0;->S()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6b
    invoke-virtual {p0}, Lq/C0;->J()Z

    move-result v1

    if-eqz v1, :cond_81

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/C0;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_81
    invoke-virtual {p0}, Lq/C0;->I()Z

    move-result v1

    if-eqz v1, :cond_97

    const/16 v1, 0x25

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_97
    invoke-virtual {p0}, Lq/C0;->O()Z

    move-result v1

    if-eqz v1, :cond_a8

    const/16 v1, 0x25

    const/16 v3, 0x9

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/C0;->l:I

    add-int/2addr v0, v1

    :cond_a8
    invoke-virtual {p0}, Lq/C0;->K()Z

    move-result v1

    if-eqz v1, :cond_bf

    const/16 v1, 0x25

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/C0;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_bf
    invoke-virtual {p0}, Lq/C0;->P()Z

    move-result v1

    if-eqz v1, :cond_d6

    const/16 v1, 0x25

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/C0;->G()Lq/M0;

    move-result-object v1

    invoke-virtual {v1}, Lq/M0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d6
    invoke-virtual {p0}, Lq/C0;->Q()Z

    move-result v1

    if-eqz v1, :cond_eb

    const/16 v1, 0x25

    const/16 v3, 0x11

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/C0;->o:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_eb
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

    sget-object v0, Lq/C0;->q:Lq/C0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/C0;->T()Lq/z0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/C0;->q:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->T()Lq/z0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/C0;->T()Lq/z0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->p:Lq/J2;

    const-class v1, Lq/C0;

    const-class v2, Lq/z0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
