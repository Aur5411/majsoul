.class public final Lq/A1;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/util/List;

.field public g:Ljava/io/Serializable;

.field public h:J

.field public i:J

.field public j:D

.field public k:Lq/B;

.field public l:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/A1;->f:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lq/A1;->g:Ljava/io/Serializable;

    sget-object v1, Lq/B;->c:Lq/B;

    iput-object v1, p0, Lq/A1;->k:Lq/B;

    iput-object v0, p0, Lq/A1;->l:Ljava/io/Serializable;

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

    sget-object v0, Lq/F1;->V:Lq/J2;

    const-class v1, Lq/E1;

    const-class v2, Lq/A1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/E1;
    .registers 6

    new-instance v0, Lq/E1;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const-string v1, ""

    iput-object v1, v0, Lq/E1;->f:Ljava/io/Serializable;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lq/E1;->g:J

    iput-wide v2, v0, Lq/E1;->h:J

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lq/E1;->i:D

    sget-object v2, Lq/B;->c:Lq/B;

    iput-object v2, v0, Lq/E1;->j:Lq/B;

    iput-object v1, v0, Lq/E1;->k:Ljava/io/Serializable;

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/E1;->l:B

    const/4 v1, 0x1

    iget v2, p0, Lq/A1;->e:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_30

    iget-object v2, p0, Lq/A1;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lq/A1;->f:Ljava/util/List;

    iget v2, p0, Lq/A1;->e:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lq/A1;->e:I

    :cond_30
    iget-object v2, p0, Lq/A1;->f:Ljava/util/List;

    iput-object v2, v0, Lq/E1;->e:Ljava/util/List;

    iget v2, p0, Lq/A1;->e:I

    if-eqz v2, :cond_79

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_41

    iget-object v3, p0, Lq/A1;->g:Ljava/io/Serializable;

    iput-object v3, v0, Lq/E1;->f:Ljava/io/Serializable;

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4c

    iget-wide v3, p0, Lq/A1;->h:J

    iput-wide v3, v0, Lq/E1;->g:J

    or-int/lit8 v1, v1, 0x2

    :cond_4c
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_56

    iget-wide v3, p0, Lq/A1;->i:J

    iput-wide v3, v0, Lq/E1;->h:J

    or-int/lit8 v1, v1, 0x4

    :cond_56
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_60

    iget-wide v3, p0, Lq/A1;->j:D

    iput-wide v3, v0, Lq/E1;->i:D

    or-int/lit8 v1, v1, 0x8

    :cond_60
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lq/A1;->k:Lq/B;

    iput-object v3, v0, Lq/E1;->j:Lq/B;

    or-int/lit8 v1, v1, 0x10

    :cond_6a
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_74

    iget-object v2, p0, Lq/A1;->l:Ljava/io/Serializable;

    iput-object v2, v0, Lq/E1;->k:Ljava/io/Serializable;

    or-int/lit8 v1, v1, 0x20

    :cond_74
    iget v2, v0, Lq/E1;->d:I

    or-int/2addr v1, v2

    iput v1, v0, Lq/E1;->d:I

    :cond_79
    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/E1;)V
    .registers 4

    sget-object v0, Lq/E1;->m:Lq/E1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lq/A1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lq/E1;->e:Ljava/util/List;

    iput-object v0, p0, Lq/A1;->f:Ljava/util/List;

    iget v0, p0, Lq/A1;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lq/A1;->e:I

    goto :goto_3c

    :cond_20
    iget v0, p0, Lq/A1;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/A1;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/A1;->f:Ljava/util/List;

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/A1;->e:I

    :cond_35
    iget-object v0, p0, Lq/A1;->f:Ljava/util/List;

    iget-object v1, p1, Lq/E1;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3c
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3f
    invoke-virtual {p1}, Lq/E1;->G()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lq/E1;->f:Ljava/io/Serializable;

    iput-object v0, p0, Lq/A1;->g:Ljava/io/Serializable;

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lq/A1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_52
    invoke-virtual {p1}, Lq/E1;->I()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-wide v0, p1, Lq/E1;->g:J

    iput-wide v0, p0, Lq/A1;->h:J

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lq/A1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_65
    invoke-virtual {p1}, Lq/E1;->H()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-wide v0, p1, Lq/E1;->h:J

    iput-wide v0, p0, Lq/A1;->i:J

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lq/A1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_78
    invoke-virtual {p1}, Lq/E1;->F()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-wide v0, p1, Lq/E1;->i:D

    iput-wide v0, p0, Lq/A1;->j:D

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lq/A1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_8b
    invoke-virtual {p1}, Lq/E1;->J()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p1, Lq/E1;->j:Lq/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lq/A1;->k:Lq/B;

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lq/A1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_a1
    invoke-virtual {p1}, Lq/E1;->E()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p1, Lq/E1;->k:Ljava/io/Serializable;

    iput-object v0, p0, Lq/A1;->l:Ljava/io/Serializable;

    iget v0, p0, Lq/A1;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lq/A1;->e:I

    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_b4
    iget-object p1, p1, Lq/K2;->c:Lq/W4;

    invoke-virtual {p0, p1}, Lq/t2;->J(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final Q(Lq/E;Lq/d2;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_b2

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    const/16 v3, 0x12

    if-eq v1, v3, :cond_87

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_79

    const/16 v3, 0x20

    if-eq v1, v3, :cond_6c

    const/16 v4, 0x28

    if-eq v1, v4, :cond_5f

    const/16 v4, 0x31

    if-eq v1, v4, :cond_52

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_46

    const/16 v3, 0x42

    if-eq v1, v3, :cond_35

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_33
    move v0, v2

    goto :goto_4

    :cond_35
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/A1;->l:Ljava/io/Serializable;

    iget v1, p0, Lq/A1;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lq/A1;->e:I

    goto :goto_4

    :catchall_42
    move-exception p1

    goto :goto_ae

    :catch_44
    move-exception p1

    goto :goto_a9

    :cond_46
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/A1;->k:Lq/B;

    iget v1, p0, Lq/A1;->e:I

    or-int/2addr v1, v3

    iput v1, p0, Lq/A1;->e:I

    goto :goto_4

    :cond_52
    invoke-virtual {p1}, Lq/E;->i()D

    move-result-wide v1

    iput-wide v1, p0, Lq/A1;->j:D

    iget v1, p0, Lq/A1;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lq/A1;->e:I

    goto :goto_4

    :cond_5f
    invoke-virtual {p1}, Lq/E;->p()J

    move-result-wide v1

    iput-wide v1, p0, Lq/A1;->i:J

    iget v1, p0, Lq/A1;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lq/A1;->e:I

    goto :goto_4

    :cond_6c
    invoke-virtual {p1}, Lq/E;->B()J

    move-result-wide v1

    iput-wide v1, p0, Lq/A1;->h:J

    iget v1, p0, Lq/A1;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lq/A1;->e:I

    goto :goto_4

    :cond_79
    invoke-virtual {p1}, Lq/E;->h()Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/A1;->g:Ljava/io/Serializable;

    iget v1, p0, Lq/A1;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lq/A1;->e:I

    goto/16 :goto_4

    :cond_87
    sget-object v1, Lq/D1;->i:Lq/B1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/D1;

    iget v3, p0, Lq/A1;->e:I

    and-int/2addr v3, v2

    if-nez v3, :cond_a2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lq/A1;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lq/A1;->f:Ljava/util/List;

    iget v3, p0, Lq/A1;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lq/A1;->e:I

    :cond_a2
    iget-object v2, p0, Lq/A1;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Lq/U2; {:try_start_6 .. :try_end_a7} :catch_44
    .catchall {:try_start_6 .. :try_end_a7} :catchall_42

    goto/16 :goto_4

    :goto_a9
    :try_start_a9
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_42

    :goto_ae
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_b2
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/A1;->O()Lq/E1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/A1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/A1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/A1;->O()Lq/E1;

    move-result-object v0

    invoke-virtual {v0}, Lq/E1;->h()Z

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

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/A1;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lq/A1;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/D1;

    invoke-virtual {v2}, Lq/D1;->h()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/E1;->m:Lq/E1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->U:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/A1;->O()Lq/E1;

    move-result-object v0

    invoke-virtual {v0}, Lq/E1;->h()Z

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

    invoke-virtual {p0}, Lq/A1;->O()Lq/E1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/E1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/E1;

    invoke-virtual {p0, p1}, Lq/A1;->P(Lq/E1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/A1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/E1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/E1;

    invoke-virtual {p0, p1}, Lq/A1;->P(Lq/E1;)V

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
