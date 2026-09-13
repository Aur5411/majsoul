.class public abstract Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/P3;
.implements Lq/S3;


# direct methods
.method public static A(Lq/c;)Lq/R4;
    .registers 6

    new-instance v0, Lq/R4;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-static {p0, v2, v1}, Lq/k3;->g(Lq/S3;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Message missing required fields: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    goto :goto_2d

    :cond_28
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract B(Lq/R1;Ljava/lang/Object;)Lq/a;
.end method

.method public C(Lq/S4;)V
    .registers 2

    invoke-virtual {p1}, Lq/S4;->n()Lq/W4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq/a;->D(Lq/W4;)Lq/a;

    return-void
.end method

.method public abstract D(Lq/W4;)Lq/a;
.end method

.method public bridge synthetic d(Lq/E;Lq/d2;)Lq/P3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/a;->v(Lq/E;Lq/d2;)Lq/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract k()Lq/G1;
.end method

.method public abstract n(Lq/R1;Ljava/lang/Object;)Lq/a;
.end method

.method public abstract o()Lq/c;
.end method

.method public abstract p()Lq/c;
.end method

.method public abstract q(Lq/R1;)Lq/a;
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s()Lq/S4;
    .registers 3

    invoke-interface {p0}, Lq/S3;->a()Lq/W4;

    move-result-object v0

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq/S4;->r(Lq/W4;)V

    return-object v1
.end method

.method public t()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    sget-object v0, Lq/M4;->b:Lq/M4;

    invoke-virtual {v0, p0}, Lq/M4;->c(Lq/S3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lq/c;)Lq/a;
    .registers 7

    invoke-interface {p1}, Lq/S3;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lq/S3;->k()Lq/G1;

    move-result-object v1

    invoke-virtual {p0}, Lq/a;->k()Lq/G1;

    move-result-object v2

    if-ne v1, v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/R1;

    invoke-virtual {v2}, Lq/R1;->p()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lq/a;->n(Lq/R1;Ljava/lang/Object;)Lq/a;

    goto :goto_38

    :cond_46
    iget-object v3, v2, Lq/R1;->g:Lq/Q1;

    iget-object v3, v3, Lq/Q1;->a:Lq/P1;

    sget-object v4, Lq/P1;->j:Lq/P1;

    if-ne v3, v4, :cond_7c

    invoke-interface {p0, v2}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/c;

    invoke-interface {v3}, Lq/S3;->i()Lq/c;

    move-result-object v4

    if-ne v3, v4, :cond_62

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lq/a;->B(Lq/R1;Ljava/lang/Object;)Lq/a;

    goto :goto_16

    :cond_62
    invoke-virtual {v3}, Lq/c;->p()Lq/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lq/a;->w(Lq/c;)Lq/a;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/c;

    invoke-virtual {v3, v1}, Lq/a;->w(Lq/c;)Lq/a;

    move-result-object v1

    invoke-virtual {v1}, Lq/a;->o()Lq/c;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lq/a;->B(Lq/R1;Ljava/lang/Object;)Lq/a;

    goto :goto_16

    :cond_7c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lq/a;->B(Lq/R1;Ljava/lang/Object;)Lq/a;

    goto :goto_16

    :cond_84
    invoke-interface {p1}, Lq/S3;->a()Lq/W4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq/a;->y(Lq/W4;)Lq/a;

    return-object p0

    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(Lq/E;Lq/d2;)Lq/a;
    .registers 12

    invoke-virtual {p0}, Lq/a;->s()Lq/S4;

    move-result-object v6

    new-instance v7, Lq/T3;

    invoke-direct {v7, p0}, Lq/T3;-><init>(Lq/a;)V

    invoke-virtual {p0}, Lq/a;->k()Lq/G1;

    move-result-object v8

    :cond_d
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v5

    if-nez v5, :cond_14

    goto :goto_1f

    :cond_14
    move-object v0, p1

    move-object v1, v6

    move-object v2, p2

    move-object v3, v8

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lq/k3;->j(Lq/E;Lq/S4;Lq/d2;Lq/G1;Lq/U3;I)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_1f
    if-eqz v6, :cond_24

    invoke-virtual {p0, v6}, Lq/a;->C(Lq/S4;)V

    :cond_24
    return-object p0
.end method

.method public abstract w(Lq/c;)Lq/a;
.end method

.method public final x(Lq/B;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lq/B;->i()Lq/C;

    move-result-object p1

    sget-object v0, Lq/b2;->e:Lq/b2;

    invoke-virtual {p0, p1, v0}, Lq/a;->v(Lq/E;Lq/d2;)Lq/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lq/C;->a(I)V
    :try_end_d
    .catch Lq/U2; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    goto :goto_12

    :catch_10
    move-exception p1

    goto :goto_1e

    :goto_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-virtual {p0, v1}, Lq/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1e
    throw p1
.end method

.method public abstract y(Lq/W4;)Lq/a;
.end method

.method public abstract z(Lq/R1;)Lq/a;
.end method
