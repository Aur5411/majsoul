.class public final Lq/u1;
.super Lq/t2;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq/t2;-><init>(Lq/s2;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/u1;->f:Ljava/util/List;

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

    sget-object v0, Lq/F1;->b0:Lq/J2;

    const-class v1, Lq/y1;

    const-class v2, Lq/u1;

    invoke-virtual {v0, v1, v2}, Lq/J2;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final O()Lq/y1;
    .registers 3

    new-instance v0, Lq/y1;

    invoke-direct {v0, p0}, Lq/K2;-><init>(Lq/t2;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lq/y1;->e:B

    iget v1, p0, Lq/u1;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lq/u1;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/u1;->f:Ljava/util/List;

    iget v1, p0, Lq/u1;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lq/u1;->e:I

    :cond_1c
    iget-object v1, p0, Lq/u1;->f:Ljava/util/List;

    iput-object v1, v0, Lq/y1;->d:Ljava/util/List;

    invoke-virtual {p0}, Lq/t2;->L()V

    return-object v0
.end method

.method public final P(Lq/y1;)V
    .registers 4

    sget-object v0, Lq/y1;->f:Lq/y1;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lq/u1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lq/y1;->d:Ljava/util/List;

    iput-object v0, p0, Lq/u1;->f:Ljava/util/List;

    iget v0, p0, Lq/u1;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lq/u1;->e:I

    goto :goto_3c

    :cond_20
    iget v0, p0, Lq/u1;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq/u1;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq/u1;->f:Ljava/util/List;

    iget v0, p0, Lq/u1;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/u1;->e:I

    :cond_35
    iget-object v0, p0, Lq/u1;->f:Ljava/util/List;

    iget-object v1, p1, Lq/y1;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3c
    invoke-virtual {p0}, Lq/t2;->M()V

    :cond_3f
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
    if-nez v0, :cond_4a

    :try_start_6
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1d

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1b
    move v0, v2

    goto :goto_4

    :cond_1d
    sget-object v1, Lq/x1;->n:Lq/v1;

    invoke-virtual {p1, v1, p2}, Lq/E;->q(Lq/m4;Lq/d2;)Lq/Q3;

    move-result-object v1

    check-cast v1, Lq/x1;

    iget v3, p0, Lq/u1;->e:I

    and-int/2addr v3, v2

    if-nez v3, :cond_38

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lq/u1;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lq/u1;->f:Ljava/util/List;

    iget v3, p0, Lq/u1;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lq/u1;->e:I

    :cond_38
    iget-object v2, p0, Lq/u1;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lq/U2; {:try_start_6 .. :try_end_3d} :catch_40
    .catchall {:try_start_6 .. :try_end_3d} :catchall_3e

    goto :goto_4

    :catchall_3e
    move-exception p1

    goto :goto_46

    :catch_40
    move-exception p1

    :try_start_41
    invoke-virtual {p1}, Lq/U2;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    :goto_46
    invoke-virtual {p0}, Lq/t2;->M()V

    throw p1

    :cond_4a
    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/u1;->O()Lq/y1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->F()Lq/t2;

    move-result-object v0

    check-cast v0, Lq/u1;

    return-object v0
.end method

.method public final bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final f()Lq/Q3;
    .registers 3

    invoke-virtual {p0}, Lq/u1;->O()Lq/y1;

    move-result-object v0

    invoke-virtual {v0}, Lq/y1;->h()Z

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

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lq/c;
    .registers 2

    sget-object v0, Lq/y1;->f:Lq/y1;

    return-object v0
.end method

.method public final k()Lq/G1;
    .registers 2

    sget-object v0, Lq/F1;->a0:Lq/G1;

    return-object v0
.end method

.method public final n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/t2;->E(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lq/c;
    .registers 3

    invoke-virtual {p0}, Lq/u1;->O()Lq/y1;

    move-result-object v0

    invoke-virtual {v0}, Lq/y1;->h()Z

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

    invoke-virtual {p0}, Lq/u1;->O()Lq/y1;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/y1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/y1;

    invoke-virtual {p0, p1}, Lq/u1;->P(Lq/y1;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_d
    return-object p0
.end method

.method public final bridge synthetic v(Lq/E;Lq/d2;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/u1;->Q(Lq/E;Lq/d2;)V

    return-object p0
.end method

.method public final w(Lq/c;)Lq/a;
    .registers 3

    instance-of v0, p1, Lq/y1;

    if-eqz v0, :cond_a

    check-cast p1, Lq/y1;

    invoke-virtual {p0, p1}, Lq/u1;->P(Lq/y1;)V

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
