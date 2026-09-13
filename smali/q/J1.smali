.class public final Lq/J1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lq/J1;->c:Ljava/io/Serializable;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lq/J1;->a:Z

    .line 8
    iput-object p1, p0, Lq/J1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLq/A2;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lq/J1;->a:Z

    .line 3
    iput-object p2, p0, Lq/J1;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lq/J1;->c:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>([Lq/S1;Z)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/J1;->c:Ljava/io/Serializable;

    .line 11
    new-instance v0, Ljava/util/IdentityHashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lq/J1;->b:Ljava/lang/Object;

    .line 13
    iput-boolean p2, p0, Lq/J1;->a:Z

    .line 14
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_2b

    aget-object v1, p1, v0

    .line 15
    iget-object v2, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0, v1}, Lq/J1;->e(Lq/S1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 17
    :cond_2b
    iget-object p1, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq/S1;

    .line 18
    :try_start_3f
    iget-object v0, p2, Lq/S1;->a:Lq/P0;

    .line 19
    invoke-virtual {v0}, Lq/P0;->E()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0, p2}, Lq/J1;->a(Ljava/lang/String;Lq/S1;)V
    :try_end_48
    .catch Lq/K1; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_33

    :catch_49
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lq/S1;)V
    .registers 7

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move-object v0, p1

    goto :goto_19

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lq/J1;->a(Ljava/lang/String;Lq/S1;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_19
    new-instance v1, Lq/H1;

    invoke-direct {v1, v0, p1, p2}, Lq/H1;-><init>(Ljava/lang/String;Ljava/lang/String;Lq/S1;)V

    iget-object v2, p0, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/T1;

    if-eqz v1, :cond_5d

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, v1, Lq/H1;

    if-eqz p1, :cond_32

    goto :goto_5d

    :cond_32
    new-instance p1, Lq/K1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined (as something other than a package) in file \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lq/T1;->b()Lq/S1;

    move-result-object v0

    iget-object v0, v0, Lq/S1;->a:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lq/K1;-><init>(Ljava/lang/String;Lq/S1;)V

    throw p1

    :cond_5d
    :goto_5d
    return-void
.end method

.method public b(Lq/T1;)V
    .registers 9

    invoke-virtual {p1}, Lq/T1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\""

    if-ge v2, v3, :cond_46

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x61

    if-gt v5, v3, :cond_20

    const/16 v5, 0x7a

    if-le v3, v5, :cond_43

    :cond_20
    const/16 v5, 0x41

    if-gt v5, v3, :cond_28

    const/16 v5, 0x5a

    if-le v3, v5, :cond_43

    :cond_28
    const/16 v5, 0x5f

    if-eq v3, v5, :cond_43

    const/16 v5, 0x30

    if-gt v5, v3, :cond_37

    const/16 v5, 0x39

    if-gt v3, v5, :cond_37

    if-lez v2, :cond_37

    goto :goto_43

    :cond_37
    new-instance v1, Lq/K1;

    const-string v2, "\" is not a valid identifier."

    invoke-static {v4, v0, v2}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v1

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_46
    invoke-virtual {p1}, Lq/T1;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/T1;

    if-eqz v3, :cond_c8

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lq/T1;->b()Lq/S1;

    move-result-object v2

    invoke-virtual {v3}, Lq/T1;->b()Lq/S1;

    move-result-object v5

    const-string v6, "\"."

    if-ne v2, v5, :cond_a1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7a

    new-instance v1, Lq/K1;

    const-string v2, "\" is already defined."

    invoke-static {v4, v0, v2}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v1

    :cond_7a
    new-instance v3, Lq/K1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is already defined in \""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v3

    :cond_a1
    new-instance v1, Lq/K1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined in file \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lq/T1;->b()Lq/S1;

    move-result-object v0

    iget-object v0, v0, Lq/S1;->a:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v1

    :cond_c8
    return-void

    :cond_c9
    new-instance v0, Lq/K1;

    const-string v1, "Missing name."

    invoke-direct {v0, v1, p1}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/J1;->a:Z

    return-void
.end method

.method public d(ILjava/lang/String;)Lq/T1;
    .registers 9

    iget-object v0, p0, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/T1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_2f

    if-eq p1, v3, :cond_2e

    if-ne p1, v2, :cond_1c

    instance-of v4, v0, Lq/G1;

    if-nez v4, :cond_2e

    instance-of v4, v0, Lq/M1;

    if-eqz v4, :cond_1c

    goto :goto_2e

    :cond_1c
    if-ne p1, v1, :cond_2f

    instance-of v4, v0, Lq/G1;

    if-nez v4, :cond_2e

    instance-of v4, v0, Lq/M1;

    if-nez v4, :cond_2e

    instance-of v4, v0, Lq/H1;

    if-nez v4, :cond_2e

    instance-of v4, v0, Lq/W1;

    if-eqz v4, :cond_2f

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    iget-object v0, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/S1;

    iget-object v4, v4, Lq/S1;->g:Lq/J1;

    iget-object v4, v4, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/T1;

    if-eqz v4, :cond_37

    if-eq p1, v3, :cond_70

    if-ne p1, v2, :cond_5e

    instance-of v5, v4, Lq/G1;

    if-nez v5, :cond_70

    instance-of v5, v4, Lq/M1;

    if-eqz v5, :cond_5e

    goto :goto_70

    :cond_5e
    if-ne p1, v1, :cond_37

    instance-of v5, v4, Lq/G1;

    if-nez v5, :cond_70

    instance-of v5, v4, Lq/M1;

    if-nez v5, :cond_70

    instance-of v5, v4, Lq/H1;

    if-nez v5, :cond_70

    instance-of v5, v4, Lq/W1;

    if-eqz v5, :cond_37

    :cond_70
    :goto_70
    return-object v4

    :cond_71
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lq/S1;)V
    .registers 4

    iget-object p1, p1, Lq/S1;->f:[Lq/S1;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/S1;

    iget-object v1, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lq/J1;->e(Lq/S1;)V

    goto :goto_e

    :cond_28
    return-void
.end method

.method public f(Ljava/lang/String;Lq/T1;)Lq/T1;
    .registers 13

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lq/J1;->d(ILjava/lang/String;)Lq/T1;

    move-result-object v1

    goto :goto_61

    :cond_12
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1d

    move-object v4, p1

    goto :goto_22

    :cond_1d
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lq/T1;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_37

    invoke-virtual {p0, v2, p1}, Lq/J1;->d(ILjava/lang/String;)Lq/T1;

    move-result-object v1

    move-object v0, p1

    goto :goto_61

    :cond_37
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {p0, v9, v8}, Lq/J1;->d(ILjava/lang/String;)Lq/T1;

    move-result-object v8

    if-eqz v8, :cond_9d

    if-eq v1, v3, :cond_5c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lq/J1;->d(ILjava/lang/String;)Lq/T1;

    move-result-object v0

    move-object v1, v0

    goto :goto_5d

    :cond_5c
    move-object v1, v8

    :goto_5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_61
    if-nez v1, :cond_9c

    iget-boolean v1, p0, Lq/J1;->a:Z

    if-eqz v1, :cond_8e

    sget-object p2, Lq/X1;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The descriptor for message type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" cannot be found and a placeholder is created for it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lq/G1;

    invoke-direct {p1, v0}, Lq/G1;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    iget-object v0, p1, Lq/G1;->c:Lq/S1;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_8e
    new-instance v0, Lq/K1;

    const-string v1, "\""

    const-string v2, "\" is not defined."

    invoke-static {v1, p1, v2}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_9c
    return-object v1

    :cond_9d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2b
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Ljava/lang/CharSequence;)V
    .registers 4

    iget-boolean v0, p0, Lq/J1;->a:Z

    iget-object v1, p0, Lq/J1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/J1;->a:Z

    iget-object v0, p0, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
