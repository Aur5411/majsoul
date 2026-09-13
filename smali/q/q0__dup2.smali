.class public final Lq/q0;
.super Lq/u2;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    const/4 v0, 0x0

    iput v0, p0, Lq/q0;->g:I

    iput v0, p0, Lq/q0;->h:I

    iput v0, p0, Lq/q0;->i:I

    iput v0, p0, Lq/q0;->j:I

    iput v0, p0, Lq/q0;->k:I

    iput v0, p0, Lq/q0;->l:I

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

    sget-object v0, Lq/F1;->Z:Lq/J2;

    const-class v1, Lq/x0;

    const-class v2, Lq/q0;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final U()Lq/x0;
    .registers 5

    new-instance v0, Lq/x0;

    invoke-direct {v0, p0}, Lq/w2;-><init>(Lq/u2;)V

    const/4 v1, 0x0

    iput v1, v0, Lq/x0;->f:I

    iput v1, v0, Lq/x0;->g:I

    iput v1, v0, Lq/x0;->h:I

    iput v1, v0, Lq/x0;->i:I

    iput v1, v0, Lq/x0;->j:I

    iput v1, v0, Lq/x0;->k:I

    const/4 v2, -0x1

    iput-byte v2, v0, Lq/x0;->l:B

    iget v2, p0, Lq/q0;->f:I

    if-eqz v2, :cond_59

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_22

    iget v1, p0, Lq/q0;->g:I

    iput v1, v0, Lq/x0;->f:I

    const/4 v1, 0x1

    :cond_22
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2c

    iget v3, p0, Lq/q0;->h:I

    iput v3, v0, Lq/x0;->g:I

    or-int/lit8 v1, v1, 0x2

    :cond_2c
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_36

    iget v3, p0, Lq/q0;->i:I

    iput v3, v0, Lq/x0;->h:I

    or-int/lit8 v1, v1, 0x4

    :cond_36
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_40

    iget v3, p0, Lq/q0;->j:I

    iput v3, v0, Lq/x0;->i:I

    or-int/lit8 v1, v1, 0x8

    :cond_40
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4a

    iget v3, p0, Lq/q0;->k:I

    iput v3, v0, Lq/x0;->j:I

    or-int/lit8 v1, v1, 0x10

    :cond_4a
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_54

    iget v2, p0, Lq/q0;->l:I

    iput v2, v0, Lq/x0;->k:I

    or-int/lit8 v1, v1, 0x20

    :cond_54
    iget v2, v0, Lq/x0;->e:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/x0;->e:I

    :cond_59
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final V(Lq/x0;)Lq/q0;
    .registers 7

    sget-object v0, Lq/x0;->m:Lq/x0;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lq/x0;->E()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_38

    iget v0, p1, Lq/x0;->f:I

    if-eqz v0, :cond_26

    if-eq v0, v3, :cond_23

    if-eq v0, v2, :cond_20

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1d

    sget-object v0, Lq/s0;->b:Lq/s0;

    move-object v0, v1

    goto :goto_28

    :cond_1d
    sget-object v0, Lq/s0;->e:Lq/s0;

    goto :goto_28

    :cond_20
    sget-object v0, Lq/s0;->d:Lq/s0;

    goto :goto_28

    :cond_23
    sget-object v0, Lq/s0;->c:Lq/s0;

    goto :goto_28

    :cond_26
    sget-object v0, Lq/s0;->b:Lq/s0;

    :goto_28
    if-nez v0, :cond_2c

    sget-object v0, Lq/s0;->b:Lq/s0;

    :cond_2c
    iget v4, p0, Lq/q0;->f:I

    or-int/2addr v4, v3

    iput v4, p0, Lq/q0;->f:I

    iget v0, v0, Lq/s0;->a:I

    iput v0, p0, Lq/q0;->g:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_38
    invoke-virtual {p1}, Lq/x0;->D()Z

    move-result v0

    if-eqz v0, :cond_62

    iget v0, p1, Lq/x0;->g:I

    if-eqz v0, :cond_50

    if-eq v0, v3, :cond_4d

    if-eq v0, v2, :cond_4a

    sget-object v0, Lq/r0;->b:Lq/r0;

    move-object v0, v1

    goto :goto_52

    :cond_4a
    sget-object v0, Lq/r0;->d:Lq/r0;

    goto :goto_52

    :cond_4d
    sget-object v0, Lq/r0;->c:Lq/r0;

    goto :goto_52

    :cond_50
    sget-object v0, Lq/r0;->b:Lq/r0;

    :goto_52
    if-nez v0, :cond_56

    sget-object v0, Lq/r0;->b:Lq/r0;

    :cond_56
    iget v4, p0, Lq/q0;->f:I

    or-int/2addr v4, v2

    iput v4, p0, Lq/q0;->f:I

    iget v0, v0, Lq/r0;->a:I

    iput v0, p0, Lq/q0;->h:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_62
    invoke-virtual {p1}, Lq/x0;->H()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget v0, p1, Lq/x0;->h:I

    if-eqz v0, :cond_7a

    if-eq v0, v3, :cond_77

    if-eq v0, v2, :cond_74

    sget-object v0, Lq/v0;->b:Lq/v0;

    move-object v0, v1

    goto :goto_7c

    :cond_74
    sget-object v0, Lq/v0;->d:Lq/v0;

    goto :goto_7c

    :cond_77
    sget-object v0, Lq/v0;->c:Lq/v0;

    goto :goto_7c

    :cond_7a
    sget-object v0, Lq/v0;->b:Lq/v0;

    :goto_7c
    if-nez v0, :cond_80

    sget-object v0, Lq/v0;->b:Lq/v0;

    :cond_80
    iget v4, p0, Lq/q0;->f:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lq/q0;->f:I

    iget v0, v0, Lq/v0;->a:I

    iput v0, p0, Lq/q0;->i:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_8d
    invoke-virtual {p1}, Lq/x0;->I()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget v0, p1, Lq/x0;->i:I

    if-eqz v0, :cond_a5

    if-eq v0, v3, :cond_a2

    if-eq v0, v2, :cond_9f

    sget-object v0, Lq/w0;->b:Lq/w0;

    move-object v0, v1

    goto :goto_a7

    :cond_9f
    sget-object v0, Lq/w0;->d:Lq/w0;

    goto :goto_a7

    :cond_a2
    sget-object v0, Lq/w0;->c:Lq/w0;

    goto :goto_a7

    :cond_a5
    sget-object v0, Lq/w0;->b:Lq/w0;

    :goto_a7
    if-nez v0, :cond_ab

    sget-object v0, Lq/w0;->b:Lq/w0;

    :cond_ab
    iget v4, p0, Lq/q0;->f:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lq/q0;->f:I

    iget v0, v0, Lq/w0;->a:I

    iput v0, p0, Lq/q0;->j:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_b8
    invoke-virtual {p1}, Lq/x0;->G()Z

    move-result v0

    if-eqz v0, :cond_e3

    iget v0, p1, Lq/x0;->j:I

    if-eqz v0, :cond_d0

    if-eq v0, v3, :cond_cd

    if-eq v0, v2, :cond_ca

    sget-object v0, Lq/u0;->b:Lq/u0;

    move-object v0, v1

    goto :goto_d2

    :cond_ca
    sget-object v0, Lq/u0;->d:Lq/u0;

    goto :goto_d2

    :cond_cd
    sget-object v0, Lq/u0;->c:Lq/u0;

    goto :goto_d2

    :cond_d0
    sget-object v0, Lq/u0;->b:Lq/u0;

    :goto_d2
    if-nez v0, :cond_d6

    sget-object v0, Lq/u0;->b:Lq/u0;

    :cond_d6
    iget v4, p0, Lq/q0;->f:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lq/q0;->f:I

    iget v0, v0, Lq/u0;->a:I

    iput v0, p0, Lq/q0;->k:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_e3
    invoke-virtual {p1}, Lq/x0;->F()Z

    move-result v0

    if-eqz v0, :cond_10d

    iget v0, p1, Lq/x0;->k:I

    if-eqz v0, :cond_fa

    if-eq v0, v3, :cond_f7

    if-eq v0, v2, :cond_f4

    sget-object v0, Lq/t0;->b:Lq/t0;

    goto :goto_fc

    :cond_f4
    sget-object v1, Lq/t0;->d:Lq/t0;

    goto :goto_fc

    :cond_f7
    sget-object v1, Lq/t0;->c:Lq/t0;

    goto :goto_fc

    :cond_fa
    sget-object v1, Lq/t0;->b:Lq/t0;

    :goto_fc
    if-nez v1, :cond_100

    sget-object v1, Lq/t0;->b:Lq/t0;

    :cond_100
    iget v0, p0, Lq/q0;->f:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/q0;->f:I

    iget v0, v1, Lq/t0;->a:I

    iput v0, p0, Lq/q0;->l:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_10d
    invoke-virtual {p0, p1}, Lq/u2;->Q(Lq/w2;)V

    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-object p0
