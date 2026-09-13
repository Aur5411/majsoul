.class public final Lq/T3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/U3;


# instance fields
.field public final a:Lq/a;

.field public b:Z


# direct methods
.method public constructor <init>(Lq/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/T3;->b:Z

    iput-object p1, p0, Lq/T3;->a:Lq/a;

    return-void
.end method


# virtual methods
.method public final a(Lq/E;Lq/d2;Lq/R1;)V
    .registers 6

    invoke-virtual {p3}, Lq/R1;->p()Z

    move-result v0

    iget-object v1, p0, Lq/T3;->a:Lq/a;

    if-nez v0, :cond_35

    invoke-interface {v1, p3}, Lq/S3;->g(Lq/R1;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, p3}, Lq/T3;->d(Lq/R1;)Lq/a;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, v0, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    return-void

    :cond_18
    invoke-virtual {v1, p3}, Lq/a;->z(Lq/R1;)Lq/a;

    move-result-object v0

    invoke-interface {v1, p3}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/c;

    invoke-virtual {v0, v1}, Lq/a;->w(Lq/c;)Lq/a;

    goto :goto_2a

    :cond_26
    invoke-virtual {v1, p3}, Lq/a;->z(Lq/R1;)Lq/a;

    move-result-object v0

    :goto_2a
    invoke-virtual {p1, v0, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    invoke-virtual {v0}, Lq/a;->p()Lq/c;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lq/T3;->g(Lq/R1;Ljava/lang/Object;)Lq/U3;

    goto :goto_43

    :cond_35
    invoke-virtual {v1, p3}, Lq/a;->z(Lq/R1;)Lq/a;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    invoke-virtual {v0}, Lq/a;->p()Lq/c;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lq/T3;->i(Lq/R1;Ljava/lang/Object;)Lq/U3;

    :goto_43
    return-void
.end method

.method public final b(Lq/R1;)I
    .registers 3

    invoke-virtual {p1}, Lq/R1;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    invoke-virtual {p1}, Lq/R1;->p()Z

    const/4 p1, 0x1

    return p1
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Lq/R1;)Lq/a;
    .registers 3

    iget-boolean v0, p0, Lq/T3;->b:Z

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lq/T3;->a:Lq/a;

    invoke-virtual {v0, p1}, Lq/a;->q(Lq/R1;)Lq/a;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/T3;->b:Z

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Lq/E;Lq/d2;Lq/R1;)V
    .registers 7

    invoke-virtual {p3}, Lq/R1;->p()Z

    move-result v0

    iget-object v1, p3, Lq/R1;->b:Lq/C0;

    iget-object v2, p0, Lq/T3;->a:Lq/a;

    if-nez v0, :cond_3b

    invoke-interface {v2, p3}, Lq/S3;->g(Lq/R1;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p3}, Lq/T3;->d(Lq/R1;)Lq/a;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget p3, v1, Lq/C0;->f:I

    invoke-virtual {p1, p3, v0, p2}, Lq/E;->n(ILq/P3;Lq/d2;)V

    return-void

    :cond_1c
    invoke-virtual {v2, p3}, Lq/a;->z(Lq/R1;)Lq/a;

    move-result-object v0

    invoke-interface {v2, p3}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/c;

    invoke-virtual {v0, v2}, Lq/a;->w(Lq/c;)Lq/a;

    goto :goto_2e

    :cond_2a
    invoke-virtual {v2, p3}, Lq/a;->z(Lq/R1;)Lq/a;

    move-result-object v0

    :goto_2e
    iget v1, v1, Lq/C0;->f:I

    invoke-virtual {p1, v1, v0, p2}, Lq/E;->n(ILq/P3;Lq/d2;)V

    invoke-virtual {v0}, Lq/a;->p()Lq/c;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lq/T3;->g(Lq/R1;Ljava/lang/Object;)Lq/U3;

    goto :goto_4b

    :cond_3b
    invoke-virtual {v2, p3}, Lq/a;->z(Lq/R1;)Lq/a;

    move-result-object v0

    iget v1, v1, Lq/C0;->f:I

    invoke-virtual {p1, v1, v0, p2}, Lq/E;->n(ILq/P3;Lq/d2;)V

    invoke-virtual {v0}, Lq/a;->p()Lq/c;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lq/T3;->i(Lq/R1;Ljava/lang/Object;)Lq/U3;

    :goto_4b
    return-void
.end method

.method public final g(Lq/R1;Ljava/lang/Object;)Lq/U3;
    .registers 5

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    iget-object v1, p0, Lq/T3;->a:Lq/a;

    if-nez v0, :cond_1c

    instance-of v0, p2, Lq/P3;

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lq/T3;->d(Lq/R1;)Lq/a;

    move-result-object v0

    if-eq p2, v0, :cond_1b

    check-cast p2, Lq/P3;

    invoke-interface {p2}, Lq/P3;->b()Lq/Q3;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lq/a;->B(Lq/R1;Ljava/lang/Object;)Lq/a;

    :cond_1b
    return-object p0

    :cond_1c
    invoke-virtual {v1, p1, p2}, Lq/a;->B(Lq/R1;Ljava/lang/Object;)Lq/a;

    return-object p0
.end method

.method public final i(Lq/R1;Ljava/lang/Object;)Lq/U3;
    .registers 4

    instance-of v0, p2, Lq/P3;

    if-eqz v0, :cond_a

    check-cast p2, Lq/P3;

    invoke-interface {p2}, Lq/P3;->b()Lq/Q3;

    move-result-object p2

    :cond_a
    iget-object v0, p0, Lq/T3;->a:Lq/a;

    invoke-virtual {v0, p1, p2}, Lq/a;->n(Lq/R1;Ljava/lang/Object;)Lq/a;

    return-object p0
.end method

.method public final j(Lq/b2;Lq/G1;I)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lq/a2;

    invoke-direct {v0, p3, p2}, Lq/a2;-><init>(ILq/G1;)V

    iget-object p1, p1, Lq/b2;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
