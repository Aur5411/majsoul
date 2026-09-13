.class public final Lq/x0;
.super Lq/w2;
.source "SourceFile"


# static fields
.field public static final m:Lq/x0;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/x0;

    invoke-direct {v0}, Lq/w2;-><init>()V

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/x0;->l:B

    const/4 v1, 0x0

    iput v1, v0, Lq/x0;->f:I

    iput v1, v0, Lq/x0;->g:I

    iput v1, v0, Lq/x0;->h:I

    iput v1, v0, Lq/x0;->i:I

    iput v1, v0, Lq/x0;->j:I

    iput v1, v0, Lq/x0;->k:I

    sput-object v0, Lq/x0;->m:Lq/x0;

    new-instance v0, Lq/p0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/q0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const/4 p1, 0x0

    iput p1, v0, Lq/q0;->g:I

    iput p1, v0, Lq/q0;->h:I

    iput p1, v0, Lq/q0;->i:I

    iput p1, v0, Lq/q0;->j:I

    iput p1, v0, Lq/q0;->k:I

    iput p1, v0, Lq/q0;->l:I

    return-object v0
.end method

.method public final D()Z
    .registers 2

    iget v0, p0, Lq/x0;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/x0;->e:I

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

    iget v0, p0, Lq/x0;->e:I

    and-int/lit8 v0, v0, 0x20

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

    iget v0, p0, Lq/x0;->e:I

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

    iget v0, p0, Lq/x0;->e:I

    and-int/lit8 v0, v0, 0x4

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

    iget v0, p0, Lq/x0;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final J()Lq/q0;
    .registers 2

    sget-object v0, Lq/x0;->m:Lq/x0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/q0;

    invoke-direct {v0}, Lq/q0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/q0;

    invoke-direct {v0}, Lq/q0;-><init>()V

    invoke-virtual {v0, p0}, Lq/q0;->V(Lq/x0;)Lq/q0;

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 6

    new-instance v0, Lq/v2;

    invoke-direct {v0, p0}, Lq/v2;-><init>(Lq/w2;)V

    iget v1, p0, Lq/x0;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    iget v1, p0, Lq/x0;->f:I

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_10
    iget v1, p0, Lq/x0;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    iget v1, p0, Lq/x0;->g:I

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_1b
    iget v1, p0, Lq/x0;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    iget v1, p0, Lq/x0;->h:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Lq/F;->H(II)V

    :cond_27
    iget v1, p0, Lq/x0;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_32

    iget v1, p0, Lq/x0;->i:I

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_32
    iget v1, p0, Lq/x0;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3e

    iget v1, p0, Lq/x0;->j:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_3e
    iget v1, p0, Lq/x0;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4a

    iget v1, p0, Lq/x0;->k:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lq/F;->H(II)V

    :cond_4a
    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lq/v2;->n(ILq/F;)V

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
    iget v0, p0, Lq/x0;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget v0, p0, Lq/x0;->f:I

    invoke-static {v1, v0}, Lq/F;->r(II)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/x0;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    iget v1, p0, Lq/x0;->g:I

    invoke-static {v2, v1}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lq/x0;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    const/4 v1, 0x3

    iget v3, p0, Lq/x0;->h:I

    invoke-static {v1, v3}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lq/x0;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3c

    iget v1, p0, Lq/x0;->i:I

    invoke-static {v2, v1}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget v1, p0, Lq/x0;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4a

    const/4 v1, 0x5

    iget v2, p0, Lq/x0;->j:I

    invoke-static {v1, v2}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget v1, p0, Lq/x0;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_58

    const/4 v1, 0x6

    iget v2, p0, Lq/x0;->k:I

    invoke-static {v1, v2}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    invoke-virtual {p0}, Lq/w2;->C()I

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
    instance-of v1, p1, Lq/x0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/x0;

    invoke-virtual {p0}, Lq/x0;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/x0;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/x0;->E()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lq/x0;->f:I

    iget v2, p1, Lq/x0;->f:I

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lq/x0;->D()Z

    move-result v1

    invoke-virtual {p1}, Lq/x0;->D()Z

    move-result v2

    if-eq v1, v2, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lq/x0;->D()Z

    move-result v1

    if-eqz v1, :cond_40

    iget v1, p0, Lq/x0;->g:I

    iget v2, p1, Lq/x0;->g:I

    if-eq v1, v2, :cond_40

    return v3

    :cond_40
    invoke-virtual {p0}, Lq/x0;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/x0;->H()Z

    move-result v2

    if-eq v1, v2, :cond_4b

    return v3

    :cond_4b
    invoke-virtual {p0}, Lq/x0;->H()Z

    move-result v1

    if-eqz v1, :cond_58

    iget v1, p0, Lq/x0;->h:I

    iget v2, p1, Lq/x0;->h:I

    if-eq v1, v2, :cond_58

    return v3

    :cond_58
    invoke-virtual {p0}, Lq/x0;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/x0;->I()Z

    move-result v2

    if-eq v1, v2, :cond_63

    return v3

    :cond_63
    invoke-virtual {p0}, Lq/x0;->I()Z

    move-result v1

    if-eqz v1, :cond_70

    iget v1, p0, Lq/x0;->i:I

    iget v2, p1, Lq/x0;->i:I

    if-eq v1, v2, :cond_70

    return v3

    :cond_70
    invoke-virtual {p0}, Lq/x0;->G()Z

    move-result v1

    invoke-virtual {p1}, Lq/x0;->G()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    :cond_7b
    invoke-virtual {p0}, Lq/x0;->G()Z

    move-result v1

    if-eqz v1, :cond_88

    iget v1, p0, Lq/x0;->j:I

    iget v2, p1, Lq/x0;->j:I

    if-eq v1, v2, :cond_88

    return v3

    :cond_88
    invoke-virtual {p0}, Lq/x0;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/x0;->F()Z

    move-result v2

    if-eq v1, v2, :cond_93

    return v3

    :cond_93
    invoke-virtual {p0}, Lq/x0;->F()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget v1, p0, Lq/x0;->k:I

    iget v2, p1, Lq/x0;->k:I

    if-eq v1, v2, :cond_a0

    return v3

    :cond_a0
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object v2, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, v2}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    return v3

    :cond_ab
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    invoke-virtual {p1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    return v3

    :cond_be
    return v0
.end method

.method public final h()Z
    .registers 4

    iget-byte v0, p0, Lq/x0;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->j()Z

    move-result v0

    if-nez v0, :cond_15

    iput-byte v2, p0, Lq/x0;->l:B

    return v2

    :cond_15
    iput-byte v1, p0, Lq/x0;->l:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->Y:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/x0;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1f

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/x0;->f:I

    add-int/2addr v0, v1

    :cond_1f
    invoke-virtual {p0}, Lq/x0;->D()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/x0;->g:I

    add-int/2addr v0, v1

    :cond_2f
    invoke-virtual {p0}, Lq/x0;->H()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/x0;->h:I

    add-int/2addr v0, v1

    :cond_3f
    invoke-virtual {p0}, Lq/x0;->I()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/x0;->i:I

    add-int/2addr v0, v1

    :cond_4f
    invoke-virtual {p0}, Lq/x0;->G()Z

    move-result v1

    if-eqz v1, :cond_5f

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/x0;->j:I

    add-int/2addr v0, v1

    :cond_5f
    invoke-virtual {p0}, Lq/x0;->F()Z

    move-result v1

    if-eqz v1, :cond_6f

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/x0;->k:I

    add-int/2addr v0, v1

    :cond_6f
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

    sget-object v0, Lq/x0;->m:Lq/x0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/x0;->J()Lq/q0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/x0;->m:Lq/x0;

    invoke-virtual {v0}, Lq/x0;->J()Lq/q0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/x0;->J()Lq/q0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->Z:Lq/J2;

    const-class v1, Lq/x0;

    const-class v2, Lq/q0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
