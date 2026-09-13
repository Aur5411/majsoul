.class public final Lq/b0;
.super Lq/w2;
.source "SourceFile"


# static fields
.field public static final l:Lq/b0;


# instance fields
.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lq/x0;

.field public j:Ljava/util/List;

.field public k:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/b0;

    invoke-direct {v0}, Lq/w2;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq/b0;->f:Z

    iput-boolean v1, v0, Lq/b0;->g:Z

    iput-boolean v1, v0, Lq/b0;->h:Z

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/b0;->k:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/b0;->j:Ljava/util/List;

    sput-object v0, Lq/b0;->l:Lq/b0;

    new-instance v0, Lq/Z;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/a0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/a0;->l:Ljava/util/List;

    return-object v0
.end method

.method public final D()Lq/x0;
    .registers 2

    iget-object v0, p0, Lq/b0;->i:Lq/x0;

    if-nez v0, :cond_6

    sget-object v0, Lq/x0;->m:Lq/x0;

    :cond_6
    return-object v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/b0;->e:I

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

    iget v0, p0, Lq/b0;->e:I

    and-int/lit8 v0, v0, 0x2

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

    iget v0, p0, Lq/b0;->e:I

    and-int/lit8 v0, v0, 0x4

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

    iget v0, p0, Lq/b0;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final I()Lq/a0;
    .registers 2

    sget-object v0, Lq/b0;->l:Lq/b0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/a0;

    invoke-direct {v0}, Lq/a0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/a0;

    invoke-direct {v0}, Lq/a0;-><init>()V

    invoke-virtual {v0, p0}, Lq/a0;->W(Lq/b0;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 8

    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    iget-boolean v1, v0, Lq/g2;->c:Z

    iget-object v0, v0, Lq/g2;->a:Lq/D4;

    if-eqz v1, :cond_1a

    new-instance v1, Lq/Z2;

    invoke-virtual {v0}, Lq/D4;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lq/I4;

    invoke-virtual {v0}, Lq/I4;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lq/Z2;->a:Ljava/util/Iterator;

    goto :goto_24

    :cond_1a
    invoke-virtual {v0}, Lq/D4;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lq/I4;

    invoke-virtual {v0}, Lq/I4;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_33

    :cond_32
    move-object v0, v2

    :goto_33
    iget v3, p0, Lq/b0;->e:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lq/b0;->f:Z

    invoke-virtual {p1, v4, v3}, Lq/F;->C(IZ)V

    :cond_3f
    iget v3, p0, Lq/b0;->e:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4a

    const/4 v3, 0x3

    iget-boolean v4, p0, Lq/b0;->g:Z

    invoke-virtual {p1, v3, v4}, Lq/F;->C(IZ)V

    :cond_4a
    iget v3, p0, Lq/b0;->e:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_56

    const/4 v3, 0x6

    iget-boolean v4, p0, Lq/b0;->h:Z

    invoke-virtual {p1, v3, v4}, Lq/F;->C(IZ)V

    :cond_56
    iget v3, p0, Lq/b0;->e:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_64

    const/4 v3, 0x7

    invoke-virtual {p0}, Lq/b0;->D()Lq/x0;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lq/F;->J(ILq/Q3;)V

    :cond_64
    const/4 v3, 0x0

    :goto_65
    iget-object v4, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7d

    iget-object v4, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/Q3;

    const/16 v5, 0x3e7

    invoke-virtual {p1, v5, v4}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_7d
    :goto_7d
    if-eqz v0, :cond_a9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/R1;

    iget-object v3, v3, Lq/R1;->b:Lq/C0;

    iget v3, v3, Lq/C0;->f:I

    const/high16 v4, 0x20000000

    if-ge v3, v4, :cond_a9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/R1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lq/g2;->q(Lq/f2;Ljava/lang/Object;Lq/F;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_7d

    :cond_a7
    move-object v0, v2

    goto :goto_7d

    :cond_a9
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
    iget v0, p0, Lq/b0;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v0

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iget v3, p0, Lq/b0;->e:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget v1, p0, Lq/b0;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2b

    const/4 v1, 0x6

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2b
    iget v1, p0, Lq/b0;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3b

    const/4 v1, 0x7

    invoke-virtual {p0}, Lq/b0;->D()Lq/x0;

    move-result-object v3

    invoke-static {v1, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    :goto_3b
    iget-object v1, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_55

    iget-object v1, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_55
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->h()I

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
    instance-of v1, p1, Lq/b0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/b0;

    invoke-virtual {p0}, Lq/b0;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/b0;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/b0;->E()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lq/b0;->f:Z

    iget-boolean v2, p1, Lq/b0;->f:Z

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lq/b0;->F()Z

    move-result v1

    invoke-virtual {p1}, Lq/b0;->F()Z

    move-result v2

    if-eq v1, v2, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lq/b0;->F()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-boolean v1, p0, Lq/b0;->g:Z

    iget-boolean v2, p1, Lq/b0;->g:Z

    if-eq v1, v2, :cond_40

    return v3

    :cond_40
    invoke-virtual {p0}, Lq/b0;->G()Z

    move-result v1

    invoke-virtual {p1}, Lq/b0;->G()Z

    move-result v2

    if-eq v1, v2, :cond_4b

    return v3

    :cond_4b
    invoke-virtual {p0}, Lq/b0;->G()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lq/b0;->h:Z

    iget-boolean v2, p1, Lq/b0;->h:Z

    if-eq v1, v2, :cond_58

    return v3

    :cond_58
    invoke-virtual {p0}, Lq/b0;->H()Z

    move-result v1

    invoke-virtual {p1}, Lq/b0;->H()Z

    move-result v2

    if-eq v1, v2, :cond_63

    return v3

    :cond_63
    invoke-virtual {p0}, Lq/b0;->H()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {p0}, Lq/b0;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {p1}, Lq/b0;->D()Lq/x0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/x0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v3

    :cond_78
    iget-object v1, p0, Lq/b0;->j:Ljava/util/List;

    iget-object v2, p1, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    return v3

    :cond_83
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object v2, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, v2}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    return v3

    :cond_8e
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    invoke-virtual {p1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    return v3

    :cond_a1
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/b0;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/b0;->H()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lq/b0;->D()Lq/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq/x0;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lq/b0;->k:B

    return v2

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v3, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/E1;

    invoke-virtual {v3}, Lq/E1;->h()Z

    move-result v3

    if-nez v3, :cond_37

    iput-byte v2, p0, Lq/b0;->k:B

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->j()Z

    move-result v0

    if-nez v0, :cond_45

    iput-byte v2, p0, Lq/b0;->k:B

    return v2

    :cond_45
    iput-byte v1, p0, Lq/b0;->k:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->M:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/b0;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_23

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/b0;->f:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    invoke-virtual {p0}, Lq/b0;->F()Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/b0;->g:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_37
    invoke-virtual {p0}, Lq/b0;->G()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/16 v1, 0x25

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/b0;->h:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4b
    invoke-virtual {p0}, Lq/b0;->H()Z

    move-result v1

    if-eqz v1, :cond_61

    const/16 v1, 0x25

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/b0;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {v1}, Lq/x0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_61
    iget-object v1, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_78

    const/16 v1, 0x25

    const/16 v3, 0x3e7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/b0;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_78
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

    sget-object v0, Lq/b0;->l:Lq/b0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/b0;->I()Lq/a0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/b0;->l:Lq/b0;

    invoke-virtual {v0}, Lq/b0;->I()Lq/a0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/b0;->I()Lq/a0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->N:Lq/J2;

    const-class v1, Lq/b0;

    const-class v2, Lq/a0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
