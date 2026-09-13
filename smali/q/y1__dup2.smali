.class public final Lq/y1;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final f:Lq/y1;


# instance fields
.field public d:Ljava/util/List;

.field public e:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/y1;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/y1;->e:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/y1;->d:Ljava/util/List;

    sput-object v0, Lq/y1;->f:Lq/y1;

    new-instance v0, Lq/t1;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/u1;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/u1;->f:Ljava/util/List;

    return-object v0
.end method

.method public final C()Lq/u1;
    .registers 2

    sget-object v0, Lq/y1;->f:Lq/y1;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/u1;

    invoke-direct {v0}, Lq/u1;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/u1;

    invoke-direct {v0}, Lq/u1;-><init>()V

    invoke-virtual {v0, p0}, Lq/u1;->P(Lq/y1;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/Q3;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
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
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v2, p0, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lq/F;->u(ILq/Q3;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0}, Lq/W4;->e()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lq/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/y1;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/y1;

    iget-object v1, p0, Lq/y1;->d:Ljava/util/List;

    iget-object v2, p1, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v2

    :cond_26
    return v0
.end method

.method public final h()Z
    .registers 3

    iget-byte v0, p0, Lq/y1;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iput-byte v1, p0, Lq/y1;->e:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->a0:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
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

    sget-object v0, Lq/y1;->f:Lq/y1;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/y1;->C()Lq/u1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/y1;->f:Lq/y1;

    invoke-virtual {v0}, Lq/y1;->C()Lq/u1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/y1;->C()Lq/u1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->b0:Lq/J2;

    const-class v1, Lq/y1;

    const-class v2, Lq/u1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
