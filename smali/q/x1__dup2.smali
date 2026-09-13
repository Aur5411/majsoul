.class public final Lq/x1;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final m:Lq/x1;

.field public static final n:Lq/v1;


# instance fields
.field public d:I

.field public e:Lq/Q2;

.field public f:I

.field public g:Lq/Q2;

.field public h:I

.field public volatile i:Ljava/io/Serializable;

.field public volatile j:Ljava/io/Serializable;

.field public k:Lq/b3;

.field public l:B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lq/x1;

    invoke-direct {v0}, Lq/K2;-><init>()V

    sget-object v1, Lq/O2;->d:Lq/O2;

    iput-object v1, v0, Lq/x1;->e:Lq/Q2;

    const/4 v2, -0x1

    iput v2, v0, Lq/x1;->f:I

    iput-object v1, v0, Lq/x1;->g:Lq/Q2;

    iput v2, v0, Lq/x1;->h:I

    const-string v3, ""

    iput-object v3, v0, Lq/x1;->i:Ljava/io/Serializable;

    iput-object v3, v0, Lq/x1;->j:Ljava/io/Serializable;

    sget-object v4, Lq/b3;->c:Lq/b3;

    iput-object v4, v0, Lq/x1;->k:Lq/b3;

    iput-byte v2, v0, Lq/x1;->l:B

    iput-object v1, v0, Lq/x1;->e:Lq/Q2;

    iput-object v1, v0, Lq/x1;->g:Lq/Q2;

    iput-object v3, v0, Lq/x1;->i:Ljava/io/Serializable;

    iput-object v3, v0, Lq/x1;->j:Ljava/io/Serializable;

    iput-object v4, v0, Lq/x1;->k:Lq/b3;

    sput-object v0, Lq/x1;->m:Lq/x1;

    new-instance v0, Lq/v1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/x1;->n:Lq/v1;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/w1;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    sget-object p1, Lq/O2;->d:Lq/O2;

    iput-object p1, v0, Lq/w1;->f:Lq/Q2;

    iput-object p1, v0, Lq/w1;->g:Lq/Q2;

    const-string p1, ""

    iput-object p1, v0, Lq/w1;->h:Ljava/io/Serializable;

    iput-object p1, v0, Lq/w1;->i:Ljava/io/Serializable;

    sget-object p1, Lq/b3;->c:Lq/b3;

    iput-object p1, v0, Lq/w1;->j:Lq/b3;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/x1;->i:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/x1;->i:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/x1;->j:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/x1;->j:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/x1;->d:I

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

    iget v0, p0, Lq/x1;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final G()Lq/w1;
    .registers 2

    sget-object v0, Lq/x1;->m:Lq/x1;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/w1;

    invoke-direct {v0}, Lq/w1;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/w1;

    invoke-direct {v0}, Lq/w1;-><init>()V

    invoke-virtual {v0, p0}, Lq/w1;->R(Lq/x1;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 6

    invoke-virtual {p0}, Lq/x1;->e()I

    iget-object v0, p0, Lq/x1;->e:Lq/Q2;

    check-cast v0, Lq/O2;

    iget v0, v0, Lq/O2;->c:I

    if-lez v0, :cond_15

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lq/F;->N(I)V

    iget v0, p0, Lq/x1;->f:I

    invoke-virtual {p1, v0}, Lq/F;->N(I)V

    :cond_15
    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget-object v2, p0, Lq/x1;->e:Lq/Q2;

    check-cast v2, Lq/O2;

    iget v3, v2, Lq/O2;->c:I

    if-ge v1, v3, :cond_29

    invoke-virtual {v2, v1}, Lq/O2;->f(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lq/F;->I(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    iget-object v1, p0, Lq/x1;->g:Lq/Q2;

    check-cast v1, Lq/O2;

    iget v1, v1, Lq/O2;->c:I

    if-lez v1, :cond_3b

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lq/F;->N(I)V

    iget v1, p0, Lq/x1;->h:I

    invoke-virtual {p1, v1}, Lq/F;->N(I)V

    :cond_3b
    move v1, v0

    :goto_3c
    iget-object v2, p0, Lq/x1;->g:Lq/Q2;

    check-cast v2, Lq/O2;

    iget v3, v2, Lq/O2;->c:I

    if-ge v1, v3, :cond_4e

    invoke-virtual {v2, v1}, Lq/O2;->f(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lq/F;->I(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4e
    iget v1, p0, Lq/x1;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    const/4 v1, 0x3

    iget-object v2, p0, Lq/x1;->i:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_5a
    iget v1, p0, Lq/x1;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_66

    const/4 v1, 0x4

    iget-object v2, p0, Lq/x1;->j:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_66
    :goto_66
    iget-object v1, p0, Lq/x1;->k:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    iget-object v1, p0, Lq/x1;->k:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_7f
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->c(Lq/F;)V

    return-void
.end method

.method public final e()I
    .registers 8

    iget v0, p0, Lq/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lq/x1;->e:Lq/Q2;

    move-object v4, v3

    check-cast v4, Lq/O2;

    iget v5, v4, Lq/O2;->c:I

    if-ge v1, v5, :cond_1e

    invoke-virtual {v4, v1}, Lq/O2;->f(I)I

    move-result v3

    invoke-static {v3}, Lq/F;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    add-int/lit8 v1, v2, 0x1

    invoke-static {v2}, Lq/F;->t(I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    iput v2, p0, Lq/x1;->f:I

    move v1, v0

    move v2, v1

    :goto_31
    iget-object v4, p0, Lq/x1;->g:Lq/Q2;

    move-object v5, v4

    check-cast v5, Lq/O2;

    iget v6, v5, Lq/O2;->c:I

    if-ge v1, v6, :cond_46

    invoke-virtual {v5, v1}, Lq/O2;->f(I)I

    move-result v4

    invoke-static {v4}, Lq/F;->t(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_46
    add-int/2addr v3, v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2}, Lq/F;->t(I)I

    move-result v1

    add-int/2addr v3, v1

    :cond_54
    iput v2, p0, Lq/x1;->h:I

    iget v1, p0, Lq/x1;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_64

    const/4 v1, 0x3

    iget-object v2, p0, Lq/x1;->i:Ljava/io/Serializable;

    invoke-static {v1, v2}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v3, v1

    :cond_64
    iget v1, p0, Lq/x1;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_72

    const/4 v1, 0x4

    iget-object v2, p0, Lq/x1;->j:Ljava/io/Serializable;

    invoke-static {v1, v2}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v3, v1

    :cond_72
    move v1, v0

    :goto_73
    iget-object v2, p0, Lq/x1;->k:Lq/b3;

    iget-object v2, v2, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8d

    iget-object v2, p0, Lq/x1;->k:Lq/b3;

    iget-object v2, v2, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lq/K2;->w(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_8d
    add-int/2addr v3, v1

    iget-object v0, p0, Lq/x1;->k:Lq/b3;

    iget-object v0, v0, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

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
    instance-of v1, p1, Lq/x1;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/x1;

    iget-object v1, p0, Lq/x1;->e:Lq/Q2;

    iget-object v2, p1, Lq/x1;->e:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v2}, Lq/O2;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lq/x1;->g:Lq/Q2;

    iget-object v3, p1, Lq/x1;->g:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1, v3}, Lq/O2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    invoke-virtual {p0}, Lq/x1;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/x1;->E()Z

    move-result v3

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    invoke-virtual {p0}, Lq/x1;->E()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lq/x1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/x1;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    invoke-virtual {p0}, Lq/x1;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/x1;->F()Z

    move-result v3

    if-eq v1, v3, :cond_55

    return v2

    :cond_55
    invoke-virtual {p0}, Lq/x1;->F()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Lq/x1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/x1;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lq/x1;->k:Lq/b3;

    iget-object v3, p1, Lq/x1;->k:Lq/b3;

    invoke-virtual {v1, v3}, Lq/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    return v2

    :cond_80
    return v0
.end method

.method public final h()Z
    .registers 3

    iget-byte v0, p0, Lq/x1;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iput-byte v1, p0, Lq/x1;->l:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->c0:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lq/x1;->e:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->size()I

    move-result v1

    const/16 v2, 0x35

    if-lez v1, :cond_29

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/x1;->e:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    iget-object v1, p0, Lq/x1;->g:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->size()I

    move-result v1

    if-lez v1, :cond_43

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/x1;->g:Lq/Q2;

    check-cast v1, Lq/O2;

    invoke-virtual {v1}, Lq/O2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    invoke-virtual {p0}, Lq/x1;->E()Z

    move-result v1

    if-eqz v1, :cond_59

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/x1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_59
    invoke-virtual {p0}, Lq/x1;->F()Z

    move-result v1

    if-eqz v1, :cond_6f

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/x1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6f
    iget-object v1, p0, Lq/x1;->k:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_87

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/x1;->k:Lq/b3;

    invoke-virtual {v1}, Lq/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_87
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

    sget-object v0, Lq/x1;->m:Lq/x1;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/x1;->G()Lq/w1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/x1;->m:Lq/x1;

    invoke-virtual {v0}, Lq/x1;->G()Lq/w1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/x1;->G()Lq/w1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->d0:Lq/J2;

    const-class v1, Lq/x1;

    const-class v2, Lq/w1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
