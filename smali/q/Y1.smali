.class public final Lq/Y1;
.super Lq/a;
.source "SourceFile"


# instance fields
.field public final a:Lq/G1;

.field public final b:Lq/e2;

.field public final c:[Lq/R1;

.field public d:Lq/W4;


# direct methods
.method public constructor <init>(Lq/G1;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/Y1;->a:Lq/G1;

    sget-object v0, Lq/g2;->d:Lq/g2;

    new-instance v0, Lq/e2;

    new-instance v1, Lq/D4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lq/e2;->a:Lq/D4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/e2;->c:Z

    iput-object v0, p0, Lq/Y1;->b:Lq/e2;

    sget-object v0, Lq/W4;->b:Lq/W4;

    iput-object v0, p0, Lq/Y1;->d:Lq/W4;

    iget-object p1, p1, Lq/G1;->a:Lq/Q;

    iget-object p1, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lq/R1;

    iput-object p1, p0, Lq/Y1;->c:[Lq/R1;

    return-void
.end method

.method public static E(Lq/Y1;)Lq/Z1;
    .registers 5

    invoke-virtual {p0}, Lq/Y1;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lq/Y1;->H()Lq/Z1;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Lq/Z1;

    const/4 v1, 0x0

    iget-object v2, p0, Lq/Y1;->b:Lq/e2;

    invoke-virtual {v2, v1}, Lq/e2;->b(Z)Lq/g2;

    move-result-object v1

    iget-object v2, p0, Lq/Y1;->c:[Lq/R1;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lq/R1;

    iget-object v3, p0, Lq/Y1;->d:Lq/W4;

    iget-object p0, p0, Lq/Y1;->a:Lq/G1;

    invoke-direct {v0, p0, v1, v2, v3}, Lq/Z1;-><init>(Lq/G1;Lq/g2;[Lq/R1;Lq/W4;)V

    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object p0

    invoke-virtual {p0}, Lq/R4;->a()Lq/U2;

    move-result-object p0

    throw p0
.end method

.method public static M(Lq/R1;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1f

    const/16 p0, 0xd

    if-eq v0, p0, :cond_f

    goto :goto_23

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lq/O1;

    if-eqz p0, :cond_17

    goto :goto_23

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    instance-of v0, p1, Lq/a;

    if-nez v0, :cond_24

    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lq/R1;->b:Lq/C0;

    iget v1, v1, Lq/C0;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object p0

    iget-object p0, p0, Lq/i6;->a:Lq/j6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic B(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final D(Lq/W4;)Lq/a;
    .registers 2

    iput-object p1, p0, Lq/Y1;->d:Lq/W4;

    return-object p0
.end method

.method public final F(Lq/R1;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    invoke-static {p1, p2}, Lq/Y1;->M(Lq/R1;Ljava/lang/Object;)V

    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    invoke-virtual {v0, p1, p2}, Lq/e2;->a(Lq/R1;Ljava/lang/Object;)V

    return-void
.end method

.method public final G()Lq/Z1;
    .registers 6

    invoke-virtual {p0}, Lq/Y1;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lq/Y1;->H()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Lq/Z1;

    const/4 v1, 0x0

    iget-object v2, p0, Lq/Y1;->b:Lq/e2;

    invoke-virtual {v2, v1}, Lq/e2;->b(Z)Lq/g2;

    move-result-object v1

    iget-object v2, p0, Lq/Y1;->c:[Lq/R1;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lq/R1;

    iget-object v3, p0, Lq/Y1;->d:Lq/W4;

    iget-object v4, p0, Lq/Y1;->a:Lq/G1;

    invoke-direct {v0, v4, v1, v2, v3}, Lq/Z1;-><init>(Lq/G1;Lq/g2;[Lq/R1;Lq/W4;)V

    invoke-static {v0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object v0

    throw v0
.end method

.method public final H()Lq/Z1;
    .registers 7

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    iget-object v1, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v1}, Lq/Q;->D()Lq/Z0;

    move-result-object v1

    iget-boolean v1, v1, Lq/Z0;->i:Z

    iget-object v2, p0, Lq/Y1;->b:Lq/e2;

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Lq/G1;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/R1;

    invoke-virtual {v3}, Lq/R1;->m()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2, v3}, Lq/e2;->f(Lq/R1;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v3, Lq/R1;->g:Lq/Q1;

    iget-object v4, v4, Lq/Q1;->a:Lq/P1;

    sget-object v5, Lq/P1;->j:Lq/P1;

    if-ne v4, v5, :cond_42

    invoke-virtual {v3}, Lq/R1;->j()Lq/G1;

    move-result-object v4

    invoke-static {v4}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    goto :goto_16

    :cond_42
    invoke-virtual {v3}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    goto :goto_16

    :cond_4a
    new-instance v1, Lq/Z1;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lq/e2;->b(Z)Lq/g2;

    move-result-object v2

    iget-object v3, p0, Lq/Y1;->c:[Lq/R1;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lq/R1;

    iget-object v4, p0, Lq/Y1;->d:Lq/W4;

    invoke-direct {v1, v0, v2, v3, v4}, Lq/Z1;-><init>(Lq/G1;Lq/g2;[Lq/R1;Lq/W4;)V

    return-object v1
.end method

.method public final I(Lq/R1;)V
    .registers 5

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    iget-object v0, p1, Lq/R1;->j:Lq/V1;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lq/Y1;->c:[Lq/R1;

    iget v0, v0, Lq/V1;->a:I

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_12

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_12
    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    invoke-virtual {v0, p1}, Lq/e2;->c(Lq/R1;)V

    return-void
.end method

.method public final J(Lq/c;)Lq/Y1;
    .registers 8

    instance-of v0, p1, Lq/Z1;

    if-eqz v0, :cond_51

    check-cast p1, Lq/Z1;

    iget-object v0, p1, Lq/Z1;->c:Lq/G1;

    iget-object v1, p0, Lq/Y1;->a:Lq/G1;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    iget-object v1, p1, Lq/Z1;->d:Lq/g2;

    invoke-virtual {v0, v1}, Lq/e2;->h(Lq/g2;)V

    iget-object v1, p0, Lq/Y1;->d:Lq/W4;

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lq/S4;->r(Lq/W4;)V

    iget-object v1, p1, Lq/Z1;->f:Lq/W4;

    invoke-virtual {v2, v1}, Lq/S4;->r(Lq/W4;)V

    invoke-virtual {v2}, Lq/S4;->n()Lq/W4;

    move-result-object v1

    iput-object v1, p0, Lq/Y1;->d:Lq/W4;

    const/4 v1, 0x0

    :goto_28
    iget-object v2, p0, Lq/Y1;->c:[Lq/R1;

    array-length v3, v2

    if-ge v1, v3, :cond_48

    aget-object v3, v2, v1

    iget-object v4, p1, Lq/Z1;->e:[Lq/R1;

    if-nez v3, :cond_38

    aget-object v3, v4, v1

    aput-object v3, v2, v1

    goto :goto_45

    :cond_38
    aget-object v5, v4, v1

    if-eqz v5, :cond_45

    if-eq v3, v5, :cond_45

    invoke-virtual {v0, v3}, Lq/e2;->c(Lq/R1;)V

    aget-object v3, v4, v1

    aput-object v3, v2, v1

    :cond_45
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_48
    return-object p0

    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    invoke-super {p0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    return-object p0
.end method

.method public final K(Lq/R1;Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lq/Y1;->M(Lq/R1;Ljava/lang/Object;)V

    goto :goto_10

    :cond_1e
    invoke-static {p1, p2}, Lq/Y1;->M(Lq/R1;Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    iget-object v1, p1, Lq/R1;->j:Lq/V1;

    if-eqz v1, :cond_37

    iget-object v2, p0, Lq/Y1;->c:[Lq/R1;

    iget v1, v1, Lq/V1;->a:I

    aget-object v3, v2, v1

    if-eqz v3, :cond_34

    if-eq v3, p1, :cond_34

    invoke-virtual {v0, v3}, Lq/e2;->c(Lq/R1;)V

    :cond_34
    aput-object p1, v2, v1

    goto :goto_51

    :cond_37
    invoke-virtual {p1}, Lq/R1;->k()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v0, p1}, Lq/e2;->c(Lq/R1;)V

    return-void

    :cond_51
    :goto_51
    invoke-virtual {v0, p1, p2}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    return-void
.end method

.method public final L(Lq/R1;)V
    .registers 3

    iget-object p1, p1, Lq/R1;->h:Lq/G1;

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lq/W4;
    .registers 2

    iget-object v0, p0, Lq/Y1;->d:Lq/W4;

    return-object v0
.end method

.method public final bridge synthetic b()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/Y1;->H()Lq/Z1;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lq/Y1;

    iget-object v1, p0, Lq/Y1;->a:Lq/G1;

    invoke-direct {v0, v1}, Lq/Y1;-><init>(Lq/G1;)V

    iget-object v1, v0, Lq/Y1;->b:Lq/e2;

    iget-object v2, p0, Lq/Y1;->b:Lq/e2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lq/e2;->b(Z)Lq/g2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/e2;->h(Lq/g2;)V

    iget-object v1, p0, Lq/Y1;->d:Lq/W4;

    iget-object v2, v0, Lq/Y1;->d:Lq/W4;

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v4

    invoke-virtual {v4, v2}, Lq/S4;->r(Lq/W4;)V

    invoke-virtual {v4, v1}, Lq/S4;->r(Lq/W4;)V

    invoke-virtual {v4}, Lq/S4;->n()Lq/W4;

    move-result-object v1

    iput-object v1, v0, Lq/Y1;->d:Lq/W4;

    iget-object v1, p0, Lq/Y1;->c:[Lq/R1;

    array-length v2, v1

    iget-object v4, v0, Lq/Y1;->c:[Lq/R1;

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final bridge synthetic f()Lq/Q3;
    .registers 2

    invoke-virtual {p0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lq/R1;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    invoke-virtual {v0, p1}, Lq/e2;->f(Lq/R1;)Z

    move-result p1

    return p1
.end method

.method public final h()Z
    .registers 6

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v0}, Lq/G1;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lq/Y1;->b:Lq/e2;

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/R1;

    iget-object v3, v1, Lq/R1;->b:Lq/C0;

    iget v3, v3, Lq/C0;->g:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    sget-object v3, Lq/A0;->b:Lq/A0;

    const/4 v3, 0x0

    goto :goto_31

    :cond_29
    sget-object v3, Lq/A0;->c:Lq/A0;

    goto :goto_31

    :cond_2c
    sget-object v3, Lq/A0;->d:Lq/A0;

    goto :goto_31

    :cond_2f
    sget-object v3, Lq/A0;->b:Lq/A0;

    :goto_31
    if-nez v3, :cond_35

    sget-object v3, Lq/A0;->b:Lq/A0;

    :cond_35
    sget-object v4, Lq/A0;->d:Lq/A0;

    if-ne v3, v4, :cond_a

    invoke-virtual {v2, v1}, Lq/e2;->f(Lq/R1;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_41
    invoke-virtual {v2}, Lq/e2;->g()Z

    move-result v0

    return v0
.end method

.method public final k()Lq/G1;
    .registers 2

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    invoke-virtual {v0}, Lq/e2;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lq/R1;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    iget-object v0, v0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lq/e2;->j(Lq/f2;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_32

    :cond_1d
    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_2e

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object p1

    invoke-static {p1}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v0

    goto :goto_32

    :cond_2e
    invoke-virtual {p1}, Lq/R1;->g()Ljava/lang/Object;

    move-result-object v0

    :cond_32
    :goto_32
    return-object v0
.end method

.method public final bridge synthetic n(Lq/R1;Ljava/lang/Object;)Lq/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic o()Lq/c;
    .registers 2

    invoke-virtual {p0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lq/c;
    .registers 2

    invoke-virtual {p0}, Lq/Y1;->H()Lq/Z1;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lq/R1;)Lq/a;
    .registers 5

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    invoke-virtual {p1}, Lq/R1;->l()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lq/Y1;->b:Lq/e2;

    iget-object v1, v0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v1, Lq/Y1;

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object v2

    invoke-direct {v1, v2}, Lq/Y1;-><init>(Lq/G1;)V

    goto :goto_36

    :cond_25
    instance-of v2, v1, Lq/a;

    if-eqz v2, :cond_2c

    check-cast v1, Lq/a;

    goto :goto_36

    :cond_2c
    instance-of v2, v1, Lq/c;

    if-eqz v2, :cond_3a

    check-cast v1, Lq/c;

    invoke-virtual {v1}, Lq/c;->r()Lq/a;

    move-result-object v1

    :goto_36
    invoke-virtual {v0, p1, v1}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    return-object v1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to Message.Builder"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder not supported for map fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic u(Lq/c;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/Y1;->J(Lq/c;)Lq/Y1;

    return-object p0
.end method

.method public final bridge synthetic w(Lq/c;)Lq/a;
    .registers 2

    invoke-virtual {p0, p1}, Lq/Y1;->J(Lq/c;)Lq/Y1;

    return-object p0
.end method

.method public final y(Lq/W4;)Lq/a;
    .registers 4

    iget-object v0, p0, Lq/Y1;->d:Lq/W4;

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq/S4;->r(Lq/W4;)V

    invoke-virtual {v1, p1}, Lq/S4;->r(Lq/W4;)V

    invoke-virtual {v1}, Lq/S4;->n()Lq/W4;

    move-result-object p1

    iput-object p1, p0, Lq/Y1;->d:Lq/W4;

    return-object p0
.end method

.method public final z(Lq/R1;)Lq/a;
    .registers 4

    invoke-virtual {p0, p1}, Lq/Y1;->L(Lq/R1;)V

    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_15

    new-instance v0, Lq/Y1;

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object p1

    invoke-direct {v0, p1}, Lq/Y1;-><init>(Lq/G1;)V

    return-object v0

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
