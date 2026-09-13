.class public abstract Lq/t2;
.super Lq/a;
.source "SourceFile"


# instance fields
.field public final a:Lq/s2;

.field public b:Lq/s2;

.field public c:Z

.field public d:Lq/R3;


# direct methods
.method public constructor <init>(Lq/s2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq/W4;->b:Lq/W4;

    iput-object v0, p0, Lq/t2;->d:Lq/R3;

    iput-object p1, p0, Lq/t2;->a:Lq/s2;

    return-void
.end method


# virtual methods
.method public final C(Lq/S4;)V
    .registers 2

    iput-object p1, p0, Lq/t2;->d:Lq/R3;

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final E(Lq/R1;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lq/x2;->g(Lq/t2;Ljava/lang/Object;)V

    return-void
.end method

.method public final F()Lq/t2;
    .registers 3

    invoke-interface {p0}, Lq/S3;->i()Lq/c;

    move-result-object v0

    invoke-virtual {v0}, Lq/c;->p()Lq/a;

    move-result-object v0

    check-cast v0, Lq/t2;

    invoke-virtual {p0}, Lq/a;->p()Lq/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq/a;->u(Lq/c;)Lq/a;

    return-object v0
.end method

.method public final G()Ljava/util/TreeMap;
    .registers 7

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v1

    iget-object v1, v1, Lq/J2;->a:Lq/G1;

    invoke-virtual {v1}, Lq/G1;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/R1;

    iget-object v4, v3, Lq/R1;->j:Lq/V1;

    if-eqz v4, :cond_41

    iget v3, v4, Lq/V1;->f:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v3

    invoke-static {v3, v4}, Lq/J2;->a(Lq/J2;Lq/V1;)Lq/z2;

    move-result-object v3

    invoke-interface {v3, p0}, Lq/z2;->d(Lq/t2;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_65

    :cond_34
    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v3

    invoke-static {v3, v4}, Lq/J2;->a(Lq/J2;Lq/V1;)Lq/z2;

    move-result-object v3

    invoke-interface {v3, p0}, Lq/z2;->a(Lq/t2;)Lq/R1;

    move-result-object v3

    goto :goto_5e

    :cond_41
    invoke-virtual {v3}, Lq/R1;->p()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {p0, v3}, Lq/t2;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_57
    invoke-virtual {p0, v3}, Lq/t2;->g(Lq/R1;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_65

    :cond_5e
    :goto_5e
    invoke-virtual {p0, v3}, Lq/t2;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_68
    return-object v0
.end method

.method public final H()Lq/s2;
    .registers 3

    iget-object v0, p0, Lq/t2;->b:Lq/s2;

    if-nez v0, :cond_c

    new-instance v0, Lq/s2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lq/s2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lq/t2;->b:Lq/s2;

    :cond_c
    iget-object v0, p0, Lq/t2;->b:Lq/s2;

    return-object v0
.end method

.method public abstract I()Lq/J2;
.end method

.method public final J(Lq/W4;)V
    .registers 4

    sget-object v0, Lq/W4;->b:Lq/W4;

    invoke-virtual {v0, p1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lq/t2;->d:Lq/R3;

    invoke-virtual {v0, v1}, Lq/W4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object p1, p0, Lq/t2;->d:Lq/R3;

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void

    :cond_17
    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq/S4;->r(Lq/W4;)V

    invoke-virtual {p0}, Lq/t2;->M()V

    return-void
.end method

.method public final K(II)V
    .registers 4

    invoke-virtual {p0}, Lq/t2;->s()Lq/S4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lq/S4;->s(II)V

    return-void
.end method

.method public final L()V
    .registers 2

    iget-object v0, p0, Lq/t2;->a:Lq/s2;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/t2;->c:Z

    :cond_7
    return-void
.end method

.method public final M()V
    .registers 2

    iget-boolean v0, p0, Lq/t2;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lq/t2;->a:Lq/s2;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lq/b;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/t2;->c:Z

    :cond_e
    return-void
.end method

.method public final N(Lq/R1;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lq/x2;->h(Lq/t2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lq/W4;
    .registers 3

    iget-object v0, p0, Lq/t2;->d:Lq/R3;

    instance-of v1, v0, Lq/W4;

    if-eqz v1, :cond_9

    check-cast v0, Lq/W4;

    return-object v0

    :cond_9
    check-cast v0, Lq/S4;

    invoke-virtual {v0}, Lq/S4;->n()Lq/W4;

    move-result-object v0

    return-object v0
.end method

.method public g(Lq/R1;)Z
    .registers 3

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1, p0}, Lq/x2;->d(Lq/t2;)Z

    move-result p1

    return p1
.end method

.method public l()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lq/t2;->G()Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public m(Lq/R1;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object v0

    invoke-interface {v0, p0}, Lq/x2;->a(Lq/t2;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result p1

    if-eqz p1, :cond_19

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_19
    return-object v0
.end method

.method public q(Lq/R1;)Lq/a;
    .registers 3

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1, p0}, Lq/x2;->e(Lq/t2;)Lq/a;

    move-result-object p1

    return-object p1
.end method

.method public final s()Lq/S4;
    .registers 3

    iget-object v0, p0, Lq/t2;->d:Lq/R3;

    instance-of v1, v0, Lq/W4;

    if-eqz v1, :cond_14

    check-cast v0, Lq/W4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq/S4;->r(Lq/W4;)V

    iput-object v1, p0, Lq/t2;->d:Lq/R3;

    :cond_14
    invoke-virtual {p0}, Lq/t2;->M()V

    iget-object v0, p0, Lq/t2;->d:Lq/R3;

    check-cast v0, Lq/S4;

    return-object v0
.end method

.method public final t()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/t2;->c:Z

    return-void
.end method

.method public z(Lq/R1;)Lq/a;
    .registers 3

    invoke-virtual {p0}, Lq/t2;->I()Lq/J2;

    move-result-object v0

    invoke-static {v0, p1}, Lq/J2;->b(Lq/J2;Lq/R1;)Lq/x2;

    move-result-object p1

    invoke-interface {p1}, Lq/x2;->f()Lq/a;

    move-result-object p1

    return-object p1
.end method
