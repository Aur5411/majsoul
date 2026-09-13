.class public final Lq/m0;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final k:Lq/m0;

.field public static final l:Lq/k0;


# instance fields
.field public d:I

.field public e:I

.field public volatile f:Ljava/io/Serializable;

.field public volatile g:Ljava/io/Serializable;

.field public h:Z

.field public i:Z

.field public j:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lq/m0;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lq/m0;->e:I

    const-string v2, ""

    iput-object v2, v0, Lq/m0;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/m0;->g:Ljava/io/Serializable;

    iput-boolean v1, v0, Lq/m0;->h:Z

    iput-boolean v1, v0, Lq/m0;->i:Z

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/m0;->j:B

    iput-object v2, v0, Lq/m0;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/m0;->g:Ljava/io/Serializable;

    sput-object v0, Lq/m0;->k:Lq/m0;

    new-instance v0, Lq/k0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/m0;->l:Lq/k0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/l0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/l0;->g:Ljava/io/Serializable;

    iput-object p1, v0, Lq/l0;->h:Ljava/io/Serializable;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/m0;->f:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/m0;->f:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/m0;->g:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/m0;->g:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final E()Z
    .registers 2

    iget v0, p0, Lq/m0;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final F()Z
    .registers 3

    iget v0, p0, Lq/m0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final G()Z
    .registers 2

    iget v0, p0, Lq/m0;->d:I

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

    iget v0, p0, Lq/m0;->d:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lq/m0;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final J()Lq/l0;
    .registers 2

    sget-object v0, Lq/m0;->k:Lq/m0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/l0;

    invoke-direct {v0}, Lq/l0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/l0;

    invoke-direct {v0}, Lq/l0;-><init>()V

    invoke-virtual {v0, p0}, Lq/l0;->P(Lq/m0;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 4

    iget v0, p0, Lq/m0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget v0, p0, Lq/m0;->e:I

    invoke-virtual {p1, v1, v0}, Lq/F;->H(II)V

    :cond_b
    iget v0, p0, Lq/m0;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lq/m0;->f:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_16
    iget v0, p0, Lq/m0;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lq/m0;->g:Ljava/io/Serializable;

    invoke-static {p1, v0, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_22
    iget v0, p0, Lq/m0;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2e

    const/4 v0, 0x5

    iget-boolean v1, p0, Lq/m0;->h:Z

    invoke-virtual {p1, v0, v1}, Lq/F;->C(IZ)V

    :cond_2e
    iget v0, p0, Lq/m0;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3a

    const/4 v0, 0x6

    iget-boolean v1, p0, Lq/m0;->i:Z

    invoke-virtual {p1, v0, v1}, Lq/F;->C(IZ)V

    :cond_3a
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->c(Lq/F;)V

    return-void
.end method

.method public final e()I
    .registers 4

    iget v0, p0, Lq/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lq/m0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget v0, p0, Lq/m0;->e:I

    invoke-static {v1, v0}, Lq/F;->s(II)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/m0;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    iget-object v1, p0, Lq/m0;->f:Ljava/io/Serializable;

    invoke-static {v2, v1}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lq/m0;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    const/4 v1, 0x3

    iget-object v2, p0, Lq/m0;->g:Ljava/io/Serializable;

    invoke-static {v1, v2}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lq/m0;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3b

    const/4 v1, 0x5

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    iget v1, p0, Lq/m0;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_47

    const/4 v1, 0x6

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_47
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
    instance-of v1, p1, Lq/m0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/m0;

    invoke-virtual {p0}, Lq/m0;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/m0;->F()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/m0;->F()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lq/m0;->e:I

    iget v2, p1, Lq/m0;->e:I

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lq/m0;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/m0;->E()Z

    move-result v2

    if-eq v1, v2, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lq/m0;->E()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lq/m0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/m0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v3

    :cond_48
    invoke-virtual {p0}, Lq/m0;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/m0;->I()Z

    move-result v2

    if-eq v1, v2, :cond_53

    return v3

    :cond_53
    invoke-virtual {p0}, Lq/m0;->I()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Lq/m0;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/m0;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    return v3

    :cond_68
    invoke-virtual {p0}, Lq/m0;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/m0;->H()Z

    move-result v2

    if-eq v1, v2, :cond_73

    return v3

    :cond_73
    invoke-virtual {p0}, Lq/m0;->H()Z

    move-result v1

    if-eqz v1, :cond_80

    iget-boolean v1, p0, Lq/m0;->h:Z

    iget-boolean v2, p1, Lq/m0;->h:Z

    if-eq v1, v2, :cond_80

    return v3

    :cond_80
    invoke-virtual {p0}, Lq/m0;->G()Z

    move-result v1

    invoke-virtual {p1}, Lq/m0;->G()Z

    move-result v2

    if-eq v1, v2, :cond_8b

    return v3

    :cond_8b
    invoke-virtual {p0}, Lq/m0;->G()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-boolean v1, p0, Lq/m0;->i:Z

    iget-boolean v2, p1, Lq/m0;->i:Z

    if-eq v1, v2, :cond_98

    return v3

    :cond_98
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a3

    return v3

    :cond_a3
    return v0
.end method

.method public final h()Z
    .registers 3

    iget-byte v0, p0, Lq/m0;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iput-byte v1, p0, Lq/m0;->j:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->m:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/m0;->F()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1f

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/m0;->e:I

    add-int/2addr v0, v1

    :cond_1f
    invoke-virtual {p0}, Lq/m0;->E()Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/m0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    invoke-virtual {p0}, Lq/m0;->I()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/m0;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4b
    invoke-virtual {p0}, Lq/m0;->H()Z

    move-result v1

    if-eqz v1, :cond_5f

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/m0;->h:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5f
    invoke-virtual {p0}, Lq/m0;->G()Z

    move-result v1

    if-eqz v1, :cond_73

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/m0;->i:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_73
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

    sget-object v0, Lq/m0;->k:Lq/m0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/m0;->J()Lq/l0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/m0;->k:Lq/m0;

    invoke-virtual {v0}, Lq/m0;->J()Lq/l0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/m0;->J()Lq/l0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->n:Lq/J2;

    const-class v1, Lq/m0;

    const-class v2, Lq/l0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
