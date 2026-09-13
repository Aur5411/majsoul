.class public final Lq/m1;
.super Lq/w2;
.source "SourceFile"


# static fields
.field public static final i:Lq/m1;


# instance fields
.field public e:I

.field public f:Lq/x0;

.field public g:Ljava/util/List;

.field public h:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/m1;

    invoke-direct {v0}, Lq/w2;-><init>()V

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/m1;->h:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/m1;->g:Ljava/util/List;

    sput-object v0, Lq/m1;->i:Lq/m1;

    new-instance v0, Lq/k1;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/l1;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/l1;->i:Ljava/util/List;

    return-object v0
.end method

.method public final D()Lq/x0;
    .registers 2

    iget-object v0, p0, Lq/m1;->f:Lq/x0;

    if-nez v0, :cond_6

    sget-object v0, Lq/x0;->m:Lq/x0;

    :cond_6
    return-object v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lq/m1;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final F()Lq/l1;
    .registers 2

    sget-object v0, Lq/m1;->i:Lq/m1;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/l1;

    invoke-direct {v0}, Lq/l1;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/l1;

    invoke-direct {v0}, Lq/l1;-><init>()V

    invoke-virtual {v0, p0}, Lq/l1;->V(Lq/m1;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 6

    new-instance v0, Lq/v2;

    invoke-direct {v0, p0}, Lq/v2;-><init>(Lq/w2;)V

    iget v1, p0, Lq/m1;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lq/m1;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lq/F;->J(ILq/Q3;)V

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iget-object v2, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2b
    const/high16 v1, 0x20000000

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
    iget v0, p0, Lq/m1;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lq/m1;->D()Lq/x0;

    move-result-object v0

    invoke-static {v1, v0}, Lq/F;->u(ILq/Q3;)I

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iget-object v1, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_31

    iget-object v1, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
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
    instance-of v1, p1, Lq/m1;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/m1;

    invoke-virtual {p0}, Lq/m1;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/m1;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/m1;->E()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/m1;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {p1}, Lq/m1;->D()Lq/x0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/x0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    iget-object v1, p0, Lq/m1;->g:Ljava/util/List;

    iget-object v2, p1, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v3

    :cond_3b
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object v2, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, v2}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    :cond_46
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    invoke-virtual {p1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    return v3

    :cond_59
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/m1;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/m1;->E()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lq/m1;->D()Lq/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq/x0;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lq/m1;->h:B

    return v2

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v3, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/E1;

    invoke-virtual {v3}, Lq/E1;->h()Z

    move-result v3

    if-nez v3, :cond_37

    iput-byte v2, p0, Lq/m1;->h:B

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->j()Z

    move-result v0

    if-nez v0, :cond_45

    iput-byte v2, p0, Lq/m1;->h:B

    return v2

    :cond_45
    iput-byte v1, p0, Lq/m1;->h:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->K:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/m1;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/m1;->D()Lq/x0;

    move-result-object v1

    invoke-virtual {v1}, Lq/x0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3c

    const/16 v1, 0x25

    const/16 v3, 0x3e7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/m1;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
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

    sget-object v0, Lq/m1;->i:Lq/m1;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/m1;->F()Lq/l1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/m1;->i:Lq/m1;

    invoke-virtual {v0}, Lq/m1;->F()Lq/l1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/m1;->F()Lq/l1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->L:Lq/J2;

    const-class v1, Lq/m1;

    const-class v2, Lq/l1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
