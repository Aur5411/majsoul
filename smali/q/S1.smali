.class public final Lq/S1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:Lq/P0;

.field public final b:[Lq/G1;

.field public final c:[Lq/M1;

.field public final d:[Lq/W1;

.field public final e:[Lq/R1;

.field public final f:[Lq/S1;

.field public final g:Lq/J1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq/G1;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lq/J1;

    const/4 v1, 0x0

    new-array v2, v1, [Lq/S1;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lq/J1;-><init>([Lq/S1;Z)V

    iput-object v0, p0, Lq/S1;->g:Lq/J1;

    .line 3
    sget-object v2, Lq/P0;->s:Lq/P0;

    invoke-virtual {v2}, Lq/P0;->N()Lq/O0;

    move-result-object v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v5, p2, Lq/G1;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".placeholder.proto"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object v4, v2, Lq/O0;->f:Ljava/io/Serializable;

    .line 9
    iget v4, v2, Lq/O0;->e:I

    or-int/2addr v3, v4

    iput v3, v2, Lq/O0;->e:I

    .line 10
    invoke-virtual {v2}, Lq/t2;->M()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, v2, Lq/O0;->g:Ljava/io/Serializable;

    .line 13
    iget v3, v2, Lq/O0;->e:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lq/O0;->e:I

    .line 14
    invoke-virtual {v2}, Lq/t2;->M()V

    .line 15
    iget-object v3, p2, Lq/G1;->a:Lq/Q;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {v2}, Lq/O0;->P()V

    .line 18
    iget-object v4, v2, Lq/O0;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2}, Lq/t2;->M()V

    .line 20
    invoke-virtual {v2}, Lq/O0;->O()Lq/P0;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lq/P0;->h()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 22
    iput-object v2, p0, Lq/S1;->a:Lq/P0;

    .line 23
    new-array v1, v1, [Lq/S1;

    iput-object v1, p0, Lq/S1;->f:[Lq/S1;

    .line 24
    filled-new-array {p2}, [Lq/G1;

    move-result-object v1

    iput-object v1, p0, Lq/S1;->b:[Lq/G1;

    .line 25
    sget-object v1, Lq/X1;->e:[Lq/M1;

    .line 26
    iput-object v1, p0, Lq/S1;->c:[Lq/M1;

    .line 27
    sget-object v1, Lq/X1;->f:[Lq/W1;

    .line 28
    iput-object v1, p0, Lq/S1;->d:[Lq/W1;

    .line 29
    sget-object v1, Lq/X1;->d:[Lq/R1;

    .line 30
    iput-object v1, p0, Lq/S1;->e:[Lq/R1;

    .line 31
    invoke-virtual {v0, p1, p0}, Lq/J1;->a(Ljava/lang/String;Lq/S1;)V

    .line 32
    invoke-virtual {v0, p2}, Lq/J1;->b(Lq/T1;)V

    return-void

    .line 33
    :cond_7b
    invoke-static {v2}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lq/P0;[Lq/S1;Lq/J1;Z)V
    .registers 14

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lq/S1;->g:Lq/J1;

    .line 36
    iput-object p1, p0, Lq/S1;->a:Lq/P0;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_1f

    aget-object v4, p2, v3

    .line 39
    iget-object v5, v4, Lq/S1;->a:Lq/P0;

    .line 40
    invoke-virtual {v5}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 42
    :cond_1f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 43
    :goto_25
    iget-object v3, p1, Lq/P0;->h:Lq/Q2;

    .line 44
    check-cast v3, Lq/O2;

    invoke-virtual {v3}, Lq/O2;->size()I

    move-result v3

    if-ge v1, v3, :cond_76

    .line 45
    iget-object v3, p1, Lq/P0;->h:Lq/Q2;

    check-cast v3, Lq/O2;

    invoke-virtual {v3, v1}, Lq/O2;->f(I)I

    move-result v3

    if-ltz v3, :cond_6e

    .line 46
    iget-object v4, p1, Lq/P0;->g:Lq/b3;

    .line 47
    iget-object v4, v4, Lq/b3;->b:Ljava/util/List;

    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6e

    .line 49
    iget-object v4, p1, Lq/P0;->g:Lq/b3;

    invoke-virtual {v4, v3}, Lq/b3;->e(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/S1;

    if-nez v4, :cond_68

    if-eqz p4, :cond_54

    goto :goto_6b

    .line 51
    :cond_54
    new-instance p1, Lq/K1;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid public dependency: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/S1;)V

    throw p1

    .line 52
    :cond_68
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 53
    :cond_6e
    new-instance p1, Lq/K1;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/S1;)V

    throw p1

    .line 54
    :cond_76
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Lq/S1;

    iput-object p4, p0, Lq/S1;->f:[Lq/S1;

    .line 55
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    iget-object p2, p0, Lq/S1;->a:Lq/P0;

    invoke-virtual {p2}, Lq/P0;->E()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p3, p2, p0}, Lq/J1;->a(Ljava/lang/String;Lq/S1;)V

    .line 58
    iget-object p2, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9b

    .line 59
    iget-object p2, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 60
    new-array p2, p2, [Lq/G1;

    goto :goto_9d

    .line 61
    :cond_9b
    sget-object p2, Lq/X1;->c:[Lq/G1;

    .line 62
    :goto_9d
    iput-object p2, p0, Lq/S1;->b:[Lq/G1;

    move p2, v2

    .line 63
    :goto_a0
    iget-object p3, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    if-ge p2, p3, :cond_bd

    .line 64
    iget-object p3, p0, Lq/S1;->b:[Lq/G1;

    new-instance v0, Lq/G1;

    .line 65
    iget-object v1, p1, Lq/P0;->j:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/Q;

    .line 66
    invoke-direct {v0, v1, p0, p4}, Lq/G1;-><init>(Lq/Q;Lq/S1;Lq/G1;)V

    .line 67
    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_a0

    .line 68
    :cond_bd
    iget-object p2, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_ce

    .line 69
    iget-object p2, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 70
    new-array p2, p2, [Lq/M1;

    goto :goto_d0

    .line 71
    :cond_ce
    sget-object p2, Lq/X1;->e:[Lq/M1;

    .line 72
    :goto_d0
    iput-object p2, p0, Lq/S1;->c:[Lq/M1;

    move p2, v2

    .line 73
    :goto_d3
    iget-object p3, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_ef

    .line 74
    iget-object p3, p0, Lq/S1;->c:[Lq/M1;

    new-instance v0, Lq/M1;

    .line 75
    iget-object v1, p1, Lq/P0;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/Y;

    .line 76
    invoke-direct {v0, v1, p0, p4}, Lq/M1;-><init>(Lq/Y;Lq/S1;Lq/G1;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_d3

    .line 77
    :cond_ef
    iget-object p2, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_100

    .line 78
    iget-object p2, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 79
    new-array p2, p2, [Lq/W1;

    goto :goto_102

    .line 80
    :cond_100
    sget-object p2, Lq/X1;->f:[Lq/W1;

    .line 81
    :goto_102
    iput-object p2, p0, Lq/S1;->d:[Lq/W1;

    move p2, v2

    .line 82
    :goto_105
    iget-object p3, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_121

    .line 83
    iget-object p3, p0, Lq/S1;->d:[Lq/W1;

    new-instance p4, Lq/W1;

    .line 84
    iget-object v0, p1, Lq/P0;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/p1;

    .line 85
    invoke-direct {p4, v0, p0}, Lq/W1;-><init>(Lq/p1;Lq/S1;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_105

    .line 86
    :cond_121
    iget-object p2, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_132

    .line 87
    iget-object p2, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 88
    new-array p2, p2, [Lq/R1;

    goto :goto_134

    .line 89
    :cond_132
    sget-object p2, Lq/X1;->d:[Lq/R1;

    .line 90
    :goto_134
    iput-object p2, p0, Lq/S1;->e:[Lq/R1;

    .line 91
    :goto_136
    iget-object p2, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_158

    .line 92
    iget-object p2, p0, Lq/S1;->e:[Lq/R1;

    new-instance p3, Lq/R1;

    .line 93
    iget-object p4, p1, Lq/P0;->m:Ljava/util/List;

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lq/C0;

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v3, p3

    move-object v5, p0

    move v7, v2

    .line 94
    invoke-direct/range {v3 .. v8}, Lq/R1;-><init>(Lq/C0;Lq/S1;Lq/G1;IZ)V

    aput-object p3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_136

    :cond_158
    return-void
.end method

.method public static f(Lq/P0;[Lq/S1;Z)Lq/S1;
    .registers 15

    new-instance v0, Lq/J1;

    invoke-direct {v0, p1, p2}, Lq/J1;-><init>([Lq/S1;Z)V

    new-instance v1, Lq/S1;

    invoke-direct {v1, p0, p1, v0, p2}, Lq/S1;-><init>(Lq/P0;[Lq/S1;Lq/J1;Z)V

    iget-object p0, v1, Lq/S1;->b:[Lq/G1;

    array-length p1, p0

    const/4 p2, 0x0

    move v0, p2

    :goto_f
    if-ge v0, p1, :cond_19

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lq/G1;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_19
    iget-object p0, v1, Lq/S1;->d:[Lq/W1;

    array-length p1, p0

    move v0, p2

    :goto_1d
    if-ge v0, p1, :cond_8d

    aget-object v2, p0, v0

    iget-object v2, v2, Lq/W1;->d:[Lq/U1;

    array-length v3, v2

    move v4, p2

    :goto_25
    if-ge v4, v3, :cond_8a

    aget-object v5, v2, v4

    iget-object v6, v5, Lq/U1;->c:Lq/S1;

    iget-object v7, v6, Lq/S1;->g:Lq/J1;

    iget-object v8, v5, Lq/U1;->a:Lq/c1;

    invoke-virtual {v8}, Lq/c1;->C()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Lq/J1;->f(Ljava/lang/String;Lq/T1;)Lq/T1;

    move-result-object v7

    instance-of v9, v7, Lq/G1;

    const-string v10, "\" is not a message type."

    const-string v11, "\""

    if-eqz v9, :cond_71

    check-cast v7, Lq/G1;

    iput-object v7, v5, Lq/U1;->d:Lq/G1;

    invoke-virtual {v8}, Lq/c1;->F()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lq/S1;->g:Lq/J1;

    invoke-virtual {v6, v7, v5}, Lq/J1;->f(Ljava/lang/String;Lq/T1;)Lq/T1;

    move-result-object v6

    instance-of v7, v6, Lq/G1;

    if-eqz v7, :cond_58

    check-cast v6, Lq/G1;

    iput-object v6, v5, Lq/U1;->e:Lq/G1;

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_58
    new-instance p0, Lq/K1;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lq/c1;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p0

    :cond_71
    new-instance p0, Lq/K1;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lq/c1;->C()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p0

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_8d
    iget-object p0, v1, Lq/S1;->e:[Lq/R1;

    array-length p1, p0

    :goto_90
    if-ge p2, p1, :cond_9a

    aget-object v0, p0, p2

    invoke-static {v0}, Lq/R1;->f(Lq/R1;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_90

    :cond_9a
    return-object v1
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 1

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/S1;->a:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/S1;->a:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/S1;->a:Lq/P0;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lq/S1;->b:[Lq/G1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .registers 4

    iget-object v0, p0, Lq/S1;->a:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->G()Ljava/lang/String;

    move-result-object v1

    const-string v2, "proto3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x3

    return v0

    :cond_10
    invoke-virtual {v0}, Lq/P0;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "editions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x4

    return v0

    :cond_1e
    const/4 v0, 0x2

    return v0
.end method