.end method

.method public final W(Lq/E;Lq/d2;)V
    .registers 13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_121

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-eq v1, v6, :cond_ee

    const/16 v7, 0x10

    if-eq v1, v7, :cond_c9

    const/16 v8, 0x18

    const/4 v9, 0x4

    if-eq v1, v8, :cond_a4

    const/16 v3, 0x20

    if-eq v1, v3, :cond_7f

    const/16 v6, 0x28

    if-eq v1, v6, :cond_5b

    const/16 v6, 0x30

    if-eq v1, v6, :cond_37

    invoke-virtual {p0, p1, p2, v1}, Lq/u2;->R(Lq/E;Lq/d2;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2f
    move v0, v2

    goto :goto_4

    :catchall_31
    move-exception p1

    goto/16 :goto_11d

    :catch_34
    move-exception p1

    goto/16 :goto_118

    :cond_37
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_4a

    if-eq v1, v2, :cond_47

    if-eq v1, v5, :cond_44

    sget-object v2, Lq/t0;->b:Lq/t0;

    goto :goto_4c

    :cond_44
    sget-object v4, Lq/t0;->d:Lq/t0;

    goto :goto_4c

    :cond_47
    sget-object v4, Lq/t0;->c:Lq/t0;

    goto :goto_4c

    :cond_4a
    sget-object v4, Lq/t0;->b:Lq/t0;

    :goto_4c
    if-nez v4, :cond_53

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto :goto_4

    :cond_53
    iput v1, p0, Lq/q0;->l:I

    iget v1, p0, Lq/q0;->f:I

    or-int/2addr v1, v3

    iput v1, p0, Lq/q0;->f:I

    goto :goto_4

    :cond_5b
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_6e

    if-eq v1, v2, :cond_6b

    if-eq v1, v5, :cond_68

    sget-object v2, Lq/u0;->b:Lq/u0;

    goto :goto_70

    :cond_68
    sget-object v4, Lq/u0;->d:Lq/u0;

    goto :goto_70

    :cond_6b
    sget-object v4, Lq/u0;->c:Lq/u0;

    goto :goto_70

    :cond_6e
    sget-object v4, Lq/u0;->b:Lq/u0;

    :goto_70
    if-nez v4, :cond_77

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto :goto_4

    :cond_77
    iput v1, p0, Lq/q0;->k:I

    iget v1, p0, Lq/q0;->f:I

    or-int/2addr v1, v7

    iput v1, p0, Lq/q0;->f:I

    goto :goto_4

    :cond_7f
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_92

    if-eq v1, v2, :cond_8f

    if-eq v1, v5, :cond_8c

    sget-object v2, Lq/w0;->b:Lq/w0;

    goto :goto_94

    :cond_8c
    sget-object v4, Lq/w0;->d:Lq/w0;

    goto :goto_94

    :cond_8f
    sget-object v4, Lq/w0;->c:Lq/w0;

    goto :goto_94

    :cond_92
    sget-object v4, Lq/w0;->b:Lq/w0;

    :goto_94
    if-nez v4, :cond_9b

    invoke-virtual {p0, v9, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_9b
    iput v1, p0, Lq/q0;->j:I

    iget v1, p0, Lq/q0;->f:I

    or-int/2addr v1, v6

    iput v1, p0, Lq/q0;->f:I

    goto/16 :goto_4

    :cond_a4
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_b7

    if-eq v1, v2, :cond_b4

    if-eq v1, v5, :cond_b1

    sget-object v2, Lq/v0;->b:Lq/v0;

    goto :goto_b9

    :cond_b1
    sget-object v4, Lq/v0;->d:Lq/v0;

    goto :goto_b9

    :cond_b4
    sget-object v4, Lq/v0;->c:Lq/v0;

    goto :goto_b9

    :cond_b7
    sget-object v4, Lq/v0;->b:Lq/v0;

    :goto_b9
    if-nez v4, :cond_c0

    invoke-virtual {p0, v3, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_c0
    iput v1, p0, Lq/q0;->i:I

    iget v1, p0, Lq/q0;->f:I

    or-int/2addr v1, v9

    iput v1, p0, Lq/q0;->f:I

    goto/16 :goto_4

    :cond_c9
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_dc

    if-eq v1, v2, :cond_d9

    if-eq v1, v5, :cond_d6

    sget-object v2, Lq/r0;->b:Lq/r0;

    goto :goto_de

    :cond_d6
    sget-object v4, Lq/r0;->d:Lq/r0;

    goto :goto_de

    :cond_d9
    sget-object v4, Lq/r0;->c:Lq/r0;

    goto :goto_de

    :cond_dc
    sget-object v4, Lq/r0;->b:Lq/r0;

    :goto_de
    if-nez v4, :cond_e5

    invoke-virtual {p0, v5, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_e5
    iput v1, p0, Lq/q0;->h:I

    iget v1, p0, Lq/q0;->f:I

    or-int/2addr v1, v5

    iput v1, p0, Lq/q0;->f:I

    goto/16 :goto_4

    :cond_ee
    invoke-virtual {p1}, Lq/E;->j()I

    move-result v1

    if-eqz v1, :cond_106

    if-eq v1, v2, :cond_103

    if-eq v1, v5, :cond_100

    if-eq v1, v3, :cond_fd

    sget-object v3, Lq/s0;->b:Lq/s0;

    goto :goto_108

    :cond_fd
    sget-object v4, Lq/s0;->e:Lq/s0;

    goto :goto_108

    :cond_100
    sget-object v4, Lq/s0;->d:Lq/s0;

    goto :goto_108

    :cond_103
    sget-object v4, Lq/s0;->c:Lq/s0;

    goto :goto_108

    :cond_106
    sget-object v4, Lq/s0;->b:Lq/s0;

    :goto_108
    if-nez v4, :cond_10f

    invoke-virtual {p0, v2, v1}, Lq/t2;->K(II)V

    goto/16 :goto_4

    :cond_10f
    iput v1, p0, Lq/q0;->g:I

    iget v1, p0, Lq/q0;->f:I

    or-int/2addr v1, v2

    iput v1, p0, Lq/q0;->f:I
    :try_end_116
    .catch Lq/U2; {:try_start_6 .. :try_end_116} :catch_34
    .catchall {:try_start_6 .. :try_end_116} :catchall_31

    goto/16 :goto_4

    :goto_118
    :try_start_118
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_11d
    .catchall {:try_start_118 .. :try_end_11d} :catchall_31

    :goto_11d
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_121
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/q0;->U()Lq/x0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/q0;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/q0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/q0;->U()Lq/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq/x0;->h()Z

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

    invoke-virtual {p0}, Lq/u2;->P()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/x0;->m:Lq/x0;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->Y:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u2;->O(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/q0;->U()Lq/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq/x0;->h()Z

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

    invoke-virtual {p0}, Lq/q0;->U()Lq/x0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/x0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/x0;

    invoke-virtual {p0, p1}, Lq/q0;->V(Lq/x0;)Lq/q0;

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/q0;->W(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/x0;

    if-eqz v0, :cond_a

    check-cast p1, Lq/x0;

    invoke-virtual {p0, p1}, Lq/q0;->V(Lq/x0;)Lq/q0;

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
