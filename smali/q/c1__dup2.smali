.class public final Lq/c1;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final l:Lq/c1;

.field public static final m:Lq/a1;


# instance fields
.field public d:I

.field public volatile e:Ljava/io/Serializable;

.field public volatile f:Ljava/io/Serializable;

.field public volatile g:Ljava/io/Serializable;

.field public h:Lq/g1;

.field public i:Z

.field public j:Z

.field public k:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lq/c1;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/c1;->e:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->g:Ljava/io/Serializable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lq/c1;->i:Z

    iput-boolean v2, v0, Lq/c1;->j:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/c1;->k:B

    iput-object v1, v0, Lq/c1;->e:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/c1;->g:Ljava/io/Serializable;

    sput-object v0, Lq/c1;->l:Lq/c1;

    new-instance v0, Lq/a1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/c1;->m:Lq/a1;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/b1;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/b1;->f:Ljava/io/Serializable;

    iput-object p1, v0, Lq/b1;->g:Ljava/io/Serializable;

    iput-object p1, v0, Lq/b1;->h:Ljava/io/Serializable;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/c1;->f:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/c1;->f:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/c1;->e:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/c1;->e:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final E()Lq/g1;
    .registers 2

    iget-object v0, p0, Lq/c1;->h:Lq/g1;

    if-nez v0, :cond_6

    sget-object v0, Lq/g1;->k:Lq/g1;

    :cond_6
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/c1;->g:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/c1;->g:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final G()Z
    .registers 2

    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x10

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

    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x2

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

    iget v0, p0, Lq/c1;->d:I

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

    iget v0, p0, Lq/c1;->d:I

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

    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x4

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

    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final M()Lq/b1;
    .registers 2

    sget-object v0, Lq/c1;->l:Lq/c1;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/b1;

    invoke-direct {v0}, Lq/b1;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/b1;

    invoke-direct {v0}, Lq/b1;-><init>()V

    invoke-virtual {v0, p0}, Lq/b1;->P(Lq/c1;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 5

    iget v0, p0, Lq/c1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/c1;->e:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lq/c1;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lq/c1;->f:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_16
    iget v0, p0, Lq/c1;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v2, p0, Lq/c1;->g:Ljava/io/Serializable;

    invoke-static {p1, v0, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_22
    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lq/c1;->E()Lq/g1;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lq/F;->J(ILq/Q3;)V

    :cond_2f
    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3b

    const/4 v0, 0x5

    iget-boolean v1, p0, Lq/c1;->i:Z

    invoke-virtual {p1, v0, v1}, Lq/F;->C(IZ)V

    :cond_3b
    iget v0, p0, Lq/c1;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_47

    const/4 v0, 0x6

    iget-boolean v1, p0, Lq/c1;->j:Z

    invoke-virtual {p1, v0, v1}, Lq/F;->C(IZ)V

    :cond_47
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
    iget v0, p0, Lq/c1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lq/c1;->e:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/c1;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    iget-object v1, p0, Lq/c1;->f:Ljava/io/Serializable;

    invoke-static {v2, v1}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lq/c1;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    const/4 v1, 0x3

    iget-object v3, p0, Lq/c1;->g:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lq/c1;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Lq/c1;->E()Lq/g1;

    move-result-object v1

    invoke-static {v2, v1}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    iget v1, p0, Lq/c1;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4a

    const/4 v1, 0x5

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget v1, p0, Lq/c1;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_56

    const/4 v1, 0x6

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
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
    instance-of v1, p1, Lq/c1;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/c1;

    invoke-virtual {p0}, Lq/c1;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/c1;->I()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/c1;->I()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/c1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/c1;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    invoke-virtual {p0}, Lq/c1;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/c1;->H()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p0}, Lq/c1;->H()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lq/c1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/c1;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    :cond_50
    invoke-virtual {p0}, Lq/c1;->K()Z

    move-result v1

    invoke-virtual {p1}, Lq/c1;->K()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    :cond_5b
    invoke-virtual {p0}, Lq/c1;->K()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Lq/c1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/c1;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    :cond_70
    invoke-virtual {p0}, Lq/c1;->J()Z

    move-result v1

    invoke-virtual {p1}, Lq/c1;->J()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    :cond_7b
    invoke-virtual {p0}, Lq/c1;->J()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {p0}, Lq/c1;->E()Lq/g1;

    move-result-object v1

    invoke-virtual {p1}, Lq/c1;->E()Lq/g1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    :cond_90
    invoke-virtual {p0}, Lq/c1;->G()Z

    move-result v1

    invoke-virtual {p1}, Lq/c1;->G()Z

    move-result v2

    if-eq v1, v2, :cond_9b

    return v3

    :cond_9b
    invoke-virtual {p0}, Lq/c1;->G()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Lq/c1;->i:Z

    iget-boolean v2, p1, Lq/c1;->i:Z

    if-eq v1, v2, :cond_a8

    return v3

    :cond_a8
    invoke-virtual {p0}, Lq/c1;->L()Z

    move-result v1

    invoke-virtual {p1}, Lq/c1;->L()Z

    move-result v2

    if-eq v1, v2, :cond_b3

    return v3

    :cond_b3
    invoke-virtual {p0}, Lq/c1;->L()Z

    move-result v1

    if-eqz v1, :cond_c0

    iget-boolean v1, p0, Lq/c1;->j:Z

    iget-boolean v2, p1, Lq/c1;->j:Z

    if-eq v1, v2, :cond_c0

    return v3

    :cond_c0
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    return v3

    :cond_cb
    return v0
.end method

.method public final h()Z
    .registers 4

    iget-byte v0, p0, Lq/c1;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/c1;->J()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lq/c1;->E()Lq/g1;

    move-result-object v0

    invoke-virtual {v0}, Lq/g1;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lq/c1;->k:B

    return v2

    :cond_1d
    iput-byte v1, p0, Lq/c1;->k:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->A:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/c1;->I()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/c1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    invoke-virtual {p0}, Lq/c1;->H()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/c1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    invoke-virtual {p0}, Lq/c1;->K()Z

    move-result v1

    if-eqz v1, :cond_51

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/c1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    invoke-virtual {p0}, Lq/c1;->J()Z

    move-result v1

    if-eqz v1, :cond_67

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/c1;->E()Lq/g1;

    move-result-object v1

    invoke-virtual {v1}, Lq/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_67
    invoke-virtual {p0}, Lq/c1;->G()Z

    move-result v1

    if-eqz v1, :cond_7b

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/c1;->i:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    invoke-virtual {p0}, Lq/c1;->L()Z

    move-result v1

    if-eqz v1, :cond_8f

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/c1;->j:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8f
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

    sget-object v0, Lq/c1;->l:Lq/c1;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/c1;->M()Lq/b1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/c1;->l:Lq/c1;

    invoke-virtual {v0}, Lq/c1;->M()Lq/b1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/c1;->M()Lq/b1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->B:Lq/J2;

    const-class v1, Lq/c1;

    const-class v2, Lq/b1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
