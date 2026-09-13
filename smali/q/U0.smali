.class public final Lq/U0;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public A:Lq/x0;

.field public B:Lq/q4;

.field public C:Ljava/util/List;

.field public f:I

.field public g:Ljava/io/Serializable;

.field public h:Ljava/io/Serializable;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/io/Serializable;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/io/Serializable;

.field public u:Ljava/io/Serializable;

.field public v:Ljava/io/Serializable;

.field public w:Ljava/io/Serializable;

.field public x:Ljava/io/Serializable;

.field public y:Ljava/io/Serializable;

.field public z:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/U0;->g:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->h:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, p0, Lq/U0;->l:I

    iput-object v0, p0, Lq/U0;->m:Ljava/io/Serializable;

    iput-boolean v1, p0, Lq/U0;->s:Z

    iput-object v0, p0, Lq/U0;->t:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->u:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->v:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->w:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->x:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->y:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->z:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/U0;->C:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final B(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->S(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final D(Lq/W4;)Lq/a;
    .registers 2

    iput-object p1, p0, Lq/t2;->d:Lq/R3;

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final I()Lq/J2;
    .registers 4

    sget-object v0, Lq/F1;->D:Lq/J2;

    const-class v1, Lq/W0;

    const-class v2, Lq/U0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/W0;
    .registers 6

    new-instance v0, Lq/W0;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

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

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/W0;->B:B

    iget v1, p0, Lq/U0;->f:I

    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lq/U0;->C:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->C:Ljava/util/List;

    iget v1, p0, Lq/U0;->f:I

    const v4, -0x200001

    and-int/2addr v1, v4

    iput v1, p0, Lq/U0;->f:I

    :cond_4b
    iget-object v1, p0, Lq/U0;->C:Ljava/util/List;

    iput-object v1, v0, Lq/W0;->A:Ljava/util/List;

    iget v1, p0, Lq/U0;->f:I

    if-eqz v1, :cond_13a

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_5c

    iget-object v2, p0, Lq/U0;->g:Ljava/io/Serializable;

    iput-object v2, v0, Lq/W0;->f:Ljava/io/Serializable;

    move v2, v3

    :cond_5c
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_66

    iget-object v3, p0, Lq/U0;->h:Ljava/io/Serializable;

    iput-object v3, v0, Lq/W0;->g:Ljava/io/Serializable;

    or-int/lit8 v2, v2, 0x2

    :cond_66
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lq/U0;->i:Z

    iput-boolean v3, v0, Lq/W0;->h:Z

    or-int/lit8 v2, v2, 0x4

    :cond_70
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_7a

    iget-boolean v3, p0, Lq/U0;->j:Z

    iput-boolean v3, v0, Lq/W0;->i:Z

    or-int/lit8 v2, v2, 0x8

    :cond_7a
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_84

    iget-boolean v3, p0, Lq/U0;->k:Z

    iput-boolean v3, v0, Lq/W0;->j:Z

    or-int/lit8 v2, v2, 0x10

    :cond_84
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_8e

    iget v3, p0, Lq/U0;->l:I

    iput v3, v0, Lq/W0;->k:I

    or-int/lit8 v2, v2, 0x20

    :cond_8e
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_98

    iget-object v3, p0, Lq/U0;->m:Ljava/io/Serializable;

    iput-object v3, v0, Lq/W0;->l:Ljava/io/Serializable;

    or-int/lit8 v2, v2, 0x40

    :cond_98
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_a2

    iget-boolean v3, p0, Lq/U0;->n:Z

    iput-boolean v3, v0, Lq/W0;->m:Z

    or-int/lit16 v2, v2, 0x80

    :cond_a2
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Lq/U0;->o:Z

    iput-boolean v3, v0, Lq/W0;->n:Z

    or-int/lit16 v2, v2, 0x100

    :cond_ac
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_b6

    iget-boolean v3, p0, Lq/U0;->p:Z

    iput-boolean v3, v0, Lq/W0;->o:Z

    or-int/lit16 v2, v2, 0x200

    :cond_b6
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_c0

    iget-boolean v3, p0, Lq/U0;->q:Z

    iput-boolean v3, v0, Lq/W0;->p:Z

    or-int/lit16 v2, v2, 0x400

    :cond_c0
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_ca

    iget-boolean v3, p0, Lq/U0;->r:Z

    iput-boolean v3, v0, Lq/W0;->q:Z

    or-int/lit16 v2, v2, 0x800

    :cond_ca
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_d4

    iget-boolean v3, p0, Lq/U0;->s:Z

    iput-boolean v3, v0, Lq/W0;->r:Z

    or-int/lit16 v2, v2, 0x1000

    :cond_d4
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_de

    iget-object v3, p0, Lq/U0;->t:Ljava/io/Serializable;

    iput-object v3, v0, Lq/W0;->s:Ljava/io/Serializable;

    or-int/lit16 v2, v2, 0x2000

    :cond_de
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e8

    iget-object v3, p0, Lq/U0;->u:Ljava/io/Serializable;

    iput-object v3, v0, Lq/W0;->t:Ljava/io/Serializable;

    or-int/lit16 v2, v2, 0x4000

    :cond_e8
    const v3, 0x8000

    and-int v4, v1, v3

    if-eqz v4, :cond_f4

    iget-object v4, p0, Lq/U0;->v:Ljava/io/Serializable;

    iput-object v4, v0, Lq/W0;->u:Ljava/io/Serializable;

    or-int/2addr v2, v3

    :cond_f4
    const/high16 v3, 0x10000

    and-int v4, v1, v3

    if-eqz v4, :cond_ff

    iget-object v4, p0, Lq/U0;->w:Ljava/io/Serializable;

    iput-object v4, v0, Lq/W0;->v:Ljava/io/Serializable;

    or-int/2addr v2, v3

    :cond_ff
    const/high16 v3, 0x20000

    and-int v4, v1, v3

    if-eqz v4, :cond_10a

    iget-object v4, p0, Lq/U0;->x:Ljava/io/Serializable;

    iput-object v4, v0, Lq/W0;->w:Ljava/io/Serializable;

    or-int/2addr v2, v3

    :cond_10a
    const/high16 v3, 0x40000

    and-int v4, v1, v3

    if-eqz v4, :cond_115

    iget-object v4, p0, Lq/U0;->y:Ljava/io/Serializable;

    iput-object v4, v0, Lq/W0;->x:Ljava/io/Serializable;

    or-int/2addr v2, v3

    :cond_115
    const/high16 v3, 0x80000

    and-int v4, v1, v3

    if-eqz v4, :cond_120

    iget-object v4, p0, Lq/U0;->z:Ljava/io/Serializable;

    iput-object v4, v0, Lq/W0;->y:Ljava/io/Serializable;

    or-int/2addr v2, v3

    :cond_120
    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-eqz v1, :cond_135

    iget-object v1, p0, Lq/U0;->B:Lq/q4;

    if-nez v1, :cond_12c

    iget-object v1, p0, Lq/U0;->A:Lq/x0;

    goto :goto_132

    :cond_12c
    invoke-virtual {v1}, Lq/q4;->a()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :goto_132
    iput-object v1, v0, Lq/W0;->z:Lq/x0;

    or-int/2addr v2, v3

    :cond_135
    iget v1, v0, Lq/W0;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/W0;->e:I

    :cond_13a
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V(Lq/W0;)V
    .registers 9

    sget-object v0, Lq/W0;->C:Lq/W0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/W0;->Y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/W0;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->g:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/W0;->X()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lq/W0;->g:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->h:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    or-int/2addr v0, v2

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    invoke-virtual {p1}, Lq/W0;->W()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-boolean v0, p1, Lq/W0;->h:Z

    iput-boolean v0, p0, Lq/U0;->i:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3e
    invoke-virtual {p1}, Lq/W0;->U()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p1, Lq/W0;->i:Z

    iput-boolean v0, p0, Lq/U0;->j:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_51
    invoke-virtual {p1}, Lq/W0;->Z()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p1, Lq/W0;->j:Z

    iput-boolean v0, p0, Lq/U0;->k:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_64
    invoke-virtual {p1}, Lq/W0;->b0()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_91

    iget v0, p1, Lq/W0;->k:I

    if-eq v0, v1, :cond_7e

    if-eq v0, v2, :cond_7b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_78

    sget-object v0, Lq/V0;->b:Lq/V0;

    move-object v0, v3

    goto :goto_80

    :cond_78
    sget-object v0, Lq/V0;->d:Lq/V0;

    goto :goto_80

    :cond_7b
    sget-object v0, Lq/V0;->c:Lq/V0;

    goto :goto_80

    :cond_7e
    sget-object v0, Lq/V0;->b:Lq/V0;

    :goto_80
    if-nez v0, :cond_84

    sget-object v0, Lq/V0;->b:Lq/V0;

    :cond_84
    iget v1, p0, Lq/U0;->f:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lq/U0;->f:I

    iget v0, v0, Lq/V0;->a:I

    iput v0, p0, Lq/U0;->l:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_91
    invoke-virtual {p1}, Lq/W0;->T()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p1, Lq/W0;->l:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->m:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_a4
    invoke-virtual {p1}, Lq/W0;->P()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-boolean v0, p1, Lq/W0;->m:Z

    iput-boolean v0, p0, Lq/U0;->n:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_b7
    invoke-virtual {p1}, Lq/W0;->V()Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-boolean v0, p1, Lq/W0;->n:Z

    iput-boolean v0, p0, Lq/U0;->o:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_ca
    invoke-virtual {p1}, Lq/W0;->g0()Z

    move-result v0

    if-eqz v0, :cond_dd

    iget-boolean v0, p1, Lq/W0;->o:Z

    iput-boolean v0, p0, Lq/U0;->p:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_dd
    invoke-virtual {p1}, Lq/W0;->d0()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-boolean v0, p1, Lq/W0;->p:Z

    iput-boolean v0, p0, Lq/U0;->q:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_f0
    invoke-virtual {p1}, Lq/W0;->R()Z

    move-result v0

    if-eqz v0, :cond_103

    iget-boolean v0, p1, Lq/W0;->q:Z

    iput-boolean v0, p0, Lq/U0;->r:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_103
    invoke-virtual {p1}, Lq/W0;->O()Z

    move-result v0

    if-eqz v0, :cond_116

    iget-boolean v0, p1, Lq/W0;->r:Z

    iput-boolean v0, p0, Lq/U0;->s:Z

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_116
    invoke-virtual {p1}, Lq/W0;->a0()Z

    move-result v0

    if-eqz v0, :cond_129

    iget-object v0, p1, Lq/W0;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->t:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_129
    invoke-virtual {p1}, Lq/W0;->Q()Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-object v0, p1, Lq/W0;->t:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->u:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_13c
    invoke-virtual {p1}, Lq/W0;->i0()Z

    move-result v0

    if-eqz v0, :cond_151

    iget-object v0, p1, Lq/W0;->u:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->v:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_151
    invoke-virtual {p1}, Lq/W0;->c0()Z

    move-result v0

    if-eqz v0, :cond_165

    iget-object v0, p1, Lq/W0;->v:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->w:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_165
    invoke-virtual {p1}, Lq/W0;->f0()Z

    move-result v0

    if-eqz v0, :cond_179

    iget-object v0, p1, Lq/W0;->w:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->x:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_179
    invoke-virtual {p1}, Lq/W0;->e0()Z

    move-result v0

    if-eqz v0, :cond_18d

    iget-object v0, p1, Lq/W0;->x:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->y:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18d
    invoke-virtual {p1}, Lq/W0;->h0()Z

    move-result v0

    if-eqz v0, :cond_1a1

    iget-object v0, p1, Lq/W0;->y:Ljava/io/Serializable;

    iput-object v0, p0, Lq/U0;->z:Ljava/io/Serializable;

    iget v0, p0, Lq/U0;->f:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_1a1
    invoke-virtual {p1}, Lq/W0;->S()Z

    move-result v0

    if-eqz v0, :cond_206

    invoke-virtual {p1}, Lq/W0;->E()Lq/x0;

    move-result-object v0

    iget-object v1, p0, Lq/U0;->B:Lq/q4;

    const/high16 v2, 0x100000

    if-nez v1, :cond_1f7

    iget v1, p0, Lq/U0;->f:I

    and-int v4, v1, v2

    if-eqz v4, :cond_1f4

    iget-object v4, p0, Lq/U0;->A:Lq/x0;

    if-eqz v4, :cond_1f4

    sget-object v5, Lq/x0;->m:Lq/x0;

    if-eq v4, v5, :cond_1f4

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/U0;->B:Lq/q4;

    if-nez v1, :cond_1e8

    new-instance v4, Lq/q4;

    if-nez v1, :cond_1d4

    iget-object v1, p0, Lq/U0;->A:Lq/x0;

    if-nez v1, :cond_1d2

    goto :goto_1db

    :cond_1d2
    move-object v5, v1

    goto :goto_1db

    :cond_1d4
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lq/x0;

    :goto_1db
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v6, p0, Lq/t2;->c:Z

    invoke-direct {v4, v5, v1, v6}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v4, p0, Lq/U0;->B:Lq/q4;

    iput-object v3, p0, Lq/U0;->A:Lq/x0;

    :cond_1e8
    iget-object v1, p0, Lq/U0;->B:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/q0;

    invoke-virtual {v1, v0}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_1fa

    :cond_1f4
    iput-object v0, p0, Lq/U0;->A:Lq/x0;

    goto :goto_1fa

    :cond_1f7
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_1fa
    iget-object v0, p0, Lq/U0;->A:Lq/x0;

    if-eqz v0, :cond_206

    iget v0, p0, Lq/U0;->f:I

    or-int/2addr v0, v2

    iput v0, p0, Lq/U0;->f:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_206
    const v0, -0x200001

    iget-object v1, p1, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_242

    iget-object v1, p0, Lq/U0;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_223

    iget-object v1, p1, Lq/W0;->A:Ljava/util/List;

    iput-object v1, p0, Lq/U0;->C:Ljava/util/List;

    iget v1, p0, Lq/U0;->f:I

    and-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    goto :goto_23f

    :cond_223
    iget v0, p0, Lq/U0;->f:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_238

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/U0;->C:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/U0;->C:Ljava/util/List;

    iget v0, p0, Lq/U0;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/U0;->f:I

    :cond_238
    iget-object v0, p0, Lq/U0;->C:Ljava/util/List;

    iget-object v1, p1, Lq/W0;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_23f
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_242
    invoke-virtual {p0, p1}, Lq/u2;->Q(Lq/w2;)V

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final W(Lq/E;Lq/d2;)V
    .registers 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_1b3

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_1b8

    invoke-virtual {p0, p1, p2, v1}, Lq/u2;->R(Lq/E;Lq/d2;I)Z

    move-result v1

    if-nez v1, :cond_4

    :sswitch_16
    move v0, v4

    goto :goto_4

    :catchall_18
    move-exception p1

    goto/16 :goto_1af

    :catch_1b
    move-exception p1

    goto/16 :goto_1aa

    :sswitch_1e
    sget-object v1, Lq/E1;->n:Lq/z1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/E1;

    iget v2, p0, Lq/U0;->f:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_3b

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lq/U0;->C:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lq/U0;->C:Ljava/util/List;

    iget v2, p0, Lq/U0;->f:I

    or-int/2addr v2, v3

    iput v2, p0, Lq/U0;->f:I

    :cond_3b
    iget-object v2, p0, Lq/U0;->C:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_41
    iget-object v1, p0, Lq/U0;->B:Lq/q4;

    if-nez v1, :cond_63

    new-instance v2, Lq/q4;

    if-nez v1, :cond_50

    iget-object v1, p0, Lq/U0;->A:Lq/x0;

    if-nez v1, :cond_56

    sget-object v1, Lq/x0;->m:Lq/x0;

    goto :goto_56

    :cond_50
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/x0;

    :cond_56
    :goto_56
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v4

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v4, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/U0;->B:Lq/q4;

    iput-object v3, p0, Lq/U0;->A:Lq/x0;

    :cond_63
    iget-object v1, p0, Lq/U0;->B:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/U0;->f:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto :goto_4

    :sswitch_74
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->z:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto :goto_4

    :sswitch_82
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->y:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_91
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->q:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_9f
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->x:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_ae
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->w:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_bd
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->v:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_cd
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->u:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_db
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->t:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_e9
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->s:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_f7
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->k:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_105
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->r:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_113
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->j:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_121
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->p:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_12f
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->o:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_13d
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->n:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_14b
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->m:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_159
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/U0;->i:Z

    iget v1, p0, Lq/U0;->f:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_167
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eq v1, v4, :cond_17b

    if-eq v1, v2, :cond_178

    const/4 v2, 0x3

    if-eq v1, v2, :cond_175

    sget-object v2, Lq/V0;->b:Lq/V0;

    goto :goto_17d

    :cond_175
    sget-object v3, Lq/V0;->d:Lq/V0;

    goto :goto_17d

    :cond_178
    sget-object v3, Lq/V0;->c:Lq/V0;

    goto :goto_17d

    :cond_17b
    sget-object v3, Lq/V0;->b:Lq/V0;

    :goto_17d
    if-nez v3, :cond_186

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_186
    iput v1, p0, Lq/U0;->l:I

    iget v1, p0, Lq/U0;->f:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_190
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->h:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/U0;->f:I

    goto/16 :goto_4

    :sswitch_19d
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/U0;->g:Ljava/io/Serializable;

    iget v1, p0, Lq/U0;->f:I

    or-int/2addr v1, v4

    iput v1, p0, Lq/U0;->f:I
    :try_end_1a8
    .catch Lq/U2; {:try_start_6 .. :try_end_1a8} :catch_1b
    .catchall {:try_start_6 .. :try_end_1a8} :catchall_18

    goto/16 :goto_4

    :goto_1aa
    :try_start_1aa
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_18

    :goto_1af
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_1b3
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    nop

    :sswitch_data_1b8
    .sparse-switch
        0x0 -> :sswitch_16
        0xa -> :sswitch_19d
        0x42 -> :sswitch_190
        0x48 -> :sswitch_167
        0x50 -> :sswitch_159
        0x5a -> :sswitch_14b
        0x80 -> :sswitch_13d
        0x88 -> :sswitch_12f
        0x90 -> :sswitch_121
        0xa0 -> :sswitch_113
        0xb8 -> :sswitch_105
        0xd8 -> :sswitch_f7
        0xf8 -> :sswitch_e9
        0x122 -> :sswitch_db
        0x12a -> :sswitch_cd
        0x13a -> :sswitch_bd
        0x142 -> :sswitch_ae
        0x14a -> :sswitch_9f
        0x150 -> :sswitch_91
        0x162 -> :sswitch_82
        0x16a -> :sswitch_74
        0x192 -> :sswitch_41
        0x1f3a -> :sswitch_1e
    .end sparse-switch
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/U0;->U()Lq/W0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/U0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/U0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/U0;->U()Lq/W0;

    move-result-object v0

    invoke-virtual {v0}, Lq/W0;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final h()Z
    .registers 4

    iget v0, p0, Lq/U0;->f:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lq/U0;->B:Lq/q4;

    if-nez v0, :cond_13

    iget-object v0, p0, Lq/U0;->A:Lq/x0;

    if-nez v0, :cond_19

    sget-object v0, Lq/x0;->m:Lq/x0;

    goto :goto_19

    :cond_13
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/x0;

    :cond_19
    :goto_19
    invoke-virtual {v0}, Lq/x0;->h()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    :cond_20
    move v0, v1

    :goto_21
    iget-object v2, p0, Lq/U0;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lq/U0;->C:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/E1;

    invoke-virtual {v2}, Lq/E1;->h()Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3b
    invoke-virtual {p0}, Lq/u2;->P()Z

    move-result v0

    if-nez v0, :cond_42

    return v1

    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/W0;->C:Lq/W0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->C:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/U0;->U()Lq/W0;

    move-result-object v0

    invoke-virtual {v0}, Lq/W0;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic p()Lq/c;
    .registers 2

    invoke-virtual {p0}, Lq/U0;->U()Lq/W0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/W0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/W0;

    invoke-virtual {p0, p1}, Lq/U0;->V(Lq/W0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/U0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/W0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/W0;

    invoke-virtual {p0, p1}, Lq/U0;->V(Lq/W0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final y(Lq/W4;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    return-object p0
.end method
