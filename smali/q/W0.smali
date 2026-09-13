.class public final Lq/W0;
.super Lq/w2;
.source "SourceFile"


# static fields
.field public static final C:Lq/W0;


# instance fields
.field public A:Ljava/util/List;

.field public B:B

.field public e:I

.field public volatile f:Ljava/io/Serializable;

.field public volatile g:Ljava/io/Serializable;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public volatile l:Ljava/io/Serializable;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public volatile s:Ljava/io/Serializable;

.field public volatile t:Ljava/io/Serializable;

.field public volatile u:Ljava/io/Serializable;

.field public volatile v:Ljava/io/Serializable;

.field public volatile w:Ljava/io/Serializable;

.field public volatile x:Ljava/io/Serializable;

.field public volatile y:Ljava/io/Serializable;

.field public z:Lq/x0;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq/W0;

    invoke-direct {v0}, Lq/w2;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lq/W0;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->g:Ljava/io/Serializable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lq/W0;->h:Z

    iput-boolean v2, v0, Lq/W0;->i:Z

    iput-boolean v2, v0, Lq/W0;->j:Z

    const/4 v3, 0x1

    iput v3, v0, Lq/W0;->k:I

    iput-object v1, v0, Lq/W0;->l:Ljava/io/Serializable;

    iput-boolean v2, v0, Lq/W0;->m:Z

    iput-boolean v2, v0, Lq/W0;->n:Z

    iput-boolean v2, v0, Lq/W0;->o:Z

    iput-boolean v2, v0, Lq/W0;->p:Z

    iput-boolean v2, v0, Lq/W0;->q:Z

    iput-boolean v3, v0, Lq/W0;->r:Z

    iput-object v1, v0, Lq/W0;->s:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->t:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->u:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->v:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->w:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->x:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->y:Ljava/io/Serializable;

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/W0;->B:B

    iput-object v1, v0, Lq/W0;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->g:Ljava/io/Serializable;

    iput v3, v0, Lq/W0;->k:I

    iput-object v1, v0, Lq/W0;->l:Ljava/io/Serializable;

    iput-boolean v3, v0, Lq/W0;->r:Z

    iput-object v1, v0, Lq/W0;->s:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->t:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->u:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->v:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->w:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->x:Ljava/io/Serializable;

    iput-object v1, v0, Lq/W0;->y:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/W0;->A:Ljava/util/List;

    sput-object v0, Lq/W0;->C:Lq/W0;

    new-instance v0, Lq/T0;

    return-void
.end method


# virtual methods
.method public final A(Lq/s2;)Lq/a;
    .registers 4

    new-instance v0, Lq/U0;

    invoke-direct {v0, p1}, Lq/t2;-><init>(Lq/s2;)V

    const-string p1, ""

    iput-object p1, v0, Lq/U0;->g:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->h:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, v0, Lq/U0;->l:I

    iput-object p1, v0, Lq/U0;->m:Ljava/io/Serializable;

    iput-boolean v1, v0, Lq/U0;->s:Z

    iput-object p1, v0, Lq/U0;->t:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->u:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->v:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->w:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->x:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->y:Ljava/io/Serializable;

    iput-object p1, v0, Lq/U0;->z:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lq/U0;->C:Ljava/util/List;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->t:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->t:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final E()Lq/x0;
    .registers 2

    iget-object v0, p0, Lq/W0;->z:Lq/x0;

    if-nez v0, :cond_6

    sget-object v0, Lq/x0;->m:Lq/x0;

    :cond_6
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->l:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->l:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final G()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->g:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->g:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final H()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->f:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->f:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final I()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->s:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->s:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final J()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->v:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->v:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final K()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->x:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->x:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final L()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->w:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->w:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final M()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->y:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->y:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final N()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lq/W0;->u:Ljava/io/Serializable;

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

    iput-object v1, p0, Lq/W0;->u:Ljava/io/Serializable;

    :cond_17
    return-object v1
.end method

