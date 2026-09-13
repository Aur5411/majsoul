.class public final Lq/Y;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final k:Lq/Y;

.field public static final l:Lq/T;


# instance fields
.field public d:I

.field public volatile e:Ljava/io/Serializable;

.field public f:Ljava/util/List;

.field public g:Lq/b0;

.field public h:Ljava/util/List;

.field public i:Lq/b3;

.field public j:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/Y;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/Y;->e:Ljava/io/Serializable;

    sget-object v2, Lq/b3;->c:Lq/b3;

    iput-object v2, v0, Lq/Y;->i:Lq/b3;

    const/4 v3, -0x1

    iput-byte v3, v0, Lq/Y;->j:B

    iput-object v1, v0, Lq/Y;->e:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Y;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/Y;->h:Ljava/util/List;

    iput-object v2, v0, Lq/Y;->i:Lq/b3;

    sput-object v0, Lq/Y;->k:Lq/Y;

    new-instance v0, Lq/T;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/Y;->l:Lq/T;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/U;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/U;->f:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/U;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/U;->j:Ljava/util/List;

    sget-object p1, Lq/b3;->c:Lq/b3;

    iput-object p1, v0, Lq/U;->k:Lq/b3;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/Y;->e:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/Y;->e:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Lq/b0;
    .registers 2

    iget-object v0, p0, Lq/Y;->g:Lq/b0;

    if-nez v0, :cond_6

    sget-object v0, Lq/b0;->l:Lq/b0;

    :cond_6
    return-object v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/Y;->d:I

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

    iget v0, p0, Lq/Y;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final G()Lq/U;
    .registers 2

    sget-object v0, Lq/Y;->k:Lq/Y;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/U;

    invoke-direct {v0}, Lq/U;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/U;

    invoke-direct {v0}, Lq/U;-><init>()V

    invoke-virtual {v0, p0}, Lq/U;->Q(Lq/Y;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 6

    iget v0, p0, Lq/Y;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/Y;->e:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v2, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    iget v1, p0, Lq/Y;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    invoke-virtual {p0}, Lq/Y;->D()Lq/b0;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lq/F;->J(ILq/Q3;)V

    :cond_31
    move v1, v0

    :goto_32
    iget-object v2, p0, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_49
    :goto_49
    iget-object v1, p0, Lq/Y;->i:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    iget-object v1, p0, Lq/Y;->i:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_62
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->c(Lq/F;)V

    return-void
.end method

.method public final e()I
    .registers 6

    iget v0, p0, Lq/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lq/Y;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lq/Y;->e:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    move v1, v2

    :goto_16
    iget-object v3, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2f

    iget-object v3, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2f
    iget v1, p0, Lq/Y;->d:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_3e

    const/4 v1, 0x3

    invoke-virtual {p0}, Lq/Y;->D()Lq/b0;

    move-result-object v3

    invoke-static {v1, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    move v1, v2

    :goto_3f
    iget-object v3, p0, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    iget-object v3, p0, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q3;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_58
    move v1, v2

    :goto_59
    iget-object v3, p0, Lq/Y;->i:Lq/b3;

    iget-object v3, v3, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    iget-object v3, p0, Lq/Y;->i:Lq/b3;

    iget-object v3, v3, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lq/K2;->w(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_73
    add-int/2addr v0, v1

    iget-object v1, p0, Lq/Y;->i:Lq/b3;

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
    instance-of v1, p1, Lq/Y;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/Y;

    invoke-virtual {p0}, Lq/Y;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/Y;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/Y;->E()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/Y;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/Y;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    iget-object v1, p0, Lq/Y;->f:Ljava/util/List;

    iget-object v2, p1, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p0}, Lq/Y;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/Y;->F()Z

    move-result v2

    if-eq v1, v2, :cond_46

    return v3

    :cond_46
    invoke-virtual {p0}, Lq/Y;->F()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lq/Y;->D()Lq/b0;

    move-result-object v1

    invoke-virtual {p1}, Lq/Y;->D()Lq/b0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/b0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v3

    :cond_5b
    iget-object v1, p0, Lq/Y;->h:Ljava/util/List;

    iget-object v2, p1, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v3

    :cond_66
    iget-object v1, p0, Lq/Y;->i:Lq/b3;

    iget-object v2, p1, Lq/Y;->i:Lq/b3;

    invoke-virtual {v1, v2}, Lq/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    return v3

    :cond_71
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    return v3

    :cond_7c
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/Y;->j:B

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
    iget-object v3, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/e0;

    invoke-virtual {v3}, Lq/e0;->h()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lq/Y;->j:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    invoke-virtual {p0}, Lq/Y;->F()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lq/Y;->D()Lq/b0;

    move-result-object v0

    invoke-virtual {v0}, Lq/b0;->h()Z

    move-result v0

    if-nez v0, :cond_3a

    iput-byte v2, p0, Lq/Y;->j:B

    return v2

    :cond_3a
    iput-byte v1, p0, Lq/Y;->j:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->s:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/Y;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/Y;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Y;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    invoke-virtual {p0}, Lq/Y;->F()Z

    move-result v1

    if-eqz v1, :cond_51

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/Y;->D()Lq/b0;

    move-result-object v1

    invoke-virtual {v1}, Lq/b0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    iget-object v1, p0, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_67

    const/16 v1, 0x25

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Y;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_67
    iget-object v1, p0, Lq/Y;->i:Lq/b3;

    iget-object v1, v1, Lq/b3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7f

    const/16 v1, 0x25

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/Y;->i:Lq/b3;

    invoke-virtual {v1}, Lq/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7f
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

    sget-object v0, Lq/Y;->k:Lq/Y;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/Y;->G()Lq/U;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/Y;->k:Lq/Y;

    invoke-virtual {v0}, Lq/Y;->G()Lq/U;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/Y;->G()Lq/U;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->t:Lq/J2;

    const-class v1, Lq/Y;

    const-class v2, Lq/U;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
