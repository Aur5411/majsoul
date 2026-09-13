.class public final Lq/z0;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/Serializable;

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/io/Serializable;

.field public k:Ljava/io/Serializable;

.field public l:Ljava/io/Serializable;

.field public m:I

.field public n:Ljava/io/Serializable;

.field public o:Lq/M0;

.field public p:Lq/q4;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const-string v0, ""

    iput-object v0, p0, Lq/z0;->f:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, p0, Lq/z0;->h:I

    iput v1, p0, Lq/z0;->i:I

    iput-object v0, p0, Lq/z0;->j:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->k:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->l:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->n:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final B(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->N(Lq/R1;Ljava/lang/Object;)V

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

    sget-object v0, Lq/F1;->p:Lq/J2;

    const-class v1, Lq/C0;

    const-class v2, Lq/z0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/C0;
    .registers 6

    new-instance v0, Lq/C0;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/C0;->e:Ljava/io/Serializable;

    const/4 v2, 0x0

    iput v2, v0, Lq/C0;->f:I

    const/4 v3, 0x1

    iput v3, v0, Lq/C0;->g:I

    iput v3, v0, Lq/C0;->h:I

    iput-object v1, v0, Lq/C0;->i:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->j:Ljava/io/Serializable;

    iput-object v1, v0, Lq/C0;->k:Ljava/io/Serializable;

    iput v2, v0, Lq/C0;->l:I

    iput-object v1, v0, Lq/C0;->m:Ljava/io/Serializable;

    iput-boolean v2, v0, Lq/C0;->o:Z

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/C0;->p:B

    iget v1, p0, Lq/z0;->e:I

    if-eqz v1, :cond_a1

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2d

    iget-object v2, p0, Lq/z0;->f:Ljava/io/Serializable;

    iput-object v2, v0, Lq/C0;->e:Ljava/io/Serializable;

    move v2, v3

    :cond_2d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_37

    iget v3, p0, Lq/z0;->g:I

    iput v3, v0, Lq/C0;->f:I

    or-int/lit8 v2, v2, 0x2

    :cond_37
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_41

    iget v3, p0, Lq/z0;->h:I

    iput v3, v0, Lq/C0;->g:I

    or-int/lit8 v2, v2, 0x4

    :cond_41
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4b

    iget v3, p0, Lq/z0;->i:I

    iput v3, v0, Lq/C0;->h:I

    or-int/lit8 v2, v2, 0x8

    :cond_4b
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_55

    iget-object v3, p0, Lq/z0;->j:Ljava/io/Serializable;

    iput-object v3, v0, Lq/C0;->i:Ljava/io/Serializable;

    or-int/lit8 v2, v2, 0x10

    :cond_55
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lq/z0;->k:Ljava/io/Serializable;

    iput-object v3, v0, Lq/C0;->j:Ljava/io/Serializable;

    or-int/lit8 v2, v2, 0x20

    :cond_5f
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_69

    iget-object v3, p0, Lq/z0;->l:Ljava/io/Serializable;

    iput-object v3, v0, Lq/C0;->k:Ljava/io/Serializable;

    or-int/lit8 v2, v2, 0x40

    :cond_69
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_73

    iget v3, p0, Lq/z0;->m:I

    iput v3, v0, Lq/C0;->l:I

    or-int/lit16 v2, v2, 0x80

    :cond_73
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lq/z0;->n:Ljava/io/Serializable;

    iput-object v3, v0, Lq/C0;->m:Ljava/io/Serializable;

    or-int/lit16 v2, v2, 0x100

    :cond_7d
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_92

    iget-object v3, p0, Lq/z0;->p:Lq/q4;

    if-nez v3, :cond_88

    iget-object v3, p0, Lq/z0;->o:Lq/M0;

    goto :goto_8e

    :cond_88
    invoke-virtual {v3}, Lq/q4;->a()Lq/c;

    move-result-object v3

    check-cast v3, Lq/M0;

    :goto_8e
    iput-object v3, v0, Lq/C0;->n:Lq/M0;

    or-int/lit16 v2, v2, 0x200

    :cond_92
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9c

    iget-boolean v1, p0, Lq/z0;->q:Z

    iput-boolean v1, v0, Lq/C0;->o:Z

    or-int/lit16 v2, v2, 0x400

    :cond_9c
    iget v1, v0, Lq/C0;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/C0;->d:I

    :cond_a1
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/C0;)V
    .registers 8

    sget-object v0, Lq/C0;->q:Lq/C0;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lq/C0;->M()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p1, Lq/C0;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->f:Ljava/io/Serializable;

    iget v0, p0, Lq/z0;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_18
    invoke-virtual {p1}, Lq/C0;->N()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2b

    iget v0, p1, Lq/C0;->f:I

    iput v0, p0, Lq/z0;->g:I

    iget v0, p0, Lq/z0;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_2b
    invoke-virtual {p1}, Lq/C0;->L()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    iget v0, p1, Lq/C0;->g:I

    if-eq v0, v1, :cond_45

    if-eq v0, v2, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    sget-object v0, Lq/A0;->b:Lq/A0;

    move-object v0, v3

    goto :goto_47

    :cond_3f
    sget-object v0, Lq/A0;->c:Lq/A0;

    goto :goto_47

    :cond_42
    sget-object v0, Lq/A0;->d:Lq/A0;

    goto :goto_47

    :cond_45
    sget-object v0, Lq/A0;->b:Lq/A0;

    :goto_47
    if-nez v0, :cond_4b

    sget-object v0, Lq/A0;->b:Lq/A0;

    :cond_4b
    iget v1, p0, Lq/z0;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/z0;->e:I

    iget v0, v0, Lq/A0;->a:I

    iput v0, p0, Lq/z0;->h:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_58
    invoke-virtual {p1}, Lq/C0;->R()Z

    move-result v0

    if-eqz v0, :cond_75

    iget v0, p1, Lq/C0;->h:I

    invoke-static {v0}, Lq/B0;->b(I)Lq/B0;

    move-result-object v0

    if-nez v0, :cond_68

    sget-object v0, Lq/B0;->b:Lq/B0;

    :cond_68
    iget v1, p0, Lq/z0;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/z0;->e:I

    iget v0, v0, Lq/B0;->a:I

    iput v0, p0, Lq/z0;->i:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_75
    invoke-virtual {p1}, Lq/C0;->S()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p1, Lq/C0;->i:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->j:Ljava/io/Serializable;

    iget v0, p0, Lq/z0;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_88
    invoke-virtual {p1}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p1, Lq/C0;->j:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->k:Ljava/io/Serializable;

    iget v0, p0, Lq/z0;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_9b
    invoke-virtual {p1}, Lq/C0;->I()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p1, Lq/C0;->k:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->l:Ljava/io/Serializable;

    iget v0, p0, Lq/z0;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_ae
    invoke-virtual {p1}, Lq/C0;->O()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget v0, p1, Lq/C0;->l:I

    iput v0, p0, Lq/z0;->m:I

    iget v0, p0, Lq/z0;->e:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_c1
    invoke-virtual {p1}, Lq/C0;->K()Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p1, Lq/C0;->m:Ljava/io/Serializable;

    iput-object v0, p0, Lq/z0;->n:Ljava/io/Serializable;

    iget v0, p0, Lq/z0;->e:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_d4
    invoke-virtual {p1}, Lq/C0;->P()Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-virtual {p1}, Lq/C0;->G()Lq/M0;

    move-result-object v0

    iget-object v1, p0, Lq/z0;->p:Lq/q4;

    if-nez v1, :cond_129

    iget v1, p0, Lq/z0;->e:I

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_126

    iget-object v2, p0, Lq/z0;->o:Lq/M0;

    if-eqz v2, :cond_126

    sget-object v4, Lq/M0;->t:Lq/M0;

    if-eq v2, v4, :cond_126

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v1, p0, Lq/z0;->p:Lq/q4;

    if-nez v1, :cond_11a

    new-instance v2, Lq/q4;

    if-nez v1, :cond_106

    iget-object v1, p0, Lq/z0;->o:Lq/M0;

    if-nez v1, :cond_104

    goto :goto_10d

    :cond_104
    move-object v4, v1

    goto :goto_10d

    :cond_106
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lq/M0;

    :goto_10d
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v1

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v4, v1, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/z0;->p:Lq/q4;

    iput-object v3, p0, Lq/z0;->o:Lq/M0;

    :cond_11a
    iget-object v1, p0, Lq/z0;->p:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    check-cast v1, Lq/E0;

    invoke-virtual {v1, v0}, Lq/E0;->W(Lq/M0;)V

    goto :goto_12c

    :cond_126
    iput-object v0, p0, Lq/z0;->o:Lq/M0;

    goto :goto_12c

    :cond_129
    invoke-virtual {v1, v0}, Lq/q4;->d(Lq/c;)V

    :goto_12c
    iget-object v0, p0, Lq/z0;->o:Lq/M0;

    if-eqz v0, :cond_139

    iget v0, p0, Lq/z0;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_139
    invoke-virtual {p1}, Lq/C0;->Q()Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-boolean v0, p1, Lq/C0;->o:Z

    iput-boolean v0, p0, Lq/z0;->q:Z

    iget v0, p0, Lq/z0;->e:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lq/z0;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_14c
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final Q(Lq/E;Lq/d2;)V
    .registers 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_109

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_10e

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :sswitch_1a
    move v0, v4

    goto :goto_4

    :sswitch_1c
    invoke-virtual {p1}, Lq/E;->g()Z

    move-result v1

    iput-boolean v1, p0, Lq/z0;->q:Z

    iget v1, p0, Lq/z0;->e:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lq/z0;->e:I

    goto :goto_4

    :catchall_29
    move-exception p1

    goto/16 :goto_105

    :catch_2c
    move-exception p1

    goto/16 :goto_100

    :sswitch_2f
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/z0;->n:Ljava/io/Serializable;

    iget v1, p0, Lq/z0;->e:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lq/z0;->e:I

    goto :goto_4

    :sswitch_3c
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v1

    iput v1, p0, Lq/z0;->m:I

    iget v1, p0, Lq/z0;->e:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lq/z0;->e:I

    goto :goto_4

    :sswitch_49
    iget-object v1, p0, Lq/z0;->p:Lq/q4;

    if-nez v1, :cond_6b

    new-instance v2, Lq/q4;

    if-nez v1, :cond_58

    iget-object v1, p0, Lq/z0;->o:Lq/M0;

    if-nez v1, :cond_5e

    sget-object v1, Lq/M0;->t:Lq/M0;

    goto :goto_5e

    :cond_58
    invoke-virtual {v1}, Lq/q4;->c()Lq/c;

    move-result-object v1

    check-cast v1, Lq/M0;

    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lq/t2;->H()Lq/s2;

    move-result-object v4

    iget-boolean v5, p0, Lq/t2;->c:Z

    invoke-direct {v2, v1, v4, v5}, Lq/q4;-><init>(Lq/K2;Lq/s2;Z)V

    iput-object v2, p0, Lq/z0;->p:Lq/q4;

    iput-object v3, p0, Lq/z0;->o:Lq/M0;

    :cond_6b
    iget-object v1, p0, Lq/z0;->p:Lq/q4;

    invoke-virtual {v1}, Lq/q4;->b()Lq/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    iget v1, p0, Lq/z0;->e:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lq/z0;->e:I

    goto :goto_4

    :sswitch_7b
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/z0;->l:Ljava/io/Serializable;

    iget v1, p0, Lq/z0;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lq/z0;->e:I

    goto/16 :goto_4

    :sswitch_89
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/z0;->j:Ljava/io/Serializable;

    iget v1, p0, Lq/z0;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lq/z0;->e:I

    goto/16 :goto_4

    :sswitch_97
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    invoke-static {v1}, Lq/B0;->b(I)Lq/B0;

    move-result-object v2

    if-nez v2, :cond_a7

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_a7
    iput v1, p0, Lq/z0;->i:I

    iget v1, p0, Lq/z0;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/z0;->e:I

    goto/16 :goto_4

    :sswitch_b1
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eq v1, v4, :cond_c5

    if-eq v1, v2, :cond_c2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_bf

    sget-object v2, Lq/A0;->b:Lq/A0;

    goto :goto_c7

    :cond_bf
    sget-object v3, Lq/A0;->c:Lq/A0;

    goto :goto_c7

    :cond_c2
    sget-object v3, Lq/A0;->d:Lq/A0;

    goto :goto_c7

    :cond_c5
    sget-object v3, Lq/A0;->b:Lq/A0;

    :goto_c7
    const/4 v2, 0x4

    if-nez v3, :cond_cf

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_cf
    iput v1, p0, Lq/z0;->h:I

    iget v1, p0, Lq/z0;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/z0;->e:I

    goto/16 :goto_4

    :sswitch_d8
    invoke-virtual {p1}, Lq/E;->o()I

    move-result v1

    iput v1, p0, Lq/z0;->g:I

    iget v1, p0, Lq/z0;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/z0;->e:I

    goto/16 :goto_4

    :sswitch_e5
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/z0;->k:Ljava/io/Serializable;

    iget v1, p0, Lq/z0;->e:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lq/z0;->e:I

    goto/16 :goto_4

    :sswitch_f3
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/z0;->f:Ljava/io/Serializable;

    iget v1, p0, Lq/z0;->e:I

    or-int/2addr v1, v4

    iput v1, p0, Lq/z0;->e:I
    :try_end_fe
    .catch Lq/U2; {:try_start_6 .. :try_end_fe} :catch_2c
    .catchall {:try_start_6 .. :try_end_fe} :catchall_29

    goto/16 :goto_4

    :goto_100
    :try_start_100
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_105
    .catchall {:try_start_100 .. :try_end_105} :catchall_29

    :goto_105
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_109
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    nop

    :sswitch_data_10e
    .sparse-switch
        0x0 -> :sswitch_1a
        0xa -> :sswitch_f3
        0x12 -> :sswitch_e5
        0x18 -> :sswitch_d8
        0x20 -> :sswitch_b1
        0x28 -> :sswitch_97
        0x32 -> :sswitch_89
        0x3a -> :sswitch_7b
        0x42 -> :sswitch_49
        0x48 -> :sswitch_3c
        0x52 -> :sswitch_2f
        0x88 -> :sswitch_1c
    .end sparse-switch
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/z0;->O()Lq/C0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/z0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/z0;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/z0;->O()Lq/C0;

    move-result-object v0

    invoke-virtual {v0}, Lq/C0;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final h()Z
    .registers 2

    iget v0, p0, Lq/z0;->e:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lq/z0;->p:Lq/q4;

    if-nez v0, :cond_11

    iget-object v0, p0, Lq/z0;->o:Lq/M0;

    if-nez v0, :cond_17

    sget-object v0, Lq/M0;->t:Lq/M0;

    goto :goto_17

    :cond_11
    invoke-virtual {v0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    check-cast v0, Lq/M0;

    :cond_17
    :goto_17
    invoke-virtual {v0}, Lq/M0;->h()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    return v0

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/C0;->q:Lq/C0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->o:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/z0;->O()Lq/C0;

    move-result-object v0

    invoke-virtual {v0}, Lq/C0;->h()Z

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

    invoke-virtual {p0}, Lq/z0;->O()Lq/C0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/C0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/C0;

    invoke-virtual {p0, p1}, Lq/z0;->P(Lq/C0;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/z0;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/C0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/C0;

    invoke-virtual {p0, p1}, Lq/z0;->P(Lq/C0;)V

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
