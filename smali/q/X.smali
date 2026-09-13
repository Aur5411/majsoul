.class public final Lq/X;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final h:Lq/X;

.field public static final i:Lq/V;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/X;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lq/X;->e:I

    iput v1, v0, Lq/X;->f:I

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/X;->g:B

    sput-object v0, Lq/X;->h:Lq/X;

    new-instance v0, Lq/V;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/X;->i:Lq/V;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/W;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    return-object v0
.end method

.method public final C()Z
    .registers 2

    iget v0, p0, Lq/X;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final D()Z
    .registers 3

    iget v0, p0, Lq/X;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final E()Lq/W;
    .registers 3

    sget-object v0, Lq/X;->h:Lq/X;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance v0, Lq/W;

    invoke-direct {v0, v1}, Lq/t2;-><init>(Lq/s2;)V

    goto :goto_13

    :cond_b
    new-instance v0, Lq/W;

    invoke-direct {v0, v1}, Lq/t2;-><init>(Lq/s2;)V

    invoke-virtual {v0, p0}, Lq/W;->Q(Lq/X;)V

    :goto_13
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 4

    iget v0, p0, Lq/X;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget v0, p0, Lq/X;->e:I

    invoke-virtual {p1, v1, v0}, Lq/F;->H(II)V

    :cond_b
    iget v0, p0, Lq/X;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    iget v0, p0, Lq/X;->f:I

    invoke-virtual {p1, v1, v0}, Lq/F;->H(II)V

    :cond_16
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
    iget v0, p0, Lq/X;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget v0, p0, Lq/X;->e:I

    invoke-static {v1, v0}, Lq/F;->s(II)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/X;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    iget v1, p0, Lq/X;->f:I

    invoke-static {v2, v1}, Lq/F;->s(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
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
    instance-of v1, p1, Lq/X;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/X;

    invoke-virtual {p0}, Lq/X;->D()Z

    move-result v1

    invoke-virtual {p1}, Lq/X;->D()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/X;->D()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lq/X;->e:I

    iget v2, p1, Lq/X;->e:I

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lq/X;->C()Z

    move-result v1

    invoke-virtual {p1}, Lq/X;->C()Z

    move-result v2

    if-eq v1, v2, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lq/X;->C()Z

    move-result v1

    if-eqz v1, :cond_40

    iget v1, p0, Lq/X;->f:I

    iget v2, p1, Lq/X;->f:I

    if-eq v1, v2, :cond_40

    return v3

    :cond_40
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    return v3

    :cond_4b
    return v0
.end method

.method public final h()Z
    .registers 3

    iget-byte v0, p0, Lq/X;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iput-byte v1, p0, Lq/X;->g:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->u:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/X;->D()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1f

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/X;->e:I

    add-int/2addr v0, v1

    :cond_1f
    invoke-virtual {p0}, Lq/X;->C()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/X;->f:I

    add-int/2addr v0, v1

    :cond_2f
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

    sget-object v0, Lq/X;->h:Lq/X;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/X;->E()Lq/W;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/X;->h:Lq/X;

    invoke-virtual {v0}, Lq/X;->E()Lq/W;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/X;->E()Lq/W;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->v:Lq/J2;

    const-class v1, Lq/X;

    const-class v2, Lq/W;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
