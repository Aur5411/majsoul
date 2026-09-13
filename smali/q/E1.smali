.class public final Lq/E1;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final m:Lq/E1;

.field public static final n:Lq/z1;


# instance fields
.field public d:I

.field public e:Ljava/util/List;

.field public volatile f:Ljava/io/Serializable;

.field public g:J

.field public h:J

.field public i:D

.field public j:Lq/B;

.field public volatile k:Ljava/io/Serializable;

.field public l:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/E1;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/E1;->f:Ljava/io/Serializable;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lq/E1;->g:J

    iput-wide v2, v0, Lq/E1;->h:J

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lq/E1;->i:D

    sget-object v2, Lq/B;->c:Lq/B;

    iput-object v2, v0, Lq/E1;->j:Lq/B;

    iput-object v1, v0, Lq/E1;->k:Ljava/io/Serializable;

    const/4 v3, -0x1

    iput-byte v3, v0, Lq/E1;->l:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lq/E1;->e:Ljava/util/List;

    iput-object v1, v0, Lq/E1;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/E1;->j:Lq/B;

    iput-object v1, v0, Lq/E1;->k:Ljava/io/Serializable;

    sput-object v0, Lq/E1;->m:Lq/E1;

    new-instance v0, Lq/z1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/E1;->n:Lq/z1;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 4

    new-instance v0, Lq/A1;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/A1;->f:Ljava/util/List;

    const-string p1, ""

    iput-object p1, v0, Lq/A1;->g:Ljava/io/Serializable;

    sget-object v1, Lq/B;->c:Lq/B;

    iput-object v1, v0, Lq/A1;->k:Lq/B;

    iput-object p1, v0, Lq/A1;->l:Ljava/io/Serializable;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/E1;->k:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/E1;->k:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/E1;->f:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/E1;->f:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final E()Z
    .registers 2

    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final F()Z
    .registers 2

    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final G()Z
    .registers 3

    iget v0, p0, Lq/E1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final H()Z
    .registers 2

    iget v0, p0, Lq/E1;->d:I

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

    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x2

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

    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final K()Lq/A1;
    .registers 2

    sget-object v0, Lq/E1;->m:Lq/E1;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/A1;

    invoke-direct {v0}, Lq/A1;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/A1;

    invoke-direct {v0}, Lq/A1;-><init>()V

    invoke-virtual {v0, p0}, Lq/A1;->P(Lq/E1;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    iget v1, p0, Lq/E1;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    const/4 v1, 0x3

    iget-object v4, p0, Lq/E1;->f:Ljava/io/Serializable;

    invoke-static {p1, v1, v4}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_25
    iget v1, p0, Lq/E1;->d:I

    and-int/2addr v1, v3

    const/4 v4, 0x4

    if-eqz v1, :cond_33

    iget-wide v5, p0, Lq/E1;->g:J

    invoke-virtual {p1, v4, v0}, Lq/F;->M(II)V

    invoke-virtual {p1, v5, v6}, Lq/F;->O(J)V

    :cond_33
    iget v1, p0, Lq/E1;->d:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_41

    iget-wide v4, p0, Lq/E1;->h:J

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lq/F;->M(II)V

    invoke-virtual {p1, v4, v5}, Lq/F;->O(J)V

    :cond_41
    iget v0, p0, Lq/E1;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_58

    iget-wide v4, p0, Lq/E1;->i:D

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lq/F;->M(II)V

    invoke-virtual {p1, v4, v5}, Lq/F;->F(J)V

    :cond_58
    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_67

    iget-object v0, p0, Lq/E1;->j:Lq/B;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v3}, Lq/F;->M(II)V

    invoke-virtual {p1, v0}, Lq/F;->D(Lq/B;)V

    :cond_67
    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_72

    iget-object v0, p0, Lq/E1;->k:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_72
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
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v2, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    invoke-static {v3, v2}, Lq/F;->u(ILq/Q3;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    const/4 v0, 0x3

    iget-object v2, p0, Lq/E1;->f:Ljava/io/Serializable;

    invoke-static {v0, v2}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2f
    iget v0, p0, Lq/E1;->d:I

    and-int/2addr v0, v3

    const/4 v2, 0x4

    if-eqz v0, :cond_41

    iget-wide v3, p0, Lq/E1;->g:J

    invoke-static {v2}, Lq/F;->x(I)I

    move-result v0

    invoke-static {v3, v4}, Lq/F;->z(J)I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    :cond_41
    iget v0, p0, Lq/E1;->d:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_53

    iget-wide v2, p0, Lq/E1;->h:J

    const/4 v0, 0x5

    invoke-static {v0}, Lq/F;->x(I)I

    move-result v0

    invoke-static {v2, v3}, Lq/F;->z(J)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_53
    iget v0, p0, Lq/E1;->d:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_61

    const/4 v0, 0x6

    invoke-static {v0}, Lq/F;->x(I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_61
    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_74

    iget-object v0, p0, Lq/E1;->j:Lq/B;

    const/4 v3, 0x7

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v3

    invoke-static {v0}, Lq/F;->q(Lq/B;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    :cond_74
    iget v0, p0, Lq/E1;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_81

    iget-object v0, p0, Lq/E1;->k:Ljava/io/Serializable;

    invoke-static {v2, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_81
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0}, Lq/W4;->e()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lq/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/E1;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/E1;

    iget-object v1, p0, Lq/E1;->e:Ljava/util/List;

    iget-object v2, p1, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    invoke-virtual {p0}, Lq/E1;->G()Z

    move-result v1

    invoke-virtual {p1}, Lq/E1;->G()Z

    move-result v3

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    invoke-virtual {p0}, Lq/E1;->G()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lq/E1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/E1;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    invoke-virtual {p0}, Lq/E1;->I()Z

    move-result v1

    invoke-virtual {p1}, Lq/E1;->I()Z

    move-result v3

    if-eq v1, v3, :cond_46

    return v2

    :cond_46
    invoke-virtual {p0}, Lq/E1;->I()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-wide v3, p0, Lq/E1;->g:J

    iget-wide v5, p1, Lq/E1;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_55

    return v2

    :cond_55
    invoke-virtual {p0}, Lq/E1;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/E1;->H()Z

    move-result v3

    if-eq v1, v3, :cond_60

    return v2

    :cond_60
    invoke-virtual {p0}, Lq/E1;->H()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-wide v3, p0, Lq/E1;->h:J

    iget-wide v5, p1, Lq/E1;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6f

    return v2

    :cond_6f
    invoke-virtual {p0}, Lq/E1;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/E1;->F()Z

    move-result v3

    if-eq v1, v3, :cond_7a

    return v2

    :cond_7a
    invoke-virtual {p0}, Lq/E1;->F()Z

    move-result v1

    if-eqz v1, :cond_91

    iget-wide v3, p0, Lq/E1;->i:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lq/E1;->i:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_91

    return v2

    :cond_91
    invoke-virtual {p0}, Lq/E1;->J()Z

    move-result v1

    invoke-virtual {p1}, Lq/E1;->J()Z

    move-result v3

    if-eq v1, v3, :cond_9c

    return v2

    :cond_9c
    invoke-virtual {p0}, Lq/E1;->J()Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lq/E1;->j:Lq/B;

    iget-object v3, p1, Lq/E1;->j:Lq/B;

    invoke-virtual {v1, v3}, Lq/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    return v2

    :cond_ad
    invoke-virtual {p0}, Lq/E1;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/E1;->E()Z

    move-result v3

    if-eq v1, v3, :cond_b8

    return v2

    :cond_b8
    invoke-virtual {p0}, Lq/E1;->E()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {p0}, Lq/E1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/E1;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    return v2

    :cond_cd
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    return v2

    :cond_d8
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/E1;->l:B

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
    iget-object v3, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/D1;

    invoke-virtual {v3}, Lq/D1;->h()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lq/E1;->l:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    iput-byte v1, p0, Lq/E1;->l:B

    return v1
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->U:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x35

    if-lez v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    invoke-virtual {p0}, Lq/E1;->G()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/E1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    invoke-virtual {p0}, Lq/E1;->I()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_51

    const/16 v1, 0x25

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-wide v4, p0, Lq/E1;->g:J

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    :cond_51
    invoke-virtual {p0}, Lq/E1;->H()Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0x25

    const/4 v4, 0x5

    invoke-static {v0, v1, v4, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-wide v4, p0, Lq/E1;->h:J

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    :cond_65
    invoke-virtual {p0}, Lq/E1;->F()Z

    move-result v1

    if-eqz v1, :cond_7e

    const/16 v1, 0x25

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-wide v4, p0, Lq/E1;->i:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long v6, v4, v3

    xor-long v3, v4, v6

    long-to-int v1, v3

    add-int/2addr v0, v1

    :cond_7e
    invoke-virtual {p0}, Lq/E1;->J()Z

    move-result v1

    if-eqz v1, :cond_92

    const/16 v1, 0x25

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/E1;->j:Lq/B;

    invoke-virtual {v1}, Lq/B;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_92
    invoke-virtual {p0}, Lq/E1;->E()Z

    move-result v1

    if-eqz v1, :cond_a9

    const/16 v1, 0x25

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/E1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a9
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

    sget-object v0, Lq/E1;->m:Lq/E1;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/E1;->K()Lq/A1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/E1;->m:Lq/E1;

    invoke-virtual {v0}, Lq/E1;->K()Lq/A1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/E1;->K()Lq/A1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->V:Lq/J2;

    const-class v1, Lq/E1;

    const-class v2, Lq/A1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