.method public final O()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final P()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final Q()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final R()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final S()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final T()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final U()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final V()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final W()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final X()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final Y()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final Z()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final a0()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final b0()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final c(Lq/F;)V
    .registers 7

    new-instance v0, Lq/v2;

    invoke-direct {v0, p0}, Lq/v2;-><init>(Lq/w2;)V

    iget v1, p0, Lq/W0;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    iget-object v1, p0, Lq/W0;->f:Ljava/io/Serializable;

    invoke-static {p1, v2, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_10
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lq/W0;->g:Ljava/io/Serializable;

    invoke-static {p1, v2, v1}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_1d
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2a

    iget v1, p0, Lq/W0;->k:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v1}, Lq/F;->H(II)V

    :cond_2a
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_37

    const/16 v1, 0xa

    iget-boolean v3, p0, Lq/W0;->h:Z

    invoke-virtual {p1, v1, v3}, Lq/F;->C(IZ)V

    :cond_37
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_44

    const/16 v1, 0xb

    iget-object v3, p0, Lq/W0;->l:Ljava/io/Serializable;

    invoke-static {p1, v1, v3}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_44
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x10

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lq/W0;->m:Z

    invoke-virtual {p1, v3, v1}, Lq/F;->C(IZ)V

    :cond_51
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_5e

    const/16 v1, 0x11

    iget-boolean v4, p0, Lq/W0;->n:Z

    invoke-virtual {p1, v1, v4}, Lq/F;->C(IZ)V

    :cond_5e
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_6b

    const/16 v1, 0x12

    iget-boolean v4, p0, Lq/W0;->o:Z

    invoke-virtual {p1, v1, v4}, Lq/F;->C(IZ)V

    :cond_6b
    iget v1, p0, Lq/W0;->e:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_77

    const/16 v1, 0x14

    iget-boolean v2, p0, Lq/W0;->i:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_77
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_84

    const/16 v1, 0x17

    iget-boolean v2, p0, Lq/W0;->q:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_84
    iget v1, p0, Lq/W0;->e:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_90

    const/16 v1, 0x1b

    iget-boolean v2, p0, Lq/W0;->j:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_90
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_9d

    const/16 v1, 0x1f

    iget-boolean v2, p0, Lq/W0;->r:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_9d
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_aa

    const/16 v1, 0x24

    iget-object v2, p0, Lq/W0;->s:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_aa
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_b7

    const/16 v1, 0x25

    iget-object v2, p0, Lq/W0;->t:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_b7
    iget v1, p0, Lq/W0;->e:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c6

    const/16 v1, 0x27

    iget-object v2, p0, Lq/W0;->u:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_c6
    iget v1, p0, Lq/W0;->e:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d4

    const/16 v1, 0x28

    iget-object v2, p0, Lq/W0;->v:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_d4
    iget v1, p0, Lq/W0;->e:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e2

    const/16 v1, 0x29

    iget-object v2, p0, Lq/W0;->w:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_e2
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_ef

    const/16 v1, 0x2a

    iget-boolean v2, p0, Lq/W0;->p:Z

    invoke-virtual {p1, v1, v2}, Lq/F;->C(IZ)V

    :cond_ef
    iget v1, p0, Lq/W0;->e:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_fd

    const/16 v1, 0x2c

    iget-object v2, p0, Lq/W0;->x:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_fd
    iget v1, p0, Lq/W0;->e:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10b

    const/16 v1, 0x2d

    iget-object v2, p0, Lq/W0;->y:Ljava/io/Serializable;

    invoke-static {p1, v1, v2}, Lq/K2;->B(Lq/F;ILjava/lang/Object;)V

    :cond_10b
    iget v1, p0, Lq/W0;->e:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11b

    const/16 v1, 0x32

    invoke-virtual {p0}, Lq/W0;->E()Lq/x0;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lq/F;->J(ILq/Q3;)V

    :cond_11b
    const/4 v1, 0x0

    :goto_11c
    iget-object v2, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_134

    iget-object v2, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lq/F;->J(ILq/Q3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    :cond_134
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lq/v2;->n(ILq/F;)V

    iget-object v0, p0, Lq/K2;->c:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->c(Lq/F;)V

    return-void
.end method

.method public final c0()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final d0()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e()I
    .registers 6

    iget v0, p0, Lq/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lq/W0;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lq/W0;->f:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_24

    iget-object v1, p0, Lq/W0;->g:Ljava/io/Serializable;

    invoke-static {v3, v1}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_33

    const/16 v1, 0x9

    iget v4, p0, Lq/W0;->k:I

    invoke-static {v1, v4}, Lq/F;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_40

    const/16 v1, 0xa

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    iget v1, p0, Lq/W0;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4f

    const/16 v1, 0xb

    iget-object v4, p0, Lq/W0;->l:Ljava/io/Serializable;

    invoke-static {v1, v4}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4f
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x10

    if-eqz v1, :cond_5c

    invoke-static {v4}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5c
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_69

    const/16 v1, 0x11

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_69
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_76

    const/16 v1, 0x12

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_76
    iget v1, p0, Lq/W0;->e:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_82

    const/16 v1, 0x14

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_82
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8f

    const/16 v1, 0x17

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8f
    iget v1, p0, Lq/W0;->e:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_9b

    const/16 v1, 0x1b

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9b
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_a8

    const/16 v1, 0x1f

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a8
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_b7

    const/16 v1, 0x24

    iget-object v3, p0, Lq/W0;->s:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b7
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_c6

    const/16 v1, 0x25

    iget-object v3, p0, Lq/W0;->t:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c6
    iget v1, p0, Lq/W0;->e:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_d7

    const/16 v1, 0x27

    iget-object v3, p0, Lq/W0;->u:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d7
    iget v1, p0, Lq/W0;->e:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_e7

    const/16 v1, 0x28

    iget-object v3, p0, Lq/W0;->v:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e7
    iget v1, p0, Lq/W0;->e:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f7

    const/16 v1, 0x29

    iget-object v3, p0, Lq/W0;->w:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f7
    iget v1, p0, Lq/W0;->e:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_104

    const/16 v1, 0x2a

    invoke-static {v1}, Lq/F;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_104
    iget v1, p0, Lq/W0;->e:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_114

    const/16 v1, 0x2c

    iget-object v3, p0, Lq/W0;->x:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_114
    iget v1, p0, Lq/W0;->e:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_124

    const/16 v1, 0x2d

    iget-object v3, p0, Lq/W0;->y:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lq/K2;->v(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_124
    iget v1, p0, Lq/W0;->e:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-eqz v1, :cond_136

    const/16 v1, 0x32

    invoke-virtual {p0}, Lq/W0;->E()Lq/x0;

    move-result-object v3

    invoke-static {v1, v3}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_136
    :goto_136
    iget-object v1, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_150

    iget-object v1, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/Q3;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lq/F;->u(ILq/Q3;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_136

    :cond_150
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

.method public final e0()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lq/W0;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lq/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lq/W0;

    invoke-virtual {p0}, Lq/W0;->Y()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->Y()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lq/W0;->Y()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lq/W0;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    invoke-virtual {p0}, Lq/W0;->X()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->X()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p0}, Lq/W0;->X()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lq/W0;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    :cond_50
    invoke-virtual {p0}, Lq/W0;->W()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->W()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    :cond_5b
    invoke-virtual {p0}, Lq/W0;->W()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lq/W0;->h:Z

    iget-boolean v2, p1, Lq/W0;->h:Z

    if-eq v1, v2, :cond_68

    return v3

    :cond_68
    invoke-virtual {p0}, Lq/W0;->U()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->U()Z

    move-result v2

    if-eq v1, v2, :cond_73

    return v3

    :cond_73
    invoke-virtual {p0}, Lq/W0;->U()Z

    move-result v1

    if-eqz v1, :cond_80

    iget-boolean v1, p0, Lq/W0;->i:Z

    iget-boolean v2, p1, Lq/W0;->i:Z

    if-eq v1, v2, :cond_80

    return v3

    :cond_80
    invoke-virtual {p0}, Lq/W0;->Z()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->Z()Z

    move-result v2

    if-eq v1, v2, :cond_8b

    return v3

    :cond_8b
    invoke-virtual {p0}, Lq/W0;->Z()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-boolean v1, p0, Lq/W0;->j:Z

    iget-boolean v2, p1, Lq/W0;->j:Z

    if-eq v1, v2, :cond_98

    return v3

    :cond_98
    invoke-virtual {p0}, Lq/W0;->b0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->b0()Z

    move-result v2

    if-eq v1, v2, :cond_a3

    return v3

    :cond_a3
    invoke-virtual {p0}, Lq/W0;->b0()Z

    move-result v1

    if-eqz v1, :cond_b0

    iget v1, p0, Lq/W0;->k:I

    iget v2, p1, Lq/W0;->k:I

    if-eq v1, v2, :cond_b0

    return v3

    :cond_b0
    invoke-virtual {p0}, Lq/W0;->T()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->T()Z

    move-result v2

    if-eq v1, v2, :cond_bb

    return v3

    :cond_bb
    invoke-virtual {p0}, Lq/W0;->T()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-virtual {p0}, Lq/W0;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v3

    :cond_d0
    invoke-virtual {p0}, Lq/W0;->P()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->P()Z

    move-result v2

    if-eq v1, v2, :cond_db

    return v3

    :cond_db
    invoke-virtual {p0}, Lq/W0;->P()Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-boolean v1, p0, Lq/W0;->m:Z

    iget-boolean v2, p1, Lq/W0;->m:Z

    if-eq v1, v2, :cond_e8

    return v3

    :cond_e8
    invoke-virtual {p0}, Lq/W0;->V()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->V()Z

    move-result v2

    if-eq v1, v2, :cond_f3

    return v3

    :cond_f3
    invoke-virtual {p0}, Lq/W0;->V()Z

    move-result v1

    if-eqz v1, :cond_100

    iget-boolean v1, p0, Lq/W0;->n:Z

    iget-boolean v2, p1, Lq/W0;->n:Z

    if-eq v1, v2, :cond_100

    return v3

    :cond_100
    invoke-virtual {p0}, Lq/W0;->g0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->g0()Z

    move-result v2

    if-eq v1, v2, :cond_10b

    return v3

    :cond_10b
    invoke-virtual {p0}, Lq/W0;->g0()Z

    move-result v1

    if-eqz v1, :cond_118

    iget-boolean v1, p0, Lq/W0;->o:Z

    iget-boolean v2, p1, Lq/W0;->o:Z

    if-eq v1, v2, :cond_118

    return v3

    :cond_118
    invoke-virtual {p0}, Lq/W0;->d0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->d0()Z

    move-result v2

    if-eq v1, v2, :cond_123

    return v3

    :cond_123
    invoke-virtual {p0}, Lq/W0;->d0()Z

    move-result v1

    if-eqz v1, :cond_130

    iget-boolean v1, p0, Lq/W0;->p:Z

    iget-boolean v2, p1, Lq/W0;->p:Z

    if-eq v1, v2, :cond_130

    return v3

    :cond_130
    invoke-virtual {p0}, Lq/W0;->R()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->R()Z

    move-result v2

    if-eq v1, v2, :cond_13b

    return v3

    :cond_13b
    invoke-virtual {p0}, Lq/W0;->R()Z

    move-result v1

    if-eqz v1, :cond_148

    iget-boolean v1, p0, Lq/W0;->q:Z

    iget-boolean v2, p1, Lq/W0;->q:Z

    if-eq v1, v2, :cond_148

    return v3

    :cond_148
    invoke-virtual {p0}, Lq/W0;->O()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->O()Z

    move-result v2

    if-eq v1, v2, :cond_153

    return v3

    :cond_153
    invoke-virtual {p0}, Lq/W0;->O()Z

    move-result v1

    if-eqz v1, :cond_160

    iget-boolean v1, p0, Lq/W0;->r:Z

    iget-boolean v2, p1, Lq/W0;->r:Z

    if-eq v1, v2, :cond_160

    return v3

    :cond_160
    invoke-virtual {p0}, Lq/W0;->a0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->a0()Z

    move-result v2

    if-eq v1, v2, :cond_16b

    return v3

    :cond_16b
    invoke-virtual {p0}, Lq/W0;->a0()Z

    move-result v1

    if-eqz v1, :cond_180

    invoke-virtual {p0}, Lq/W0;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_180

    return v3

    :cond_180
    invoke-virtual {p0}, Lq/W0;->Q()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->Q()Z

    move-result v2

    if-eq v1, v2, :cond_18b

    return v3

    :cond_18b
    invoke-virtual {p0}, Lq/W0;->Q()Z

    move-result v1

    if-eqz v1, :cond_1a0

    invoke-virtual {p0}, Lq/W0;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a0

    return v3

    :cond_1a0
    invoke-virtual {p0}, Lq/W0;->i0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->i0()Z

    move-result v2

    if-eq v1, v2, :cond_1ab

    return v3

    :cond_1ab
    invoke-virtual {p0}, Lq/W0;->i0()Z

    move-result v1

    if-eqz v1, :cond_1c0

    invoke-virtual {p0}, Lq/W0;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c0

    return v3

    :cond_1c0
    invoke-virtual {p0}, Lq/W0;->c0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->c0()Z

    move-result v2

    if-eq v1, v2, :cond_1cb

    return v3

    :cond_1cb
    invoke-virtual {p0}, Lq/W0;->c0()Z

    move-result v1

    if-eqz v1, :cond_1e0

    invoke-virtual {p0}, Lq/W0;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e0

    return v3

    :cond_1e0
    invoke-virtual {p0}, Lq/W0;->f0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->f0()Z

    move-result v2

    if-eq v1, v2, :cond_1eb

    return v3

    :cond_1eb
    invoke-virtual {p0}, Lq/W0;->f0()Z

    move-result v1

    if-eqz v1, :cond_200

    invoke-virtual {p0}, Lq/W0;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_200

    return v3

    :cond_200
    invoke-virtual {p0}, Lq/W0;->e0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->e0()Z

    move-result v2

    if-eq v1, v2, :cond_20b

    return v3

    :cond_20b
    invoke-virtual {p0}, Lq/W0;->e0()Z

    move-result v1

    if-eqz v1, :cond_220

    invoke-virtual {p0}, Lq/W0;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_220

    return v3

    :cond_220
    invoke-virtual {p0}, Lq/W0;->h0()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->h0()Z

    move-result v2

    if-eq v1, v2, :cond_22b

    return v3

    :cond_22b
    invoke-virtual {p0}, Lq/W0;->h0()Z

    move-result v1

    if-eqz v1, :cond_240

    invoke-virtual {p0}, Lq/W0;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_240

    return v3

    :cond_240
    invoke-virtual {p0}, Lq/W0;->S()Z

    move-result v1

    invoke-virtual {p1}, Lq/W0;->S()Z

    move-result v2

    if-eq v1, v2, :cond_24b

    return v3

    :cond_24b
    invoke-virtual {p0}, Lq/W0;->S()Z

    move-result v1

    if-eqz v1, :cond_260

    invoke-virtual {p0}, Lq/W0;->E()Lq/x0;

    move-result-object v1

    invoke-virtual {p1}, Lq/W0;->E()Lq/x0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/x0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_260

    return v3

    :cond_260
    iget-object v1, p0, Lq/W0;->A:Ljava/util/List;

    iget-object v2, p1, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26b

    return v3

    :cond_26b
    iget-object v1, p0, Lq/K2;->c:Lq/W4;

    iget-object v2, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {v1, v2}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_276

    return v3

    :cond_276
    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lq/w2;->d:Lq/g2;

    invoke-virtual {p1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_289

    return v3

    :cond_289
    return v0
.end method

.method public final f0()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final g0()Z
    .registers 2

    iget v0, p0, Lq/W0;->e:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final h()Z
    .registers 5

    iget-byte v0, p0, Lq/W0;->B:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lq/W0;->S()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lq/W0;->E()Lq/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq/x0;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lq/W0;->B:B

    return v2

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v3, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/E1;

    invoke-virtual {v3}, Lq/E1;->h()Z

    move-result v3

    if-nez v3, :cond_37

    iput-byte v2, p0, Lq/W0;->B:B

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->j()Z

    move-result v0

    if-nez v0, :cond_45

    iput-byte v2, p0, Lq/W0;->B:B

    return v2

    :cond_45
    iput-byte v1, p0, Lq/W0;->B:B

    return v1
.end method

.method public final h0()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lq/c;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-object v0, Lq/F1;->C:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lq/W0;->Y()Z

    move-result v1

    const/16 v2, 0x35

    if-eqz v1, :cond_25

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    invoke-virtual {p0}, Lq/W0;->X()Z

    move-result v1

    if-eqz v1, :cond_3c

    const/16 v1, 0x25

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    invoke-virtual {p0}, Lq/W0;->W()Z

    move-result v1

    if-eqz v1, :cond_51

    const/16 v1, 0x25

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->h:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    invoke-virtual {p0}, Lq/W0;->U()Z

    move-result v1

    if-eqz v1, :cond_66

    const/16 v1, 0x25

    const/16 v3, 0x14

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->i:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    invoke-virtual {p0}, Lq/W0;->Z()Z

    move-result v1

    if-eqz v1, :cond_7b

    const/16 v1, 0x25

    const/16 v3, 0x1b

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->j:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    invoke-virtual {p0}, Lq/W0;->b0()Z

    move-result v1

    if-eqz v1, :cond_8c

    const/16 v1, 0x25

    const/16 v3, 0x9

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget v1, p0, Lq/W0;->k:I

    add-int/2addr v0, v1

    :cond_8c
    invoke-virtual {p0}, Lq/W0;->T()Z

    move-result v1

    if-eqz v1, :cond_a3

    const/16 v1, 0x25

    const/16 v3, 0xb

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a3
    invoke-virtual {p0}, Lq/W0;->P()Z

    move-result v1

    if-eqz v1, :cond_b8

    const/16 v1, 0x25

    const/16 v3, 0x10

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->m:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b8
    invoke-virtual {p0}, Lq/W0;->V()Z

    move-result v1

    if-eqz v1, :cond_cd

    const/16 v1, 0x25

    const/16 v3, 0x11

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->n:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_cd
    invoke-virtual {p0}, Lq/W0;->g0()Z

    move-result v1

    if-eqz v1, :cond_e2

    const/16 v1, 0x25

    const/16 v3, 0x12

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->o:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e2
    invoke-virtual {p0}, Lq/W0;->d0()Z

    move-result v1

    if-eqz v1, :cond_f7

    const/16 v1, 0x25

    const/16 v3, 0x2a

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->p:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f7
    invoke-virtual {p0}, Lq/W0;->R()Z

    move-result v1

    if-eqz v1, :cond_10c

    const/16 v1, 0x25

    const/16 v3, 0x17

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->q:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10c
    invoke-virtual {p0}, Lq/W0;->O()Z

    move-result v1

    if-eqz v1, :cond_121

    const/16 v1, 0x25

    const/16 v3, 0x1f

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-boolean v1, p0, Lq/W0;->r:Z

    invoke-static {v1}, Lq/S2;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_121
    invoke-virtual {p0}, Lq/W0;->a0()Z

    move-result v1

    if-eqz v1, :cond_138

    const/16 v1, 0x25

    const/16 v3, 0x24

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_138
    invoke-virtual {p0}, Lq/W0;->Q()Z

    move-result v1

    if-eqz v1, :cond_14f

    const/16 v1, 0x25

    const/16 v3, 0x25

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14f
    invoke-virtual {p0}, Lq/W0;->i0()Z

    move-result v1

    if-eqz v1, :cond_166

    const/16 v1, 0x25

    const/16 v3, 0x27

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_166
    invoke-virtual {p0}, Lq/W0;->c0()Z

    move-result v1

    if-eqz v1, :cond_17d

    const/16 v1, 0x25

    const/16 v3, 0x28

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_17d
    invoke-virtual {p0}, Lq/W0;->f0()Z

    move-result v1

    if-eqz v1, :cond_194

    const/16 v1, 0x25

    const/16 v3, 0x29

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_194
    invoke-virtual {p0}, Lq/W0;->e0()Z

    move-result v1

    if-eqz v1, :cond_1ab

    const/16 v1, 0x25

    const/16 v3, 0x2c

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1ab
    invoke-virtual {p0}, Lq/W0;->h0()Z

    move-result v1

    if-eqz v1, :cond_1c2

    const/16 v1, 0x25

    const/16 v3, 0x2d

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c2
    invoke-virtual {p0}, Lq/W0;->S()Z

    move-result v1

    if-eqz v1, :cond_1d9

    const/16 v1, 0x25

    const/16 v3, 0x32

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    invoke-virtual {p0}, Lq/W0;->E()Lq/x0;

    move-result-object v1

    invoke-virtual {v1}, Lq/x0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d9
    iget-object v1, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f0

    const/16 v1, 0x25

    const/16 v3, 0x3e7

    invoke-static {v0, v1, v3, v2}, Lq/I1;->d(IIII)I

    move-result v0

    iget-object v1, p0, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f0
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

    sget-object v0, Lq/W0;->C:Lq/W0;

    return-object v0
.end method

.method public final i0()Z
    .registers 3

    iget v0, p0, Lq/W0;->e:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final bridge synthetic j()Lq/P3;
    .registers 2

    invoke-virtual {p0}, Lq/W0;->j0()Lq/U0;

    move-result-object v0

    return-object v0
.end method

.method public final j0()Lq/U0;
    .registers 2

    sget-object v0, Lq/W0;->C:Lq/W0;

    if-ne p0, v0, :cond_a

    new-instance v0, Lq/U0;

    invoke-direct {v0}, Lq/U0;-><init>()V

    goto :goto_12

    :cond_a
    new-instance v0, Lq/U0;

    invoke-direct {v0}, Lq/U0;-><init>()V

    invoke-virtual {v0, p0}, Lq/U0;->V(Lq/W0;)V

    :goto_12
    return-object v0
.end method

.method public final p()Lq/a;
    .registers 2

    sget-object v0, Lq/W0;->C:Lq/W0;

    invoke-virtual {v0}, Lq/W0;->j0()Lq/U0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lq/a;
    .registers 2

    invoke-virtual {p0}, Lq/W0;->j0()Lq/U0;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->D:Lq/J2;

    const-class v1, Lq/W0;

    const-class v2, Lq/U0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
