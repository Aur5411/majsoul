.class public final Lq/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/z2;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;Lq/v2;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/A2;->c:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq/A2;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lq/A2;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lq/A2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lq/A2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lq/A2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq/G1;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 9

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lq/A2;->a:Ljava/lang/Object;

    .line 8
    const-string p1, "get"

    const-string v0, "Case"

    .line 9
    invoke-static {p1, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p3, v1, v3}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lq/A2;->b:Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-array p3, v2, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lq/A2;->c:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "clear"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {p4, p1, p2}, Lq/K2;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method

.method public static A(Lq/Y1;Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v0, p1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {p1, p2}, Lq/A2;->j(Lq/R1;I)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public static B(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_64

    const-string v0, ".changeMainCharacter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".changeCharacterSkin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".changeCharacterView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".changeCommonView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".updateCharacterSort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".useTitle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".setLoadingImage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".saveCommonViews"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".useCommonView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".receiveCharacterRewards"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".addFinishedEnding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".setRandomCharacter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_64

    :cond_62
    const/4 p0, 0x1

    goto :goto_65

    :cond_64
    const/4 p0, 0x0

    :goto_65
    return p0
.end method

.method public static C(ILq/F2;Lq/u4;Ljava/util/Map;)I
    .registers 5

    iget-object p2, p2, Lq/u4;->e:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_30

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_30
    const-string p2, "40"

    iget-object p1, p1, Lq/F2;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_79

    :cond_54
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_60

    goto :goto_79

    :cond_60
    :try_start_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "01"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_79} :catch_79

    :catch_79
    :goto_79
    return p3
.end method

.method public static D([BILjava/lang/String;Lq/B;)V
    .registers 6

    array-length v0, p0

    sub-int/2addr v0, p1

    new-instance v1, Lq/F;

    invoke-direct {v1, p0, p1, v0}, Lq/F;-><init>([BII)V

    const/4 p0, 0x2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    invoke-virtual {v1, p1, p0}, Lq/F;->M(II)V

    invoke-virtual {v1, p2}, Lq/F;->L(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p3}, Lq/B;->size()I

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_24

    :cond_1e
    invoke-virtual {v1, p0, p0}, Lq/F;->M(II)V

    invoke-virtual {v1, p3}, Lq/F;->D(Lq/B;)V

    :goto_24
    return-void
.end method

.method public static e(Lq/Y1;Lq/F2;Lq/u4;)V
    .registers 5

    iget v0, p2, Lq/u4;->a:I

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lq/A2;->C(ILq/F2;Lq/u4;Ljava/util/Map;)I

    move-result p1

    const-string v0, "avatar_id"

    invoke-static {p0, v0, p1}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_11
    iget p1, p2, Lq/u4;->b:I

    if-lez p1, :cond_1a

    const-string v0, "title"

    invoke-static {p0, v0, p1}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_1a
    iget-object p1, p2, Lq/u4;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "loading_image"

    invoke-static {p0, v0, p1}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    :cond_27
    invoke-static {p2}, Lq/A2;->z(Lq/u4;)I

    move-result p1

    if-eqz p1, :cond_32

    const-string v0, "avatar_frame"

    invoke-static {p0, v0, p1}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_32
    invoke-static {p0, p2}, Lq/A2;->f(Lq/Y1;Lq/u4;)V

    return-void
.end method

.method public static f(Lq/Y1;Lq/u4;)V
    .registers 7

    iget-object v0, p1, Lq/u4;->f:Ljava/util/HashMap;

    iget p1, p1, Lq/u4;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_68

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_68

    :cond_17
    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    const-string v1, "views"

    invoke-virtual {v0, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lq/R1;->p()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_68

    :cond_28
    invoke-virtual {p0, v0}, Lq/Y1;->I(Lq/R1;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/t4;

    invoke-virtual {v0}, Lq/R1;->j()Lq/G1;

    move-result-object v2

    new-instance v3, Lq/Y1;

    invoke-direct {v3, v2}, Lq/Y1;-><init>(Lq/G1;)V

    iget v2, v1, Lq/t4;->a:I

    const-string v4, "slot"

    invoke-static {v3, v4, v2}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v2, "type"

    iget v4, v1, Lq/t4;->b:I

    invoke-static {v3, v2, v4}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v2, "item_id"

    iget v4, v1, Lq/t4;->c:I

    invoke-static {v3, v2, v4}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v2, "item_id_list"

    iget-object v1, v1, Lq/t4;->d:Ljava/util/List;

    invoke-static {v3, v2, v1}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lq/Y1;->G()Lq/Z1;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_68
    :goto_68
    return-void
.end method

.method public static h(ILq/G1;)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_6

    sget-object p1, Lq/B;->c:Lq/B;

    goto :goto_13

    :cond_6
    invoke-static {p1}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object p1

    invoke-virtual {p1}, Lq/c;->s()[B

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lq/B;->d([BII)Lq/B;

    move-result-object p1

    :goto_13
    invoke-virtual {p1}, Lq/B;->size()I

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1c

    move v4, v0

    goto :goto_2a

    :cond_1c
    invoke-static {v2}, Lq/F;->x(I)I

    move-result v1

    invoke-virtual {p1}, Lq/B;->size()I

    move-result v3

    invoke-static {v3}, Lq/F;->y(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    :goto_2a
    const/4 v1, 0x3

    add-int/2addr v4, v1

    new-array v3, v4, [B

    aput-byte v1, v3, v0

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v3, v4

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v3, v2

    const-string p0, ""

    invoke-static {v3, v1, p0, p1}, Lq/A2;->D([BILjava/lang/String;Lq/B;)V

    return-object v3
.end method

.method public static j(Lq/R1;I)Ljava/lang/Number;
    .registers 3

    iget-object p0, p0, Lq/R1;->g:Lq/Q1;

    iget-object p0, p0, Lq/Q1;->a:Lq/P1;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_27

    :cond_16
    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_27

    :cond_1c
    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_27

    :cond_22
    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_27
    return-object p0
.end method

.method public static k(Lq/Y1;Lq/F2;)V
    .registers 8

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Lq/R1;->p()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_a5

    :cond_12
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Lq/F2;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lq/F2;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    const-string v4, "item_id"

    if-eqz v3, :cond_55

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lq/Z1;

    if-eqz v5, :cond_37

    check-cast v3, Lq/Z1;

    invoke-static {v4, v3}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v5

    if-eqz v5, :cond_37

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_55
    invoke-virtual {p0, v0}, Lq/Y1;->I(Lq/R1;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/Z1;

    invoke-virtual {p0, v0, v3}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_60

    :cond_70
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    goto :goto_74

    :cond_87
    invoke-virtual {v0}, Lq/R1;->j()Lq/G1;

    move-result-object v3

    new-instance v5, Lq/Y1;

    invoke-direct {v5, v3}, Lq/Y1;-><init>(Lq/G1;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v4, v2}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v2, "stack"

    const/4 v3, 0x1

    invoke-static {v5, v2, v3}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    invoke-virtual {v5}, Lq/Y1;->G()Lq/Z1;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_74

    :cond_a5
    :goto_a5
    return-void
.end method

.method public static l(Lq/Y1;Lq/F2;Lq/u4;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Lq/Y1;->a:Lq/G1;

    const-string v5, "characters"

    invoke-virtual {v4, v5}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v4

    const-string v6, "skin"

    const-string v7, "charid"

    if-eqz v4, :cond_56

    invoke-virtual {v4}, Lq/R1;->p()Z

    move-result v8

    if-nez v8, :cond_20

    goto :goto_56

    :cond_20
    invoke-virtual {v0, v4}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Ljava/util/List;

    if-eqz v8, :cond_56

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lq/Z1;

    if-eqz v9, :cond_2e

    check-cast v8, Lq/Z1;

    invoke-static {v7, v8}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v9

    invoke-static {v6, v8}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v8

    if-eqz v9, :cond_2e

    if-eqz v8, :cond_2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_56
    :goto_56
    iget-object v4, v0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v4, v5}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v5

    iget-object v8, v1, Lq/F2;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    if-eqz v5, :cond_11a

    invoke-virtual {v5}, Lq/R1;->p()Z

    move-result v10

    if-eqz v10, :cond_11a

    invoke-virtual {v0, v5}, Lq/Y1;->I(Lq/R1;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_70
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5}, Lq/R1;->j()Lq/G1;

    move-result-object v12

    new-instance v13, Lq/Y1;

    invoke-direct {v13, v12}, Lq/Y1;-><init>(Lq/G1;)V

    invoke-static {v13, v7, v11}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    invoke-static {v11, v1, v2, v3}, Lq/A2;->C(ILq/F2;Lq/u4;Ljava/util/Map;)I

    move-result v11

    invoke-static {v13, v6, v11}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v11, "level"

    const/4 v14, 0x5

    invoke-static {v13, v11, v14}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v11, "exp"

    invoke-static {v13, v11, v9}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v11, "is_upgraded"

    invoke-virtual {v12, v11}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v11

    if-eqz v11, :cond_ab

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v11, v12}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_ab
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v16, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v11, v12, v15, v9, v3}, [Ljava/lang/Object;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_d0
    if-ge v11, v14, :cond_dd

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_d0

    :cond_dd
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v9, v13, Lq/Y1;->a:Lq/G1;

    const-string v11, "rewarded_level"

    invoke-virtual {v9, v11}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v9

    if-eqz v9, :cond_10e

    invoke-virtual {v9}, Lq/R1;->p()Z

    move-result v11

    if-nez v11, :cond_f2

    goto :goto_10e

    :cond_f2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v9, v11}, Lq/A2;->j(Lq/R1;I)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v13, v9, v11}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_f6

    :cond_10e
    :goto_10e
    invoke-virtual {v13}, Lq/Y1;->G()Lq/Z1;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_70

    :cond_11a
    iget-object v3, v1, Lq/F2;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    const-string v5, "skins"

    invoke-static {v0, v5, v3}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "finished_endings"

    iget-object v1, v1, Lq/F2;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v3, v1}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "rewarded_endings"

    invoke-static {v0, v3, v1}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "hidden_characters"

    invoke-virtual {v4, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v1

    if-eqz v1, :cond_13c

    invoke-virtual {v0, v1}, Lq/Y1;->I(Lq/R1;)V

    :cond_13c
    const-string v1, "main_character_id"

    invoke-virtual {v4, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-eqz v3, :cond_17e

    iget v2, v2, Lq/u4;->a:I

    if-eqz v2, :cond_149

    goto :goto_162

    :cond_149
    invoke-virtual {v4, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v1

    if-nez v1, :cond_151

    const/4 v2, 0x0

    goto :goto_162

    :cond_151
    invoke-virtual {v0, v1}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_160

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_161

    :cond_160
    const/4 v1, 0x0

    :goto_161
    move v2, v1

    :goto_162
    if-nez v2, :cond_175

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_175

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_175
    if-eqz v2, :cond_17e

    invoke-static {v3, v2}, Lq/A2;->j(Lq/R1;I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_17e
    return-void
.end method

.method public static n(Lq/Z1;)J
    .registers 4

    iget-object v0, p0, Lq/Z1;->c:Lq/G1;

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    return-wide v1

    :cond_d
    invoke-virtual {p0, v0}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :cond_1b
    return-wide v1
.end method

.method public static o(Ljava/lang/String;Lq/Z1;)I
    .registers 3

    iget-object v0, p1, Lq/Z1;->c:Lq/G1;

    invoke-virtual {v0, p0}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p1, p0}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_18

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_18
    return v0
.end method

.method public static p([BII)Lq/r4;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lq/E;->d([BIIZ)Lq/C;

    move-result-object p0

    sget-object p1, Lq/B;->c:Lq/B;

    const-string p2, ""

    :cond_9
    :goto_9
    iget v0, p0, Lq/C;->e:I

    iget v1, p0, Lq/C;->c:I

    if-ne v0, v1, :cond_10

    goto :goto_2f

    :cond_10
    invoke-virtual {p0}, Lq/C;->z()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2f

    :cond_17
    ushr-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    invoke-virtual {p0}, Lq/C;->y()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :cond_21
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    invoke-virtual {p0}, Lq/C;->h()Lq/B;

    move-result-object p1

    goto :goto_9

    :cond_29
    invoke-virtual {p0, v0}, Lq/C;->C(I)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_2f
    new-instance p0, Lq/r4;

    invoke-direct {p0, p2, p1}, Lq/r4;-><init>(Ljava/lang/String;Lq/B;)V

    return-object p0
.end method

.method public static s(Ljava/lang/String;Lq/Z1;)Ljava/util/List;
    .registers 4

    iget-object v0, p1, Lq/Z1;->c:Lq/G1;

    invoke-virtual {v0, p0}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_44

    :cond_f
    invoke-virtual {p1, p0}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_3f

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3e
    return-object p1

    :cond_3f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v0, p1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2e

    :cond_f
    invoke-virtual {p0, p1}, Lq/Y1;->I(Lq/R1;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lq/A2;->j(Lq/R1;I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_16

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static u(Lq/Y1;Lq/u4;)V
    .registers 11

    iget-object v0, p1, Lq/u4;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lq/Y1;->a:Lq/G1;

    const-string v2, "all_common_views"

    invoke-virtual {v1, v2}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0, v1}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lq/Z1;

    if-eqz v2, :cond_1e

    check-cast v0, Lq/Z1;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    invoke-static {v0, p1}, Lq/A2;->u(Lq/Y1;Lq/u4;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_2f
    return-void

    :cond_30
    const-string v1, "views"

    iget-object v2, p0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v2, v1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v1

    if-eqz v1, :cond_d1

    invoke-virtual {v1}, Lq/R1;->p()Z

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_d1

    :cond_42
    invoke-virtual {p0, v1}, Lq/Y1;->I(Lq/R1;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Lq/R1;->j()Lq/G1;

    move-result-object v3

    new-instance v4, Lq/Y1;

    invoke-direct {v4, v3}, Lq/Y1;-><init>(Lq/G1;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "index"

    invoke-static {v4, v6, v5}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v5, "values"

    invoke-virtual {v3, v5}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-eqz v3, :cond_c2

    invoke-virtual {v3}, Lq/R1;->p()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/t4;

    invoke-virtual {v3}, Lq/R1;->j()Lq/G1;

    move-result-object v6

    new-instance v7, Lq/Y1;

    invoke-direct {v7, v6}, Lq/Y1;-><init>(Lq/G1;)V

    iget v6, v5, Lq/t4;->a:I

    const-string v8, "slot"

    invoke-static {v7, v8, v6}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v6, "type"

    iget v8, v5, Lq/t4;->b:I

    invoke-static {v7, v6, v8}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v6, "item_id"

    iget v8, v5, Lq/t4;->c:I

    invoke-static {v7, v6, v8}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v6, "item_id_list"

    iget-object v5, v5, Lq/t4;->d:Ljava/util/List;

    invoke-static {v7, v6, v5}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v7}, Lq/Y1;->G()Lq/Z1;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_89

    :cond_c2
    invoke-virtual {v4}, Lq/Y1;->G()Lq/Z1;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_4d

    :cond_ca
    const-string v0, "use"

    iget p1, p1, Lq/u4;->d:I

    invoke-static {p0, v0, p1}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_d1
    :goto_d1
    return-void
.end method

.method public static x(Lq/Y1;Ljava/lang/String;Lq/F2;Lq/u4;)V
    .registers 16

    iget-object v0, p0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v0, p1}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p1

    if-eqz p1, :cond_141

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_141

    :cond_10
    invoke-virtual {p0, p1}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_141

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lq/Z1;

    if-eqz v3, :cond_23

    check-cast v2, Lq/Z1;

    const-wide/16 v3, 0x0

    iget-wide v5, p3, Lq/u4;->c:J

    cmp-long v3, v5, v3

    const-string v4, "charid"

    const/4 v7, 0x0

    const-string v8, "character"

    iget v9, p3, Lq/u4;->a:I

    if-eqz v3, :cond_4b

    invoke-static {v2}, Lq/A2;->n(Lq/Z1;)J

    move-result-wide v10

    cmp-long v3, v10, v5

    if-nez v3, :cond_125

    goto :goto_6b

    :cond_4b
    if-nez v9, :cond_4f

    goto/16 :goto_125

    :cond_4f
    iget-object v3, v2, Lq/Z1;->c:Lq/G1;

    invoke-virtual {v3, v8}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-nez v3, :cond_59

    :cond_57
    move-object v3, v7

    goto :goto_63

    :cond_59
    invoke-virtual {v2, v3}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lq/Z1;

    if-eqz v5, :cond_57

    check-cast v3, Lq/Z1;

    :goto_63
    if-eqz v3, :cond_125

    invoke-static {v4, v3}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v3

    if-ne v3, v9, :cond_125

    :goto_6b
    invoke-virtual {v2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v2

    if-nez v9, :cond_73

    goto/16 :goto_11c

    :cond_73
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, p2, p3, v3}, Lq/A2;->C(ILq/F2;Lq/u4;Ljava/util/Map;)I

    move-result v3

    const-string v5, "avatar_id"

    invoke-static {v2, v5, v3}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    iget v5, p3, Lq/u4;->b:I

    if-lez v5, :cond_89

    const-string v6, "title"

    invoke-static {v2, v6, v5}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_89
    invoke-static {p3}, Lq/A2;->z(Lq/u4;)I

    move-result v5

    if-eqz v5, :cond_94

    const-string v6, "avatar_frame"

    invoke-static {v2, v6, v5}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_94
    iget-object v5, v2, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v5, v8}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v5

    if-eqz v5, :cond_119

    invoke-virtual {v2, v5}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Lq/Z1;

    if-eqz v8, :cond_a7

    move-object v7, v6

    check-cast v7, Lq/Z1;

    :cond_a7
    if-nez v7, :cond_b1

    invoke-virtual {v5}, Lq/R1;->j()Lq/G1;

    move-result-object v6

    invoke-static {v6}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v7

    :cond_b1
    invoke-virtual {v7}, Lq/Z1;->v()Lq/Y1;

    move-result-object v6

    invoke-static {v6, v4, v9}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v4, "skin"

    invoke-static {v6, v4, v3}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v3, "level"

    const/4 v4, 0x5

    invoke-static {v6, v3, v4}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v3, "exp"

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    iget-object v3, v6, Lq/Y1;->a:Lq/G1;

    const-string v8, "is_upgraded"

    invoke-virtual {v3, v8}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-eqz v3, :cond_d8

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3, v8}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_d8
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v3, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_f9
    if-ge v7, v4, :cond_106

    aget-object v9, v3, v7

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_f9

    :cond_106
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v4, "rewarded_level"

    invoke-static {v6, v4, v3}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v6, p3}, Lq/A2;->f(Lq/Y1;Lq/u4;)V

    invoke-virtual {v6}, Lq/Y1;->G()Lq/Z1;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_119
    invoke-static {v2, p3}, Lq/A2;->f(Lq/Y1;Lq/u4;)V

    :goto_11c
    invoke-virtual {v2}, Lq/Y1;->G()Lq/Z1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_125
    :goto_125
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_12a
    invoke-virtual {p0, p1}, Lq/Y1;->I(Lq/R1;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_131
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_141

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lq/Z1;

    invoke-virtual {p0, p1, p3}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    goto :goto_131

    :cond_141
    :goto_141
    return-void
.end method

.method public static z(Lq/u4;)I
    .registers 5

    iget-object v0, p0, Lq/u4;->f:Ljava/util/HashMap;

    iget p0, p0, Lq/u4;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    :cond_12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/t4;

    iget v2, v1, Lq/t4;->a:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_16

    iget v1, v1, Lq/t4;->c:I

    if-eqz v1, :cond_16

    return v1

    :cond_2c
    return v0
.end method


# virtual methods
.method public a(Lq/t2;)Lq/R1;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p1

    if-lez p1, :cond_1c

    iget-object v0, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v0, Lq/G1;

    invoke-virtual {v0, p1}, Lq/G1;->h(I)Lq/R1;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lq/K2;)Lq/R1;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lq/A2;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v0}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p1

    if-lez p1, :cond_1c

    iget-object v0, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v0, Lq/G1;

    invoke-virtual {v0, p1}, Lq/G1;->h(I)Lq/R1;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lq/K2;)Z
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lq/A2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-static {p1, v2, v1}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p1

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public d(Lq/t2;)Z
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-static {p1, v2, v1}, Lq/K2;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p1

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public g(Ljava/lang/String;Lq/B;)[B
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    const-string v4, ".changeMainCharacter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    if-eqz v1, :cond_1e

    const-string v5, ".changeCharacterSkin"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v3

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    const/4 v6, 0x0

    if-nez v4, :cond_25

    if-nez v5, :cond_25

    return-object v6

    :cond_25
    iget-object v7, v0, Lq/A2;->b:Ljava/lang/Object;

    check-cast v7, Lq/v2;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_30

    move-object v1, v6

    goto :goto_46

    :cond_30
    const-string v8, "."

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3c
    iget-object v8, v7, Lq/v2;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/U1;

    :goto_46
    if-nez v1, :cond_4a

    move-object v1, v6

    goto :goto_4c

    :cond_4a
    iget-object v1, v1, Lq/U1;->d:Lq/G1;

    :goto_4c
    const-string v8, ".lq.NotifyAccountUpdate"

    invoke-virtual {v7, v8}, Lq/v2;->l(Ljava/lang/String;)Lq/G1;

    move-result-object v7

    if-eqz v1, :cond_56

    if-nez v7, :cond_59

    :cond_56
    move-object v0, v6

    goto/16 :goto_198

    :cond_59
    move-object/from16 v9, p2

    invoke-static {v1, v9}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object v1

    const-string v9, "character_id"

    invoke-static {v9, v1}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v10

    if-nez v10, :cond_68

    return-object v6

    :cond_68
    iget-object v11, v0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    invoke-static {v11}, Lq/F2;->b(Landroid/content/Context;)Lq/F2;

    move-result-object v12

    invoke-static {v11}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v11

    const-string v13, "skin"

    if-eqz v5, :cond_7d

    invoke-static {v13, v1}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v1

    goto :goto_85

    :cond_7d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v10, v12, v11, v1}, Lq/A2;->C(ILq/F2;Lq/u4;Ljava/util/Map;)I

    move-result v1

    :goto_85
    if-nez v1, :cond_88

    return-object v6

    :cond_88
    new-instance v5, Lq/Y1;

    invoke-direct {v5, v7}, Lq/Y1;-><init>(Lq/G1;)V

    const-string v12, "update"

    invoke-virtual {v7, v12}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v7

    if-nez v7, :cond_96

    return-object v6

    :cond_96
    invoke-virtual {v7}, Lq/R1;->j()Lq/G1;

    move-result-object v12

    new-instance v14, Lq/Y1;

    invoke-direct {v14, v12}, Lq/Y1;-><init>(Lq/G1;)V

    const-string v15, "character"

    invoke-virtual {v12, v15}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v12

    if-nez v12, :cond_a8

    return-object v6

    :cond_a8
    invoke-virtual {v12}, Lq/R1;->j()Lq/G1;

    move-result-object v15

    new-instance v6, Lq/Y1;

    invoke-direct {v6, v15}, Lq/Y1;-><init>(Lq/G1;)V

    const-string v3, "characters"

    invoke-virtual {v15, v3}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-eqz v3, :cond_bf

    invoke-virtual {v3}, Lq/R1;->p()Z

    move-result v15

    if-nez v15, :cond_c2

    :cond_bf
    const/4 v0, 0x0

    goto/16 :goto_198

    :cond_c2
    invoke-virtual {v3}, Lq/R1;->j()Lq/G1;

    move-result-object v15

    new-instance v2, Lq/Y1;

    invoke-direct {v2, v15}, Lq/Y1;-><init>(Lq/G1;)V

    const-string v0, "charid"

    invoke-static {v2, v0, v10}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    invoke-static {v2, v13, v1}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v0, "level"

    const/4 v1, 0x5

    invoke-static {v2, v0, v1}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v0, "exp"

    const/4 v13, 0x0

    invoke-static {v2, v0, v13}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    const-string v0, "is_upgraded"

    invoke-virtual {v15, v0}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v0

    if-eqz v0, :cond_ec

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v13}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_ec
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x4

    move-object/from16 v17, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 p2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v13, v15, v0, v8, v5}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_114
    if-ge v8, v1, :cond_121

    aget-object v13, v0, v8

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_114

    :cond_121
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "rewarded_level"

    invoke-static {v2, v1, v0}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v2, v11}, Lq/A2;->f(Lq/Y1;Lq/u4;)V

    invoke-virtual {v2}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lq/Y1;->F(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    invoke-virtual {v14, v12, v0}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    if-eqz v4, :cond_15a

    const-string v0, "main_character"

    iget-object v1, v14, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v1, v0}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v0

    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Lq/R1;->j()Lq/G1;

    move-result-object v1

    new-instance v2, Lq/Y1;

    invoke-direct {v2, v1}, Lq/Y1;-><init>(Lq/G1;)V

    invoke-static {v2, v9, v10}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lq/Y1;->G()Lq/Z1;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_15a
    invoke-virtual {v14}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v7, v0}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    invoke-virtual {v0}, Lq/c;->s()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lq/B;->d([BII)Lq/B;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lq/F;->x(I)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lq/F;->w(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-static {v2}, Lq/F;->x(I)I

    move-result v2

    invoke-virtual {v0}, Lq/B;->size()I

    move-result v3

    invoke-static {v3}, Lq/F;->y(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    const/4 v1, 0x1

    add-int/2addr v4, v1

    new-array v2, v4, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    move-object/from16 v3, v17

    invoke-static {v2, v1, v3, v0}, Lq/A2;->D([BILjava/lang/String;Lq/B;)V

    return-object v2

    :goto_198
    return-object v0
.end method

.method public declared-synchronized i(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lq/q3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lq/q3;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public declared-synchronized m(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_ec

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v0, :cond_13

    goto/16 :goto_ec

    :cond_13
    const/4 v2, 0x1

    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    array-length v4, p2

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    invoke-static {p2, v5, v4}, Lq/A2;->p([BII)Lq/r4;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lq/A2;->b:Ljava/lang/Object;

    check-cast v4, Lq/v2;

    iget-object v5, p2, Lq/r4;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    if-nez v5, :cond_48

    move-object v4, v6

    goto :goto_5e

    :cond_48
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_54
    iget-object v4, v4, Lq/v2;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/U1;

    :goto_5e
    if-nez v4, :cond_61

    goto :goto_63

    :cond_61
    iget-object v6, v4, Lq/U1;->e:Lq/G1;

    :goto_63
    if-eqz v6, :cond_89

    iget-object v4, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/16 v5, 0x200

    if-lt v4, v5, :cond_78

    iget-object v4, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_78
    iget-object v4, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    new-instance v5, Lq/s4;

    iget-object v7, p2, Lq/r4;->a:Ljava/lang/String;

    invoke-direct {v5, v7, v6}, Lq/s4;-><init>(Ljava/lang/String;Lq/G1;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :catchall_87
    move-exception p1

    goto :goto_f4

    :cond_89
    :goto_89
    iget-object v4, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "full_skin_enabled"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-object v1, p2, Lq/r4;->a:Ljava/lang/String;

    invoke-static {v1}, Lq/A2;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    goto :goto_e8

    :cond_a2
    iget-object v1, p2, Lq/r4;->a:Ljava/lang/String;

    iget-object v4, p2, Lq/r4;->b:Lq/B;

    invoke-virtual {p0, v1, v4}, Lq/A2;->r(Ljava/lang/String;Lq/B;)V

    iget-object v1, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v3, v6}, Lq/A2;->h(ILq/G1;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p2, Lq/r4;->a:Ljava/lang/String;

    iget-object p2, p2, Lq/r4;->b:Lq/B;

    invoke-virtual {p0, v1, p2}, Lq/A2;->g(Ljava/lang/String;Lq/B;)[B

    move-result-object p2

    if-eqz p2, :cond_d1

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_d1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "fake"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "responses"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e6} :catch_f0
    .catchall {:try_start_2 .. :try_end_e6} :catchall_87

    monitor-exit p0

    return-object p1

    :cond_e8
    :goto_e8
    :try_start_e8
    const-string p1, "{\"fake\":false}"
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ea} :catch_f0
    .catchall {:try_start_e8 .. :try_end_ea} :catchall_87

    monitor-exit p0

    return-object p1

    :cond_ec
    :goto_ec
    :try_start_ec
    const-string p1, "{\"fake\":false}"
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ee} :catch_f0
    .catchall {:try_start_ec .. :try_end_ee} :catchall_87

    monitor-exit p0

    return-object p1

    :catch_f0
    :try_start_f0
    const-string p1, "{\"fake\":false}"
    :try_end_f2
    .catchall {:try_start_f0 .. :try_end_f2} :catchall_87

    monitor-exit p0

    return-object p1

    :goto_f4
    :try_start_f4
    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_87

    throw p1
.end method

.method public q(Lq/Z1;)V
    .registers 11

    const-string v0, "views"

    iget-object v1, p1, Lq/Z1;->c:Lq/G1;

    invoke-virtual {v1, v0}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lq/R1;->p()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7d

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_55

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lq/Z1;

    if-eqz v4, :cond_24

    check-cast v3, Lq/Z1;

    new-instance v4, Lq/t4;

    const-string v5, "slot"

    invoke-static {v5, v3}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v5

    const-string v6, "type"

    invoke-static {v6, v3}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v6

    const-string v7, "item_id"

    invoke-static {v7, v3}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v7

    const-string v8, "item_id_list"

    invoke-static {v8, v3}, Lq/A2;->s(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lq/t4;-><init>(IIILjava/util/List;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_55
    const-string v0, "save_index"

    invoke-static {v0, p1}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v0

    const-string v3, "is_use"

    invoke-virtual {v1, v3}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_65

    goto :goto_76

    :cond_65
    invoke-virtual {p1, v1}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_76

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_76

    const/4 v3, 0x1

    :cond_76
    :goto_76
    iget-object p1, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0, v3, v2}, Lq/u4;->g(Landroid/content/Context;IZLjava/util/ArrayList;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public r(Ljava/lang/String;Lq/B;)V
    .registers 15

    :try_start_0
    iget-object v0, p0, Lq/A2;->b:Ljava/lang/Object;

    check-cast v0, Lq/v2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez p1, :cond_c

    move-object v0, v1

    goto :goto_25

    :cond_c
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, p1

    :goto_1b
    iget-object v0, v0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/U1;

    :goto_25
    if-nez v0, :cond_28

    goto :goto_2a

    :cond_28
    iget-object v1, v0, Lq/U1;->d:Lq/G1;

    :goto_2a
    if-nez v1, :cond_2d

    return-void

    :cond_2d
    invoke-static {v1, p2}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object p2

    const-string v0, ".changeMainCharacter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_f8

    const-string v1, "character_id"

    iget-object v2, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    if-eqz v0, :cond_48

    :try_start_3f
    invoke-static {v1, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result p1

    invoke-static {v2, p1}, Lq/u4;->d(Landroid/content/Context;I)V

    goto/16 :goto_f8

    :cond_48
    const-string v0, ".changeCharacterSkin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {v1, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result p1

    const-string v0, "skin"

    invoke-static {v0, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result p2

    invoke-static {v2, p1, p2}, Lq/u4;->e(Landroid/content/Context;II)V

    goto/16 :goto_f8

    :cond_5f
    const-string v0, ".useTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string p1, "title"

    invoke-static {p1, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v5

    invoke-static {v2}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object p1

    new-instance p2, Lq/u4;

    new-instance v9, Ljava/util/HashMap;

    iget-object v0, p1, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v10, Ljava/util/HashMap;

    iget-object v0, p1, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v11, p1, Lq/u4;->g:Ljava/util/List;

    iget v4, p1, Lq/u4;->a:I

    iget-wide v6, p1, Lq/u4;->c:J

    iget v8, p1, Lq/u4;->d:I

    move-object v3, p2

    invoke-direct/range {v3 .. v11}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {v2, p2}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    goto :goto_f8

    :cond_91
    const-string v0, ".setLoadingImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string p1, "images"

    invoke-static {p1, p2}, Lq/A2;->s(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Lq/u4;->c(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_f8

    :cond_a3
    const-string v0, ".saveCommonViews"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {p0, p2}, Lq/A2;->q(Lq/Z1;)V

    goto :goto_f8

    :cond_af
    const-string v0, ".useCommonView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string p1, "index"

    invoke-static {p1, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v8

    invoke-static {v2}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object p1

    new-instance p2, Lq/u4;

    new-instance v9, Ljava/util/HashMap;

    iget-object v0, p1, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v10, Ljava/util/HashMap;

    iget-object v0, p1, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v11, p1, Lq/u4;->g:Ljava/util/List;

    iget v4, p1, Lq/u4;->a:I

    iget v5, p1, Lq/u4;->b:I

    iget-wide v6, p1, Lq/u4;->c:J

    move-object v3, p2

    invoke-direct/range {v3 .. v11}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {v2, p2}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    goto :goto_f8

    :cond_e1
    const-string v0, ".changeCommonView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f8

    const-string p1, "slot"

    invoke-static {p1, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result p1

    const-string v0, "value"

    invoke-static {v0, p2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result p2

    invoke-static {v2, p1, p2}, Lq/u4;->f(Landroid/content/Context;II)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_f8} :catch_f8

    :catch_f8
    :cond_f8
    :goto_f8
    return-void
.end method

.method public declared-synchronized v(ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "full_skin_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p1, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_bb
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    goto/16 :goto_bf

    :cond_19
    const/4 v0, 0x2

    :try_start_1a
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    array-length v1, p2

    const/4 v3, 0x4

    if-lt v1, v3, :cond_b7

    aget-byte v1, p2, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2b

    goto/16 :goto_b7

    :cond_2b
    const/4 v1, 0x1

    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lq/A2;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/s4;

    if-eqz p1, :cond_b3

    array-length v4, p2

    sub-int/2addr v4, v3

    invoke-static {p2, v3, v4}, Lq/A2;->p([BII)Lq/r4;

    move-result-object v4

    iget-object v5, p1, Lq/s4;->b:Lq/G1;

    iget-object v4, v4, Lq/r4;->b:Lq/B;

    invoke-static {v5, v4}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object v4

    iget-object p1, p1, Lq/s4;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lq/A2;->y(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p1

    if-ne p1, v4, :cond_73

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_71} :catch_bb
    .catchall {:try_start_1a .. :try_end_71} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_73
    :try_start_73
    invoke-virtual {p1}, Lq/c;->s()[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v2, v5}, Lq/B;->d([BII)Lq/B;

    move-result-object v4

    invoke-virtual {v4}, Lq/B;->size()I

    move-result v5

    if-nez v5, :cond_84

    move v6, v2

    goto :goto_92

    :cond_84
    invoke-static {v0}, Lq/F;->x(I)I

    move-result v5

    invoke-virtual {v4}, Lq/B;->size()I

    move-result v4

    invoke-static {v4}, Lq/F;->y(I)I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    :goto_92
    add-int/2addr v6, v3

    new-array v4, v6, [B

    aput-byte v3, v4, v2

    aget-byte v5, p2, v1

    aput-byte v5, v4, v1

    aget-byte p2, p2, v0

    aput-byte p2, v4, v0

    const-string p2, ""

    invoke-virtual {p1}, Lq/c;->s()[B

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v2, v1}, Lq/B;->d([BII)Lq/B;

    move-result-object p1

    invoke-static {v4, v3, p2, p1}, Lq/A2;->D([BILjava/lang/String;Lq/B;)V

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_b1} :catch_bb
    .catchall {:try_start_73 .. :try_end_b1} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_b3
    :try_start_b3
    const-string p1, ""
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b5} :catch_bb
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_b7
    :goto_b7
    :try_start_b7
    const-string p1, ""
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b9} :catch_bb
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_16

    monitor-exit p0

    return-object p1

    :catch_bb
    :try_start_bb
    const-string p1, ""
    :try_end_bd
    .catchall {:try_start_bb .. :try_end_bd} :catchall_16

    monitor-exit p0

    return-object p1

    :goto_bf
    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_16

    throw p1
.end method

.method public declared-synchronized w(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "full_skin_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p1, ""
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_107
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    goto/16 :goto_10b

    :cond_19
    const/4 v0, 0x2

    :try_start_1a
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_103

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2b

    goto/16 :goto_103

    :cond_2b
    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-static {p1, v3, v1}, Lq/A2;->p([BII)Lq/r4;

    move-result-object v1

    iget-object v4, v1, Lq/r4;->a:Ljava/lang/String;

    const-string v5, ".NotifyRoomPlayerUpdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    iget-object v4, v1, Lq/r4;->a:Ljava/lang/String;

    const-string v5, ".NotifyAccountUpdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_49} :catch_107
    .catchall {:try_start_1a .. :try_end_49} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lq/A2;->b:Ljava/lang/Object;

    check-cast v4, Lq/v2;

    iget-object v5, v1, Lq/r4;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lq/v2;->l(Ljava/lang/String;)Lq/G1;

    move-result-object v4

    if-nez v4, :cond_5d

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_107
    .catchall {:try_start_4b .. :try_end_5b} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_5d
    :try_start_5d
    iget-object p1, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lq/F2;->b(Landroid/content/Context;)Lq/F2;

    move-result-object p1

    iget-object v5, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v5

    iget-object v6, v1, Lq/r4;->b:Lq/B;

    invoke-static {v4, v6}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object v4

    invoke-virtual {v4}, Lq/Z1;->v()Lq/Y1;

    move-result-object v4

    iget-object v6, v1, Lq/r4;->a:Ljava/lang/String;

    const-string v7, ".NotifyRoomPlayerUpdate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    const-string v6, "player_list"

    invoke-static {v4, v6, p1, v5}, Lq/A2;->x(Lq/Y1;Ljava/lang/String;Lq/F2;Lq/u4;)V

    const-string v6, "robots"

    invoke-static {v4, v6, p1, v5}, Lq/A2;->x(Lq/Y1;Ljava/lang/String;Lq/F2;Lq/u4;)V

    goto :goto_cc

    :cond_8c
    iget-object p1, v4, Lq/Y1;->a:Lq/G1;

    const-string v5, "update"

    invoke-virtual {p1, v5}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p1

    const/4 v5, 0x0

    if-nez p1, :cond_98

    goto :goto_a3

    :cond_98
    invoke-virtual {v4, p1}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lq/Z1;

    if-eqz v7, :cond_a3

    move-object v5, v6

    check-cast v5, Lq/Z1;

    :cond_a3
    :goto_a3
    if-eqz v5, :cond_cc

    if-eqz p1, :cond_cc

    invoke-virtual {v5}, Lq/Z1;->v()Lq/Y1;

    move-result-object v5

    const-string v6, "character"

    iget-object v7, v5, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v7, v6}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v6

    if-eqz v6, :cond_b8

    invoke-virtual {v5, v6}, Lq/Y1;->I(Lq/R1;)V

    :cond_b8
    const-string v6, "main_character"

    iget-object v7, v5, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v7, v6}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v6

    if-eqz v6, :cond_c5

    invoke-virtual {v5, v6}, Lq/Y1;->I(Lq/R1;)V

    :cond_c5
    invoke-virtual {v5}, Lq/Y1;->G()Lq/Z1;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_cc
    :goto_cc
    invoke-virtual {v4}, Lq/Y1;->G()Lq/Z1;

    move-result-object p1

    invoke-virtual {p1}, Lq/c;->s()[B

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v2, v4}, Lq/B;->d([BII)Lq/B;

    move-result-object p1

    iget-object v4, v1, Lq/r4;->a:Ljava/lang/String;

    invoke-static {v3}, Lq/F;->x(I)I

    move-result v5

    invoke-static {v4}, Lq/F;->w(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v0}, Lq/F;->x(I)I

    move-result v5

    invoke-virtual {p1}, Lq/B;->size()I

    move-result v6

    invoke-static {v6}, Lq/F;->y(I)I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    add-int/2addr v4, v3

    new-array v4, v4, [B

    aput-byte v3, v4, v2

    iget-object v1, v1, Lq/r4;->a:Ljava/lang/String;

    invoke-static {v4, v3, v1, p1}, Lq/A2;->D([BILjava/lang/String;Lq/B;)V

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_101} :catch_107
    .catchall {:try_start_5d .. :try_end_101} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_103
    :goto_103
    :try_start_103
    const-string p1, ""
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_105} :catch_107
    .catchall {:try_start_103 .. :try_end_105} :catchall_16

    monitor-exit p0

    return-object p1

    :catch_107
    :try_start_107
    const-string p1, ""
    :try_end_109
    .catchall {:try_start_107 .. :try_end_109} :catchall_16

    monitor-exit p0

    return-object p1

    :goto_10b
    :try_start_10b
    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_16

    throw p1
.end method

.method public y(Ljava/lang/String;Lq/Z1;)Lq/Z1;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lq/F2;->b(Landroid/content/Context;)Lq/F2;

    move-result-object v4

    iget-object v5, v4, Lq/F2;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_333

    iget-object v5, v4, Lq/F2;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    goto/16 :goto_333

    :cond_24
    invoke-static {v3}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v5

    const-string v6, ".login"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v7, 0x0

    const-string v9, "account"

    if-nez v6, :cond_2e7

    const-string v6, ".emailLogin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e7

    const-string v6, ".oauth2Login"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto/16 :goto_2e7

    :cond_46
    const-string v6, ".fetchAccountInfo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    iget-object v3, v0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v3, v9}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-nez v3, :cond_5c

    :cond_5a
    const/4 v10, 0x0

    goto :goto_67

    :cond_5c
    invoke-virtual {v0, v3}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lq/Z1;

    if-eqz v9, :cond_5a

    move-object v10, v6

    check-cast v10, Lq/Z1;

    :goto_67
    if-eqz v10, :cond_92

    if-nez v3, :cond_6c

    goto :goto_92

    :cond_6c
    invoke-static {v10}, Lq/A2;->n(Lq/Z1;)J

    move-result-wide v11

    iget-wide v13, v5, Lq/u4;->c:J

    cmp-long v6, v13, v7

    if-eqz v6, :cond_7f

    cmp-long v6, v11, v7

    if-eqz v6, :cond_7f

    cmp-long v6, v11, v13

    if-eqz v6, :cond_7f

    goto :goto_92

    :cond_7f
    invoke-virtual {v10}, Lq/Z1;->v()Lq/Y1;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lq/A2;->e(Lq/Y1;Lq/F2;Lq/u4;)V

    invoke-virtual {v2}, Lq/Y1;->G()Lq/Z1;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    move-object v2, v0

    :cond_92
    :goto_92
    return-object v2

    :cond_93
    const-string v6, ".authGame"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    const-string v2, "players"

    invoke-static {v0, v2, v4, v5}, Lq/A2;->x(Lq/Y1;Ljava/lang/String;Lq/F2;Lq/u4;)V

    const-string v2, "robots"

    invoke-static {v0, v2, v4, v5}, Lq/A2;->x(Lq/Y1;Ljava/lang/String;Lq/F2;Lq/u4;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_ae
    const-string v6, ".fetchRoom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b0

    const-string v6, ".createRoom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b0

    const-string v6, ".joinRoom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c8

    goto/16 :goto_2b0

    :cond_c8
    const-string v6, ".fetchCharacterInfo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v11, "main_character_id"

    if-eqz v6, :cond_ef

    iget v0, v5, Lq/u4;->a:I

    if-nez v0, :cond_e3

    invoke-static {v11, v2}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v0

    if-eqz v0, :cond_e3

    invoke-static {v3, v0}, Lq/u4;->d(Landroid/content/Context;I)V

    invoke-static {v3}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v5

    :cond_e3
    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lq/A2;->l(Lq/Y1;Lq/F2;Lq/u4;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_ef
    const-string v6, ".fetchBagInfo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v12, "bag"

    if-eqz v6, :cond_12f

    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    iget-object v2, v0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v2, v12}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v2

    if-eqz v2, :cond_12a

    invoke-virtual {v0, v2}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lq/Z1;

    if-eqz v5, :cond_111

    move-object v10, v3

    check-cast v10, Lq/Z1;

    goto :goto_112

    :cond_111
    const/4 v10, 0x0

    :goto_112
    if-nez v10, :cond_11c

    invoke-virtual {v2}, Lq/R1;->j()Lq/G1;

    move-result-object v3

    invoke-static {v3}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v10

    :cond_11c
    invoke-virtual {v10}, Lq/Z1;->v()Lq/Y1;

    move-result-object v3

    invoke-static {v3, v4}, Lq/A2;->k(Lq/Y1;Lq/F2;)V

    invoke-virtual {v3}, Lq/Y1;->G()Lq/Z1;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_12a
    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_12f
    const-string v6, ".fetchTitleList"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v13, "title"

    const-string v14, "title_list"

    iget-object v15, v4, Lq/F2;->c:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    if-eqz v6, :cond_152

    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    invoke-static {v0, v14, v15}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    iget v2, v5, Lq/u4;->b:I

    if-lez v2, :cond_14d

    invoke-static {v0, v13, v2}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_14d
    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_152
    const-string v6, ".fetchAllCommonViews"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_166

    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    invoke-static {v0, v5}, Lq/A2;->u(Lq/Y1;Lq/u4;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_166
    const-string v5, ".fetchInfo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16f

    return-object v2

    :cond_16f
    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    iget-object v2, v0, Lq/Y1;->a:Lq/G1;

    const-string v5, "account_id"

    invoke-virtual {v2, v5}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v5

    if-nez v5, :cond_17f

    :cond_17d
    move-wide v5, v7

    goto :goto_18d

    :cond_17f
    invoke-virtual {v0, v5}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_17d

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    :goto_18d
    invoke-virtual {v2, v9}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v10

    if-nez v10, :cond_195

    const/4 v10, 0x0

    goto :goto_1a3

    :cond_195
    invoke-virtual {v0, v10}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v10

    instance-of v7, v10, Lq/Z1;

    if-eqz v7, :cond_1a0

    check-cast v10, Lq/Z1;

    goto :goto_1a1

    :cond_1a0
    const/4 v10, 0x0

    :goto_1a1
    const-wide/16 v7, 0x0

    :goto_1a3
    cmp-long v16, v5, v7

    if-nez v16, :cond_1ad

    if-eqz v10, :cond_1ad

    invoke-static {v10}, Lq/A2;->n(Lq/Z1;)J

    move-result-wide v5

    :cond_1ad
    cmp-long v7, v5, v7

    if-eqz v7, :cond_1b4

    invoke-static {v3, v5, v6}, Lq/u4;->b(Landroid/content/Context;J)V

    :cond_1b4
    invoke-static {v3}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v5

    const-string v6, "character_info"

    invoke-virtual {v2, v6}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v6

    if-nez v6, :cond_1c1

    goto :goto_1f6

    :cond_1c1
    invoke-virtual {v0, v6}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lq/Z1;

    if-eqz v8, :cond_1cc

    check-cast v7, Lq/Z1;

    goto :goto_1cd

    :cond_1cc
    const/4 v7, 0x0

    :goto_1cd
    if-nez v7, :cond_1d7

    invoke-virtual {v6}, Lq/R1;->j()Lq/G1;

    move-result-object v7

    invoke-static {v7}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v7

    :cond_1d7
    iget v8, v5, Lq/u4;->a:I

    if-nez v8, :cond_1e8

    invoke-static {v11, v7}, Lq/A2;->o(Ljava/lang/String;Lq/Z1;)I

    move-result v8

    if-eqz v8, :cond_1e8

    invoke-static {v3, v8}, Lq/u4;->d(Landroid/content/Context;I)V

    invoke-static {v3}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v5

    :cond_1e8
    invoke-virtual {v7}, Lq/Z1;->v()Lq/Y1;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lq/A2;->l(Lq/Y1;Lq/F2;Lq/u4;)V

    invoke-virtual {v7}, Lq/Y1;->G()Lq/Z1;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :goto_1f6
    invoke-static {v3}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v3

    invoke-virtual {v2, v9}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v5

    if-nez v5, :cond_202

    :cond_200
    const/4 v6, 0x0

    goto :goto_20c

    :cond_202
    invoke-virtual {v0, v5}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lq/Z1;

    if-eqz v7, :cond_200

    check-cast v6, Lq/Z1;

    :goto_20c
    if-eqz v6, :cond_21f

    if-nez v5, :cond_211

    goto :goto_21f

    :cond_211
    invoke-virtual {v6}, Lq/Z1;->v()Lq/Y1;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lq/A2;->e(Lq/Y1;Lq/F2;Lq/u4;)V

    invoke-virtual {v6}, Lq/Y1;->G()Lq/Z1;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_21f
    :goto_21f
    const-string v5, "bag_info"

    invoke-virtual {v2, v5}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v5

    if-nez v5, :cond_228

    goto :goto_26f

    :cond_228
    invoke-virtual {v0, v5}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lq/Z1;

    if-eqz v7, :cond_233

    check-cast v6, Lq/Z1;

    goto :goto_234

    :cond_233
    const/4 v6, 0x0

    :goto_234
    if-nez v6, :cond_237

    goto :goto_26f

    :cond_237
    invoke-virtual {v6}, Lq/Z1;->v()Lq/Y1;

    move-result-object v6

    iget-object v7, v6, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v7, v12}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v7

    if-nez v7, :cond_244

    goto :goto_26f

    :cond_244
    invoke-virtual {v6, v7}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lq/Z1;

    if-eqz v9, :cond_24f

    check-cast v8, Lq/Z1;

    goto :goto_250

    :cond_24f
    const/4 v8, 0x0

    :goto_250
    if-nez v8, :cond_25a

    invoke-virtual {v7}, Lq/R1;->j()Lq/G1;

    move-result-object v8

    invoke-static {v8}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v8

    :cond_25a
    invoke-virtual {v8}, Lq/Z1;->v()Lq/Y1;

    move-result-object v8

    invoke-static {v8, v4}, Lq/A2;->k(Lq/Y1;Lq/F2;)V

    invoke-virtual {v8}, Lq/Y1;->G()Lq/Z1;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lq/Y1;->G()Lq/Z1;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :goto_26f
    invoke-virtual {v2, v14}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v2

    if-eqz v2, :cond_2a8

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27c

    goto :goto_2a8

    :cond_27c
    invoke-virtual {v0, v2}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lq/Z1;

    if-eqz v5, :cond_288

    move-object v10, v4

    check-cast v10, Lq/Z1;

    goto :goto_289

    :cond_288
    const/4 v10, 0x0

    :goto_289
    if-nez v10, :cond_293

    invoke-virtual {v2}, Lq/R1;->j()Lq/G1;

    move-result-object v4

    invoke-static {v4}, Lq/Z1;->t(Lq/G1;)Lq/Z1;

    move-result-object v10

    :cond_293
    invoke-virtual {v10}, Lq/Z1;->v()Lq/Y1;

    move-result-object v4

    invoke-static {v4, v14, v15}, Lq/A2;->t(Lq/Y1;Ljava/lang/String;Ljava/util/List;)V

    iget v5, v3, Lq/u4;->b:I

    if-lez v5, :cond_2a1

    invoke-static {v4, v13, v5}, Lq/A2;->A(Lq/Y1;Ljava/lang/String;I)V

    :cond_2a1
    invoke-virtual {v4}, Lq/Y1;->G()Lq/Z1;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    :cond_2a8
    :goto_2a8
    invoke-static {v0, v3}, Lq/A2;->u(Lq/Y1;Lq/u4;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    return-object v0

    :cond_2b0
    :goto_2b0
    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    const-string v3, "room"

    iget-object v6, v0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v6, v3}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v3

    if-nez v3, :cond_2c0

    :cond_2be
    const/4 v10, 0x0

    goto :goto_2cb

    :cond_2c0
    invoke-virtual {v0, v3}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lq/Z1;

    if-eqz v7, :cond_2be

    move-object v10, v6

    check-cast v10, Lq/Z1;

    :goto_2cb
    if-eqz v10, :cond_2e5

    if-nez v3, :cond_2d0

    goto :goto_2e5

    :cond_2d0
    invoke-virtual {v10}, Lq/Z1;->v()Lq/Y1;

    move-result-object v2

    const-string v6, "persons"

    invoke-static {v2, v6, v4, v5}, Lq/A2;->x(Lq/Y1;Ljava/lang/String;Lq/F2;Lq/u4;)V

    invoke-virtual {v2}, Lq/Y1;->G()Lq/Z1;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    goto :goto_2e6

    :cond_2e5
    :goto_2e5
    move-object v0, v2

    :goto_2e6
    return-object v0

    :cond_2e7
    :goto_2e7
    invoke-virtual/range {p2 .. p2}, Lq/Z1;->v()Lq/Y1;

    move-result-object v0

    iget-object v6, v0, Lq/Y1;->a:Lq/G1;

    invoke-virtual {v6, v9}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v6

    if-nez v6, :cond_2f5

    :cond_2f3
    const/4 v10, 0x0

    goto :goto_300

    :cond_2f5
    invoke-virtual {v0, v6}, Lq/Y1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lq/Z1;

    if-eqz v8, :cond_2f3

    move-object v10, v7

    check-cast v10, Lq/Z1;

    :goto_300
    if-eqz v10, :cond_331

    if-nez v6, :cond_305

    goto :goto_331

    :cond_305
    invoke-static/range {p2 .. p2}, Lq/A2;->n(Lq/Z1;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-nez v2, :cond_313

    invoke-static {v10}, Lq/A2;->n(Lq/Z1;)J

    move-result-wide v7

    :cond_313
    cmp-long v2, v7, v11

    if-eqz v2, :cond_31e

    invoke-static {v3, v7, v8}, Lq/u4;->b(Landroid/content/Context;J)V

    invoke-static {v3}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v5

    :cond_31e
    invoke-virtual {v10}, Lq/Z1;->v()Lq/Y1;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lq/A2;->e(Lq/Y1;Lq/F2;Lq/u4;)V

    invoke-virtual {v2}, Lq/Y1;->G()Lq/Z1;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lq/Y1;->K(Lq/R1;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lq/Y1;->G()Lq/Z1;

    move-result-object v0

    goto :goto_332

    :cond_331
    :goto_331
    move-object v0, v2

    :goto_332
    return-object v0

    :cond_333
    :goto_333
    return-object v2
.end method
