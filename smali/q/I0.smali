.class public final Lq/I0;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final h:Lq/I0;

.field public static final i:Lq/G0;


# instance fields
.field public d:I

.field public e:I

.field public volatile f:Ljava/io/Serializable;

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/I0;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lq/I0;->e:I

    const-string v2, ""

    iput-object v2, v0, Lq/I0;->f:Ljava/io/Serializable;

    const/4 v3, -0x1

    iput-byte v3, v0, Lq/I0;->g:B

    iput v1, v0, Lq/I0;->e:I

    iput-object v2, v0, Lq/I0;->f:Ljava/io/Serializable;

    sput-object v0, Lq/I0;->h:Lq/I0;

    new-instance v0, Lq/G0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/I0;->i:Lq/G0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/H0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const/4 p1, 0x0

    iput p1, v0, Lq/H0;->f:I

    const-string p1, ""

    iput-object p1, v0, Lq/H0;->g:Ljava/io/Serializable;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/I0;->f:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/I0;->f:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Z
    .registers 3

    iget v0, p0, Lq/I0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final E()Z
    .registers 2

    iget v0, p0, Lq/I0;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final F()Lq/H0;
    .registers 2

    sget-object v0, Lq/I0;->h:Lq/I0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/H0;

    invoke-direct {v0}, Lq/H0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/H0;

    invoke-direct {v0}, Lq/H0;-><init>()V

    invoke-virtual {v0, p0}, Lq/H0;->P(Lq/I0;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 4

    iget v0, p0, Lq/I0;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/I0;->f:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lq/I0;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget v0, p0, Lq/I0;->e:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lq/F;->H(II)V

    :cond_17
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
    iget v0, p0, Lq/I0;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lq/I0;->f:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/I0;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    iget v2, p0, Lq/I0;->e:I

    invoke-static {v1, v2}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
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
    instance-of v1, p1, Lq/I0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/I0;

    invoke-virtual {p0}, Lq/I0;->D()Z

    move-result v1

    invoke-virtual {p1}, Lq/I0;->D()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/I0;->D()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lq/I0;->e:I

    iget v2, p1, Lq/I0;->e:I

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    invoke-virtual {p0}, Lq/I0;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/I0;->E()Z

    move-result v2

    if-eq v1, v2, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lq/I0;->E()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lq/I0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/I0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v3

    :cond_48
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    return v3

    :cond_53
    return v0
.end method

.method public final h()Z
    .registers 3

    iget-byte v0, p0, Lq/I0;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iput-byte v1, p0, Lq/I0;->g:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->I:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/I0;->D()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_1f

    const/16 v1, 0x25

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/I0;->e:I

    add-int/2addr v0, v1

    :cond_1f
    invoke-virtual {p0}, Lq/I0;->E()Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/I0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
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

    sget-object v0, Lq/I0;->h:Lq/I0;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/I0;->F()Lq/H0;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/I0;->h:Lq/I0;

    invoke-virtual {v0}, Lq/I0;->F()Lq/H0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/I0;->F()Lq/H0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->J:Lq/J2;

    const-class v1, Lq/I0;

    const-class v2, Lq/H0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
