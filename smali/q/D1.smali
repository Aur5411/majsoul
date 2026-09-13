.class public final Lq/D1;
.super Lq/K2;
.source "SourceFile"


# static fields
.field public static final h:Lq/D1;

.field public static final i:Lq/B1;


# instance fields
.field public d:I

.field public volatile e:Ljava/io/Serializable;

.field public f:Z

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lq/D1;

    invoke-direct {v0}, Lq/K2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/D1;->e:Ljava/io/Serializable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lq/D1;->f:Z

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/D1;->g:B

    iput-object v1, v0, Lq/D1;->e:Ljava/io/Serializable;

    sput-object v0, Lq/D1;->h:Lq/D1;

    new-instance v0, Lq/B1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/D1;->i:Lq/B1;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 3

    new-instance v0, Lq/C1;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/C1;->f:Ljava/io/Serializable;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/D1;->e:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/D1;->e:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final D()Z
    .registers 2

    iget v0, p0, Lq/D1;->d:I

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

    iget v0, p0, Lq/D1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final F()Lq/C1;
    .registers 2

    sget-object v0, Lq/D1;->h:Lq/D1;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/C1;

    invoke-direct {v0}, Lq/C1;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/C1;

    invoke-direct {v0}, Lq/C1;-><init>()V

    invoke-virtual {v0, p0}, Lq/C1;->P(Lq/D1;)V

    :goto_12
    return-object v0
.end method

.method public final c(Lq/F;)V
    .registers 4

    iget v0, p0, Lq/D1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/D1;->e:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lq/D1;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lq/D1;->f:Z

    invoke-virtual {p1, v1, v0}, Lq/F;->C(IZ)V

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
    iget v0, p0, Lq/D1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lq/D1;->e:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lq/D1;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    invoke-static {v2}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
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
    instance-of v1, p1, Lq/D1;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/D1;

    invoke-virtual {p0}, Lq/D1;->E()Z

    move-result v1

    invoke-virtual {p1}, Lq/D1;->E()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/D1;->E()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/D1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/D1;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    invoke-virtual {p0}, Lq/D1;->D()Z

    move-result v1

    invoke-virtual {p1}, Lq/D1;->D()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p0}, Lq/D1;->D()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lq/D1;->f:Z

    iget-boolean v2, p1, Lq/D1;->f:Z

    if-eq v1, v2, :cond_48

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
    .registers 4

    iget-byte v0, p0, Lq/D1;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/D1;->E()Z

    move-result v0

    if-nez v0, :cond_13

    iput-byte v2, p0, Lq/D1;->g:B

    return v2

    :cond_13
    invoke-virtual {p0}, Lq/D1;->D()Z

    move-result v0

    if-nez v0, :cond_1c

    iput-byte v2, p0, Lq/D1;->g:B

    return v2

    :cond_1c
    iput-byte v1, p0, Lq/D1;->g:B

    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->W:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/D1;->E()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/D1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    invoke-virtual {p0}, Lq/D1;->D()Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0x25

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/D1;->f:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_39
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

    sget-object v0, Lq/D1;->h:Lq/D1;

    return-object v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/D1;->F()Lq/C1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/D1;->h:Lq/D1;

    invoke-virtual {v0}, Lq/D1;->F()Lq/C1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/D1;->F()Lq/C1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->X:Lq/J2;

    const-class v1, Lq/D1;

    const-class v2, Lq/C1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
