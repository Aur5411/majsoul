.class public final Lq/G1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:Lq/Q;

.field public final b:Ljava/lang/String;

.field public final c:Lq/S1;

.field public final d:[Lq/G1;

.field public final e:[Lq/M1;

.field public final f:[Lq/R1;

.field public final g:[Lq/R1;

.field public final h:[Lq/R1;

.field public final i:[Lq/V1;

.field public final j:I

.field public final k:[I

.field public final l:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    add-int/lit8 v1, v0, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 5
    :cond_18
    const-string v0, ""

    move-object v1, p1

    .line 6
    :goto_1b
    sget-object v3, Lq/Q;->p:Lq/Q;

    invoke-virtual {v3}, Lq/Q;->G()Lq/J;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object v1, v3, Lq/J;->f:Ljava/io/Serializable;

    .line 9
    iget v1, v3, Lq/J;->e:I

    const/4 v4, 0x1

    or-int/2addr v1, v4

    iput v1, v3, Lq/J;->e:I

    .line 10
    invoke-virtual {v3}, Lq/t2;->M()V

    .line 11
    sget-object v1, Lq/M;->i:Lq/M;

    invoke-virtual {v1}, Lq/M;->G()Lq/L;

    move-result-object v1

    .line 12
    iput v4, v1, Lq/L;->f:I

    .line 13
    iget v5, v1, Lq/L;->e:I

    or-int/2addr v5, v4

    iput v5, v1, Lq/L;->e:I

    .line 14
    invoke-virtual {v1}, Lq/t2;->M()V

    const/high16 v5, 0x20000000

    .line 15
    iput v5, v1, Lq/L;->g:I

    .line 16
    iget v6, v1, Lq/L;->e:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v1, Lq/L;->e:I

    .line 17
    invoke-virtual {v1}, Lq/t2;->M()V

    .line 18
    invoke-virtual {v1}, Lq/L;->O()Lq/M;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lq/M;->h()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 20
    invoke-virtual {v3}, Lq/J;->Q()V

    .line 21
    iget-object v6, v3, Lq/J;->k:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v3}, Lq/t2;->M()V

    .line 23
    invoke-virtual {v3}, Lq/J;->O()Lq/Q;

    move-result-object v1

    iput-object v1, p0, Lq/G1;->a:Lq/Q;

    .line 24
    iput-object p1, p0, Lq/G1;->b:Ljava/lang/String;

    .line 25
    sget-object p1, Lq/X1;->c:[Lq/G1;

    .line 26
    iput-object p1, p0, Lq/G1;->d:[Lq/G1;

    .line 27
    sget-object p1, Lq/X1;->e:[Lq/M1;

    .line 28
    iput-object p1, p0, Lq/G1;->e:[Lq/M1;

    .line 29
    sget-object p1, Lq/X1;->d:[Lq/R1;

    .line 30
    iput-object p1, p0, Lq/G1;->f:[Lq/R1;

    .line 31
    iput-object p1, p0, Lq/G1;->g:[Lq/R1;

    .line 32
    iput-object p1, p0, Lq/G1;->h:[Lq/R1;

    .line 33
    sget-object p1, Lq/X1;->g:[Lq/V1;

    .line 34
    iput-object p1, p0, Lq/G1;->i:[Lq/V1;

    .line 35
    iput v2, p0, Lq/G1;->j:I

    .line 36
    new-instance p1, Lq/S1;

    invoke-direct {p1, v0, p0}, Lq/S1;-><init>(Ljava/lang/String;Lq/G1;)V

    iput-object p1, p0, Lq/G1;->c:Lq/S1;

    .line 37
    filled-new-array {v4}, [I

    move-result-object p1

    iput-object p1, p0, Lq/G1;->k:[I

    .line 38
    filled-new-array {v5}, [I

    move-result-object p1

    iput-object p1, p0, Lq/G1;->l:[I

    return-void

    .line 39
    :cond_93
    invoke-static {v1}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lq/Q;Lq/S1;Lq/G1;)V
    .registers 13

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lq/G1;->a:Lq/Q;

    .line 42
    invoke-virtual {p1}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lq/X1;->a(Lq/S1;Lq/G1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lq/G1;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lq/G1;->c:Lq/S1;

    .line 44
    iget-object p3, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_22

    .line 45
    iget-object p3, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 46
    new-array p3, p3, [Lq/V1;

    goto :goto_24

    .line 47
    :cond_22
    sget-object p3, Lq/X1;->g:[Lq/V1;

    .line 48
    :goto_24
    iput-object p3, p0, Lq/G1;->i:[Lq/V1;

    const/4 p3, 0x0

    move v0, p3

    .line 49
    :goto_28
    iget-object v1, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 50
    iget-object v1, p0, Lq/G1;->i:[Lq/V1;

    new-instance v2, Lq/V1;

    .line 51
    iget-object v3, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/j1;

    .line 52
    invoke-direct {v2, v3, p2, p0, v0}, Lq/V1;-><init>(Lq/j1;Lq/S1;Lq/G1;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 53
    :cond_44
    iget-object v0, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 54
    iget-object v0, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    new-array v0, v0, [Lq/G1;

    goto :goto_57

    .line 56
    :cond_55
    sget-object v0, Lq/X1;->c:[Lq/G1;

    .line 57
    :goto_57
    iput-object v0, p0, Lq/G1;->d:[Lq/G1;

    move v0, p3

    .line 58
    :goto_5a
    iget-object v1, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 59
    iget-object v1, p0, Lq/G1;->d:[Lq/G1;

    new-instance v2, Lq/G1;

    .line 60
    iget-object v3, p1, Lq/Q;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Q;

    .line 61
    invoke-direct {v2, v3, p2, p0}, Lq/G1;-><init>(Lq/Q;Lq/S1;Lq/G1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 62
    :cond_76
    iget-object v0, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_87

    .line 63
    iget-object v0, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    new-array v0, v0, [Lq/M1;

    goto :goto_89

    .line 65
    :cond_87
    sget-object v0, Lq/X1;->e:[Lq/M1;

    .line 66
    :goto_89
    iput-object v0, p0, Lq/G1;->e:[Lq/M1;

    move v0, p3

    .line 67
    :goto_8c
    iget-object v1, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a8

    .line 68
    iget-object v1, p0, Lq/G1;->e:[Lq/M1;

    new-instance v2, Lq/M1;

    .line 69
    iget-object v3, p1, Lq/Q;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Y;

    .line 70
    invoke-direct {v2, v3, p2, p0}, Lq/M1;-><init>(Lq/Y;Lq/S1;Lq/G1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 71
    :cond_a8
    iget-object v0, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b9

    .line 72
    iget-object v0, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    new-array v0, v0, [Lq/R1;

    goto :goto_bb

    .line 74
    :cond_b9
    sget-object v0, Lq/X1;->d:[Lq/R1;

    .line 75
    :goto_bb
    iput-object v0, p0, Lq/G1;->f:[Lq/R1;

    move v0, p3

    .line 76
    :goto_be
    iget-object v1, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e0

    .line 77
    iget-object v7, p0, Lq/G1;->f:[Lq/R1;

    new-instance v8, Lq/R1;

    .line 78
    iget-object v1, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lq/C0;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    .line 79
    invoke-direct/range {v1 .. v6}, Lq/R1;-><init>(Lq/C0;Lq/S1;Lq/G1;IZ)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 80
    :cond_e0
    iget-object v0, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f1

    .line 81
    iget-object v0, p0, Lq/G1;->f:[Lq/R1;

    invoke-virtual {v0}, [Lq/R1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/R1;

    goto :goto_f3

    .line 82
    :cond_f1
    sget-object v0, Lq/X1;->d:[Lq/R1;

    .line 83
    :goto_f3
    iput-object v0, p0, Lq/G1;->g:[Lq/R1;

    .line 84
    iget-object v0, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_106

    .line 85
    iget-object v0, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    new-array v0, v0, [Lq/R1;

    goto :goto_108

    .line 87
    :cond_106
    sget-object v0, Lq/X1;->d:[Lq/R1;

    .line 88
    :goto_108
    iput-object v0, p0, Lq/G1;->h:[Lq/R1;

    move v0, p3

    .line 89
    :goto_10b
    iget-object v1, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12d

    .line 90
    iget-object v7, p0, Lq/G1;->h:[Lq/R1;

    new-instance v8, Lq/R1;

    .line 91
    iget-object v1, p1, Lq/Q;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lq/C0;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    .line 92
    invoke-direct/range {v1 .. v6}, Lq/R1;-><init>(Lq/C0;Lq/S1;Lq/G1;IZ)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10b

    :cond_12d
    move v0, p3

    .line 93
    :goto_12e
    iget-object v1, p1, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_145

    .line 94
    iget-object v1, p0, Lq/G1;->i:[Lq/V1;

    aget-object v1, v1, v0

    .line 95
    iget v2, v1, Lq/V1;->f:I

    .line 96
    new-array v2, v2, [Lq/R1;

    .line 97
    iput-object v2, v1, Lq/V1;->g:[Lq/R1;

    .line 98
    iput p3, v1, Lq/V1;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12e

    :cond_145
    move v0, p3

    .line 99
    :goto_146
    iget-object v1, p1, Lq/Q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_163

    .line 100
    iget-object v1, p0, Lq/G1;->f:[Lq/R1;

    aget-object v1, v1, v0

    .line 101
    iget-object v2, v1, Lq/R1;->j:Lq/V1;

    if-eqz v2, :cond_160

    .line 102
    iget-object v3, v2, Lq/V1;->g:[Lq/R1;

    .line 103
    iget v4, v2, Lq/V1;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lq/V1;->f:I

    .line 104
    aput-object v1, v3, v4

    :cond_160
    add-int/lit8 v0, v0, 0x1

    goto :goto_146

    .line 105
    :cond_163
    iget-object v0, p0, Lq/G1;->i:[Lq/V1;

    array-length v1, v0

    move v2, p3

    move v3, v2

    :goto_168
    if-ge v2, v1, :cond_188

    aget-object v4, v0, v2

    .line 106
    iget-object v4, v4, Lq/V1;->g:[Lq/R1;

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17b

    aget-object v4, v4, p3

    .line 107
    iget-boolean v4, v4, Lq/R1;->f:Z

    if-eqz v4, :cond_17b

    add-int/lit8 v3, v3, 0x1

    goto :goto_17d

    :cond_17b
    if-gtz v3, :cond_180

    :goto_17d
    add-int/lit8 v2, v2, 0x1

    goto :goto_168

    .line 108
    :cond_180
    new-instance p1, Lq/K1;

    .line 109
    const-string p2, "Synthetic oneofs must come last."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    .line 110
    throw p1

    .line 111
    :cond_188
    iget-object v0, p0, Lq/G1;->i:[Lq/V1;

    array-length v0, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lq/G1;->j:I

    .line 112
    iget-object p2, p2, Lq/S1;->g:Lq/J1;

    .line 113
    invoke-virtual {p2, p0}, Lq/J1;->b(Lq/T1;)V

    .line 114
    iget-object p2, p1, Lq/Q;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1db

    .line 115
    iget-object p2, p1, Lq/Q;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 116
    new-array p2, p2, [I

    iput-object p2, p0, Lq/G1;->k:[I

    .line 117
    iget-object p2, p1, Lq/Q;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 118
    new-array p2, p2, [I

    iput-object p2, p0, Lq/G1;->l:[I

    .line 119
    iget-object p1, p1, Lq/Q;->j:Ljava/util/List;

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq/M;

    .line 121
    iget-object v0, p0, Lq/G1;->k:[I

    .line 122
    iget v1, p2, Lq/M;->e:I

    .line 123
    aput v1, v0, p3

    .line 124
    iget-object v0, p0, Lq/G1;->l:[I

    .line 125
    iget p2, p2, Lq/M;->f:I

    .line 126
    aput p2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b5

    .line 127
    :cond_1d0
    iget-object p1, p0, Lq/G1;->k:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 128
    iget-object p1, p0, Lq/G1;->l:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_1e1

    .line 129
    :cond_1db
    sget-object p1, Lq/X1;->b:[I

    .line 130
    iput-object p1, p0, Lq/G1;->k:[I

    .line 131
    iput-object p1, p0, Lq/G1;->l:[I

    :goto_1e1
    return-void
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/G1;->c:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/G1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/G1;->a:Lq/Q;

    return-object v0
.end method

.method public final f()V
    .registers 8

    iget-object v0, p0, Lq/G1;->d:[Lq/G1;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lq/G1;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lq/G1;->f:[Lq/R1;

    array-length v1, v0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    invoke-static {v4}, Lq/R1;->f(Lq/R1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1d
    iget-object v0, p0, Lq/G1;->g:[Lq/R1;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v1, v2

    :goto_23
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    if-ge v3, v4, :cond_6f

    aget-object v1, v0, v1

    aget-object v4, v0, v3

    iget-object v5, v1, Lq/R1;->b:Lq/C0;

    iget v5, v5, Lq/C0;->f:I

    iget-object v6, v4, Lq/R1;->b:Lq/C0;

    iget v6, v6, Lq/C0;->f:I

    if-eq v5, v6, :cond_38

    move v1, v3

    goto :goto_23

    :cond_38
    new-instance v0, Lq/K1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lq/R1;->b:Lq/C0;

    iget v3, v3, Lq/C0;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has already been used in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lq/R1;->h:Lq/G1;

    iget-object v3, v3, Lq/G1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" by field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v1}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_6f
    iget-object v0, p0, Lq/G1;->h:[Lq/R1;

    array-length v1, v0

    :goto_72
    if-ge v2, v1, :cond_7c

    aget-object v3, v0, v2

    invoke-static {v3}, Lq/R1;->f(Lq/R1;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_7c
    return-void
.end method

.method public final g(Ljava/lang/String;)Lq/R1;
    .registers 5

    iget-object v0, p0, Lq/G1;->c:Lq/S1;

    iget-object v0, v0, Lq/S1;->g:Lq/J1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lq/G1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lq/J1;->d(ILjava/lang/String;)Lq/T1;

    move-result-object p1

    instance-of v0, p1, Lq/R1;

    if-eqz v0, :cond_26

    check-cast p1, Lq/R1;

    return-object p1

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(I)Lq/R1;
    .registers 8

    iget-object v0, p0, Lq/G1;->g:[Lq/R1;

    array-length v1, v0

    sget-object v2, Lq/R1;->m:[Lq/i6;

    sget-object v2, Lq/X1;->a:Ljava/util/logging/Logger;

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_a
    if-gt v2, v1, :cond_22

    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    aget-object v4, v0, v3

    iget-object v5, v4, Lq/R1;->b:Lq/C0;

    iget v5, v5, Lq/C0;->f:I

    if-ge p1, v5, :cond_1c

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_a

    :cond_1c
    if-le p1, v5, :cond_23

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_a

    :cond_22
    const/4 v4, 0x0

    :cond_23
    return-object v4
.end method

.method public final i()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lq/G1;->f:[Lq/R1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lq/G1;->d:[Lq/G1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lq/G1;->i:[Lq/V1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
