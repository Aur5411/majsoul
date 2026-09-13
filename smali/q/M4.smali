.class public final Lq/M4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lq/M4;


# instance fields
.field public final a:Lq/P4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/M4;

    sget v1, Lq/P4;->b:I

    sget-object v1, Lq/O4;->a:Lq/P4;

    invoke-direct {v0, v1}, Lq/M4;-><init>(Lq/P4;)V

    sput-object v0, Lq/M4;->b:Lq/M4;

    return-void
.end method

.method public constructor <init>(Lq/P4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/M4;->a:Lq/P4;

    return-void
.end method

.method public static d(IILjava/util/List;Lq/J1;)V
    .registers 8

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_c4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_57

    const/4 v2, 0x3

    if-eq v1, v2, :cond_50

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3c

    check-cast v0, Ljava/lang/Integer;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%08x"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto/16 :goto_ee

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bad tag: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    check-cast v0, Lq/W4;

    invoke-static {v0, p3}, Lq/M4;->e(Lq/W4;Lq/J1;)V

    goto/16 :goto_ee

    :cond_57
    :try_start_57
    move-object v1, v0

    check-cast v1, Lq/B;

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object v2
    :try_end_5e
    .catch Lq/U2; {:try_start_57 .. :try_end_5e} :catch_a0

    :try_start_5e
    invoke-virtual {v1}, Lq/B;->i()Lq/C;

    move-result-object v1

    :cond_62
    invoke-virtual {v1}, Lq/C;->z()I

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {v2, v3, v1}, Lq/S4;->q(ILq/E;)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_6e
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lq/C;->a(I)V
    :try_end_72
    .catch Lq/U2; {:try_start_5e .. :try_end_72} :catch_95
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_72} :catch_93

    :try_start_72
    invoke-virtual {v2}, Lq/S4;->n()Lq/W4;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {p3, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lq/J1;->c()V

    iget-object v2, p3, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Lq/M4;->e(Lq/W4;Lq/J1;)V

    invoke-virtual {p3}, Lq/J1;->g()V

    const-string v1, "}"

    invoke-virtual {p3, v1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_ee

    :catch_93
    move-exception v1

    goto :goto_97

    :catch_95
    move-exception v1

    goto :goto_9f

    :goto_97
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_9f
    throw v1
    :try_end_a0
    .catch Lq/U2; {:try_start_72 .. :try_end_a0} :catch_a0

    :catch_a0
    const-string v1, "\""

    invoke-virtual {p3, v1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    check-cast v0, Lq/B;

    sget-object v2, Lq/N4;->a:Ljava/util/logging/Logger;

    invoke-static {v0}, Lq/k;->c(Lq/B;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_ee

    :cond_b4
    check-cast v0, Ljava/lang/Long;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%016x"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_ee

    :cond_c4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lq/N4;->a:Ljava/util/logging/Logger;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d7

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_eb

    :cond_d7
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_eb
    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :goto_ee
    invoke-virtual {p3}, Lq/J1;->c()V

    goto/16 :goto_4

    :cond_f3
    return-void
.end method

.method public static e(Lq/W4;Lq/J1;)V
    .registers 7

    iget-object p0, p0, Lq/W4;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/U4;

    iget-object v3, v2, Lq/U4;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, p1}, Lq/M4;->d(IILjava/util/List;Lq/J1;)V

    iget-object v3, v2, Lq/U4;->b:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v1, v4, v3, p1}, Lq/M4;->d(IILjava/util/List;Lq/J1;)V

    iget-object v3, v2, Lq/U4;->c:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v1, v4, v3, p1}, Lq/M4;->d(IILjava/util/List;Lq/J1;)V

    iget-object v3, v2, Lq/U4;->d:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v1, v4, v3, p1}, Lq/M4;->d(IILjava/util/List;Lq/J1;)V

    iget-object v1, v2, Lq/U4;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/W4;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    const-string v3, " {"

    invoke-virtual {p1, v3}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lq/J1;->c()V

    iget-object v3, p1, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Lq/M4;->e(Lq/W4;Lq/J1;)V

    invoke-virtual {p1}, Lq/J1;->g()V

    const-string v2, "}"

    invoke-virtual {p1, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lq/J1;->c()V

    goto :goto_4a

    :cond_83
    return-void
.end method


# virtual methods
.method public final a(Lq/S3;Lq/J1;)V
    .registers 10

    invoke-interface {p1}, Lq/S3;->k()Lq/G1;

    move-result-object v0

    iget-object v0, v0, Lq/G1;->b:Ljava/lang/String;

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {p1}, Lq/S3;->k()Lq/G1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lq/G1;->h(I)Lq/R1;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lq/G1;->h(I)Lq/R1;

    move-result-object v0

    if-eqz v2, :cond_9f

    iget-object v3, v2, Lq/R1;->g:Lq/Q1;

    sget-object v4, Lq/Q1;->b:Lq/Q1;

    if-ne v3, v4, :cond_9f

    if-eqz v0, :cond_9f

    iget-object v3, v0, Lq/R1;->g:Lq/Q1;

    sget-object v4, Lq/Q1;->e:Lq/Q1;

    if-eq v3, v4, :cond_2d

    goto :goto_9f

    :cond_2d
    invoke-interface {p1, v2}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_9f

    :cond_3a
    invoke-interface {p1, v0}, Lq/S3;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v0

    :try_start_3e
    iget-object v3, p0, Lq/M4;->a:Lq/P4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-le v5, v1, :cond_93

    array-length v5, v4

    sub-int/2addr v5, v1

    aget-object v1, v4, v5

    iget-object v3, v3, Lq/P4;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/G1;

    if-nez v1, :cond_5b

    goto :goto_9f

    :cond_5b
    invoke-static {v1}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v1

    new-instance v3, Lq/Y1;

    iget-object v1, v1, Lq/Z1;->c:Lq/G1;

    invoke-direct {v3, v1}, Lq/Y1;-><init>(Lq/G1;)V

    check-cast v0, Lq/B;

    invoke-virtual {v3, v0}, Lq/a;->x(Lq/B;)V
    :try_end_6b
    .catch Lq/U2; {:try_start_3e .. :try_end_6b} :catch_9f

    const-string p1, "["

    invoke-virtual {p2, p1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    const-string p1, "] {"

    invoke-virtual {p2, p1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lq/J1;->c()V

    iget-object p1, p2, Lq/J1;->c:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, p2}, Lq/M4;->a(Lq/S3;Lq/J1;)V

    invoke-virtual {p2}, Lq/J1;->g()V

    const-string p1, "}"

    invoke-virtual {p2, p1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lq/J1;->c()V

    return-void

    :cond_93
    :try_start_93
    new-instance v0, Lq/U2;

    const-string v1, "Invalid type url found: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9f
    .catch Lq/U2; {:try_start_93 .. :try_end_9f} :catch_9f

    :catch_9f
    :cond_9f
    :goto_9f
    invoke-interface {p1}, Lq/S3;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ab
    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/R1;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lq/R1;->l()Z

    move-result v3

    if-eqz v3, :cond_113

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lq/L4;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, Lq/L4;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lq/R1;->j()Lq/G1;

    move-result-object v4

    invoke-virtual {v4}, Lq/G1;->i()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/R1;

    iget-object v4, v4, Lq/R1;->g:Lq/Q1;

    iget-object v4, v4, Lq/Q1;->a:Lq/P1;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_fa
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_101
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/L4;

    iget-object v3, v3, Lq/L4;->a:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, p2}, Lq/M4;->b(Lq/R1;Ljava/lang/Object;Lq/J1;)V

    goto :goto_101

    :cond_113
    invoke-virtual {v2}, Lq/R1;->p()Z

    move-result v3

    if-eqz v3, :cond_12d

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lq/M4;->b(Lq/R1;Ljava/lang/Object;Lq/J1;)V

    goto :goto_11f

    :cond_12d
    invoke-virtual {p0, v2, v1, p2}, Lq/M4;->b(Lq/R1;Ljava/lang/Object;Lq/J1;)V

    goto/16 :goto_ab

    :cond_132
    invoke-interface {p1}, Lq/S3;->a()Lq/W4;

    move-result-object p1

    invoke-static {p1, p2}, Lq/M4;->e(Lq/W4;Lq/J1;)V

    return-void
.end method

.method public final b(Lq/R1;Ljava/lang/Object;Lq/J1;)V
    .registers 10

    iget-object v0, p1, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->J()Z

    move-result v0

    iget-object v1, p1, Lq/R1;->b:Lq/C0;

    if-eqz v0, :cond_58

    const-string v0, "["

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->f:Z

    iget-object v2, p1, Lq/R1;->c:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    sget-object v3, Lq/Q1;->d:Lq/Q1;

    if-ne v0, v3, :cond_4f

    invoke-virtual {p1}, Lq/R1;->m()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v1}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object v0

    iget-object v1, p1, Lq/R1;->e:Lq/G1;

    if-ne v1, v0, :cond_4f

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object v0

    iget-object v0, v0, Lq/G1;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_52

    :cond_41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This field is not an extension. ("

    const-string p3, ")"

    invoke-static {p2, v2, p3}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    invoke-virtual {p3, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :goto_52
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_73

    :cond_58
    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    sget-object v2, Lq/Q1;->c:Lq/Q1;

    if-ne v0, v2, :cond_6c

    invoke-virtual {p1}, Lq/R1;->j()Lq/G1;

    move-result-object v0

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_73

    :cond_6c
    invoke-virtual {v1}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :goto_73
    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_8d

    const-string v0, " {"

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lq/J1;->c()V

    iget-object v0, p3, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    :cond_8d
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :goto_92
    iget-object v0, p1, Lq/R1;->g:Lq/Q1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "\""

    packed-switch v0, :pswitch_data_186

    goto/16 :goto_173

    :pswitch_9f  #0xd
    check-cast p2, Lq/O1;

    iget-object p2, p2, Lq/O1;->a:Lq/e0;

    invoke-virtual {p2}, Lq/e0;->C()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto/16 :goto_173

    :pswitch_ac  #0xb
    invoke-virtual {p3, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    instance-of v0, p2, Lq/B;

    if-eqz v0, :cond_bf

    check-cast p2, Lq/B;

    sget-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    invoke-static {p2}, Lq/k;->c(Lq/B;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_d0

    :cond_bf
    check-cast p2, [B

    sget-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    new-instance v0, Lq/s2;

    const/4 v3, 0x7

    invoke-direct {v0, v3, p2}, Lq/s2;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lq/k;->d(Lq/s2;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :goto_d0
    invoke-virtual {p3, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto/16 :goto_173

    :pswitch_d5  #0x9, 0xa
    check-cast p2, Lq/S3;

    invoke-virtual {p0, p2, p3}, Lq/M4;->a(Lq/S3;Lq/J1;)V

    goto/16 :goto_173

    :pswitch_dc  #0x8
    invoke-virtual {p3, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lq/B;

    sget-object v3, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Lq/B;-><init>([B)V

    invoke-static {v0}, Lq/k;->c(Lq/B;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto/16 :goto_173

    :pswitch_f8  #0x7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto/16 :goto_173

    :pswitch_103  #0x6, 0xc
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lq/N4;->a:Ljava/util/logging/Logger;

    if-ltz p2, :cond_112

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_11d

    :cond_112
    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    :goto_11d
    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_173

    :pswitch_121  #0x4, 0xe, 0x10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_173

    :pswitch_12b  #0x3, 0x5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p2, Lq/N4;->a:Ljava/util/logging/Logger;

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_13e

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_152

    :cond_13e
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_152
    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_173

    :pswitch_156  #0x2, 0xf, 0x11
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_173

    :pswitch_160  #0x1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    goto :goto_173

    :pswitch_16a  #0x0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :goto_173
    iget-object p1, p1, Lq/R1;->g:Lq/Q1;

    iget-object p1, p1, Lq/Q1;->a:Lq/P1;

    if-ne p1, v1, :cond_181

    invoke-virtual {p3}, Lq/J1;->g()V

    const-string p1, "}"

    invoke-virtual {p3, p1}, Lq/J1;->h(Ljava/lang/CharSequence;)V

    :cond_181
    invoke-virtual {p3}, Lq/J1;->c()V

    return-void

    nop

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_16a  #00000000
        :pswitch_160  #00000001
        :pswitch_156  #00000002
        :pswitch_12b  #00000003
        :pswitch_121  #00000004
        :pswitch_12b  #00000005
        :pswitch_103  #00000006
        :pswitch_f8  #00000007
        :pswitch_dc  #00000008
        :pswitch_d5  #00000009
        :pswitch_d5  #0000000a
        :pswitch_ac  #0000000b
        :pswitch_103  #0000000c
        :pswitch_9f  #0000000d
        :pswitch_121  #0000000e
        :pswitch_156  #0000000f
        :pswitch_121  #00000010
        :pswitch_156  #00000011
    .end packed-switch
.end method

.method public final c(Lq/S3;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lq/N4;->a:Ljava/util/logging/Logger;

    new-instance v1, Lq/J1;

    invoke-direct {v1, v0}, Lq/J1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v1}, Lq/M4;->a(Lq/S3;Lq/J1;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
