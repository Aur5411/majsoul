.class public abstract Lq/w2;
.super Lq/K2;
.source "SourceFile"


# instance fields
.field public final d:Lq/g2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lq/K2;-><init>()V

    .line 2
    new-instance v0, Lq/g2;

    invoke-direct {v0}, Lq/g2;-><init>()V

    .line 3
    iput-object v0, p0, Lq/w2;->d:Lq/g2;

    return-void
.end method

.method public constructor <init>(Lq/u2;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lq/K2;-><init>(Lq/t2;)V

    .line 5
    iget-object p1, p1, Lq/u2;->e:Lq/e2;

    if-nez p1, :cond_a

    .line 6
    sget-object p1, Lq/g2;->d:Lq/g2;

    goto :goto_f

    :cond_a
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lq/e2;->b(Z)Lq/g2;

    move-result-object p1

    .line 8
    :goto_f
    iput-object p1, p0, Lq/w2;->d:Lq/g2;

    return-void
.end method


# virtual methods
.method public final C()I
    .registers 2

    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0}, Lq/g2;->h()I

    move-result v0

    return v0
.end method

.method public final g(Lq/R1;)Z
    .registers 4

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v1

    iget-object v1, v1, Lq/J2;->a:Lq/G1;

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v0, p1}, Lq/g2;->i(Lq/R1;)Z

    move-result p1

    return p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-super {p0, p1}, Lq/K2;->g(Lq/R1;)Z

    move-result p1

    return p1
.end method

.method public final l()Ljava/util/Map;
    .registers 3

    invoke-virtual {p0}, Lq/K2;->x()Ljava/util/TreeMap;

    move-result-object v0

    iget-object v1, p0, Lq/w2;->d:Lq/g2;

    invoke-virtual {v1}, Lq/g2;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lq/R1;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    invoke-virtual {p0}, Lq/K2;->y()Lq/J2;

    move-result-object v1

    iget-object v1, v1, Lq/J2;->a:Lq/G1;

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lq/w2;->d:Lq/g2;

    iget-object v0, v0, Lq/g2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_27
    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_38

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object p1

    invoke-static {p1}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object p1

    return-object p1

    :cond_38
    invoke-virtual {p1}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3d
    return-object v0

    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    invoke-super {p0, p1}, Lq/K2;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
