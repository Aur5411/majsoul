.class public final Lq/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lq/g2;


# instance fields
.field public final a:Lq/D4;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lq/g2;

    new-instance v1, Lq/D4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lq/D4;-><init>(I)V

    invoke-direct {v0, v1}, Lq/g2;-><init>(Lq/D4;)V

    invoke-virtual {v0}, Lq/g2;->m()V

    sput-object v0, Lq/g2;->d:Lq/g2;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lq/D4;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lq/D4;-><init>(I)V

    .line 3
    iput-object v0, p0, Lq/g2;->a:Lq/D4;

    return-void
.end method

.method public constructor <init>(Lq/D4;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lq/g2;->a:Lq/D4;

    .line 6
    invoke-virtual {p0}, Lq/g2;->m()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_f
    return-object p0
.end method

.method public static b(Lq/D4;Z)Lq/D4;
    .registers 5

    new-instance v0, Lq/D4;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lq/D4;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-virtual {p0, v1}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lq/g2;->c(Lq/D4;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    invoke-virtual {p0}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lq/g2;->c(Lq/D4;Ljava/util/Map$Entry;Z)V

    goto :goto_22

    :cond_32
    return-object v0
.end method

.method public static c(Lq/D4;Ljava/util/Map$Entry;Z)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/f2;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_1b

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1b

    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0, v0, p1}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    return-void
.end method

.method public static d(Lq/i6;Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_ea

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13  #0x11
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lq/F;->z(J)I

    move-result p0

    return p0

    :pswitch_24  #0x10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lq/F;->y(I)I

    move-result p0

    return p0

    :pswitch_34  #0xf
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v2

    :pswitch_3c  #0xe
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v1

    :pswitch_44  #0xd
    instance-of p0, p1, Lq/P2;

    if-eqz p0, :cond_53

    check-cast p1, Lq/P2;

    invoke-interface {p1}, Lq/P2;->a()I

    move-result p0

    invoke-static {p0}, Lq/F;->t(I)I

    move-result p0

    return p0

    :cond_53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lq/F;->t(I)I

    move-result p0

    return p0

    :pswitch_5e  #0xc
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lq/F;->y(I)I

    move-result p0

    return p0

    :pswitch_69  #0xb
    instance-of p0, p1, Lq/B;

    if-eqz p0, :cond_74

    check-cast p1, Lq/B;

    invoke-static {p1}, Lq/F;->q(Lq/B;)I

    move-result p0

    return p0

    :cond_74
    check-cast p1, [B

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    array-length p0, p1

    invoke-static {p0}, Lq/F;->y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :pswitch_7f  #0xa
    check-cast p1, Lq/Q3;

    invoke-static {p1}, Lq/F;->v(Lq/Q3;)I

    move-result p0

    return p0

    :pswitch_86  #0x9
    check-cast p1, Lq/Q3;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lq/Q3;->e()I

    move-result p0

    return p0

    :pswitch_8f  #0x8
    instance-of p0, p1, Lq/B;

    if-eqz p0, :cond_9a

    check-cast p1, Lq/B;

    invoke-static {p1}, Lq/F;->q(Lq/B;)I

    move-result p0

    return p0

    :cond_9a
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lq/F;->w(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_a1  #0x7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v0

    :pswitch_a9  #0x6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v1

    :pswitch_b1  #0x5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v2

    :pswitch_b9  #0x4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lq/F;->t(I)I

    move-result p0

    return p0

    :pswitch_c4  #0x3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lq/F;->z(J)I

    move-result p0

    return p0

    :pswitch_cf  #0x2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lq/F;->z(J)I

    move-result p0

    return p0

    :pswitch_da  #0x1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v1

    :pswitch_e2  #0x0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq/F;->j:Ljava/util/logging/Logger;

    return v2

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_e2  #00000000
        :pswitch_da  #00000001
        :pswitch_cf  #00000002
        :pswitch_c4  #00000003
        :pswitch_b9  #00000004
        :pswitch_b1  #00000005
        :pswitch_a9  #00000006
        :pswitch_a1  #00000007
        :pswitch_8f  #00000008
        :pswitch_86  #00000009
        :pswitch_7f  #0000000a
        :pswitch_69  #0000000b
        :pswitch_5e  #0000000c
        :pswitch_44  #0000000d
        :pswitch_3c  #0000000e
        :pswitch_34  #0000000f
        :pswitch_24  #00000010
        :pswitch_13  #00000011
    .end packed-switch
.end method

.method public static e(Lq/f2;Ljava/lang/Object;)I
    .registers 7

    check-cast p0, Lq/R1;

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    iget-object v1, p0, Lq/R1;->b:Lq/C0;

    iget v1, v1, Lq/C0;->f:I

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v2

    if-eqz v2, :cond_5f

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lq/R1;->o()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_20

    return v2

    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lq/g2;->d(Lq/i6;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_24

    :cond_34
    invoke-static {v1}, Lq/F;->x(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lq/F;->y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_3f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1}, Lq/F;->x(I)I

    move-result v3

    sget-object v4, Lq/i6;->c:Lq/f6;

    if-ne v0, v4, :cond_57

    mul-int/lit8 v3, v3, 0x2

    :cond_57
    invoke-static {v0, p1}, Lq/g2;->d(Lq/i6;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    add-int/2addr v2, p1

    goto :goto_43

    :cond_5e
    return v2

    :cond_5f
    invoke-static {v1}, Lq/F;->x(I)I

    move-result p0

    sget-object v1, Lq/i6;->c:Lq/f6;

    if-ne v0, v1, :cond_69

    mul-int/lit8 p0, p0, 0x2

    :cond_69
    invoke-static {v0, p1}, Lq/g2;->d(Lq/i6;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static g(Ljava/util/Map$Entry;)I
    .registers 6

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/f2;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lq/R1;

    invoke-virtual {v2}, Lq/R1;->i()Lq/i6;

    move-result-object v3

    iget-object v3, v3, Lq/i6;->a:Lq/j6;

    sget-object v4, Lq/j6;->i:Lq/j6;

    if-ne v3, v4, :cond_49

    invoke-virtual {v2}, Lq/R1;->p()Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v2}, Lq/R1;->o()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq/f2;

    check-cast p0, Lq/R1;

    iget-object p0, p0, Lq/R1;->b:Lq/C0;

    iget p0, p0, Lq/C0;->f:I

    check-cast v1, Lq/Q3;

    const/4 v0, 0x1

    invoke-static {v0}, Lq/F;->x(I)I

    move-result v0

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    invoke-static {v2}, Lq/F;->x(I)I

    move-result v2

    invoke-static {p0}, Lq/F;->y(I)I

    move-result p0

    add-int/2addr p0, v2

    add-int/2addr p0, v0

    const/4 v0, 0x3

    invoke-static {v0, v1}, Lq/F;->u(ILq/Q3;)I

    move-result v0

    add-int/2addr v0, p0

    return v0

    :cond_49
    invoke-static {v0, v1}, Lq/g2;->e(Lq/f2;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/util/Map$Entry;)Z
    .registers 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/f2;

    check-cast v0, Lq/R1;

    invoke-virtual {v0}, Lq/R1;->i()Lq/i6;

    move-result-object v1

    iget-object v1, v1, Lq/i6;->a:Lq/j6;

    sget-object v2, Lq/j6;->i:Lq/j6;

    if-ne v1, v2, :cond_57

    invoke-virtual {v0}, Lq/R1;->p()Z

    move-result v0

    const-string v1, "Wrong object type used with protocol message reflection."

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lq/R3;

    if-eqz v2, :cond_3c

    check-cast v0, Lq/R3;

    invoke-interface {v0}, Lq/R3;->h()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 p0, 0x0

    return p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lq/R3;

    if-eqz v0, :cond_51

    check-cast p0, Lq/R3;

    invoke-interface {p0}, Lq/R3;->h()Z

    move-result p0

    return p0

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    const/4 p0, 0x1

    return p0
.end method

.method public static l(Lq/i6;Ljava/lang/Object;)Z
    .registers 4

    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lq/i6;->a:Lq/j6;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_44

    return v1

    :pswitch_11  #0x8
    instance-of p0, p1, Lq/Q3;

    if-nez p0, :cond_1b

    instance-of p0, p1, Lq/a3;

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :cond_1b
    :goto_1b
    return v0

    :pswitch_1c  #0x7
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_26

    instance-of p0, p1, Lq/P2;

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :cond_26
    :goto_26
    return v0

    :pswitch_27  #0x6
    instance-of p0, p1, Lq/B;

    if-nez p0, :cond_31

    instance-of p0, p1, [B

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :cond_31
    :goto_31
    return v0

    :pswitch_32  #0x5
    instance-of p0, p1, Ljava/lang/String;

    return p0

    :pswitch_35  #0x4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    :pswitch_38  #0x3
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    :pswitch_3b  #0x2
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    :pswitch_3e  #0x1
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    :pswitch_41  #0x0
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_27  #00000006
        :pswitch_1c  #00000007
        :pswitch_11  #00000008
    .end packed-switch
.end method

.method public static o(Lq/f2;Ljava/lang/Object;)V
    .registers 4

    check-cast p0, Lq/R1;

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    invoke-static {v0, p1}, Lq/g2;->l(Lq/i6;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
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

.method public static p(Lq/F;Lq/i6;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_104

    goto/16 :goto_103

    :pswitch_a  #0x11
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object v1, Lq/F;->j:Ljava/util/logging/Logger;

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lq/F;->O(J)V

    goto/16 :goto_103

    :pswitch_1d  #0x10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lq/F;->j:Ljava/util/logging/Logger;

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lq/F;->N(I)V

    goto/16 :goto_103

    :pswitch_2f  #0xf
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lq/F;->F(J)V

    goto/16 :goto_103

    :pswitch_3a  #0xe
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->E(I)V

    goto/16 :goto_103

    :pswitch_45  #0xd
    instance-of p1, p2, Lq/P2;

    if-eqz p1, :cond_54

    check-cast p2, Lq/P2;

    invoke-interface {p2}, Lq/P2;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->I(I)V

    goto/16 :goto_103

    :cond_54
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->I(I)V

    goto/16 :goto_103

    :pswitch_5f  #0xc
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->N(I)V

    goto/16 :goto_103

    :pswitch_6a  #0xb
    instance-of p1, p2, Lq/B;

    if-eqz p1, :cond_75

    check-cast p2, Lq/B;

    invoke-virtual {p0, p2}, Lq/F;->D(Lq/B;)V

    goto/16 :goto_103

    :cond_75
    check-cast p2, [B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, p2

    invoke-virtual {p0, p1}, Lq/F;->N(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lq/F;->B([BII)V

    goto/16 :goto_103

    :pswitch_84  #0xa
    check-cast p2, Lq/Q3;

    invoke-virtual {p0, p2}, Lq/F;->K(Lq/Q3;)V

    goto/16 :goto_103

    :pswitch_8b  #0x9
    check-cast p2, Lq/Q3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p0}, Lq/Q3;->c(Lq/F;)V

    goto/16 :goto_103

    :pswitch_95  #0x8
    instance-of p1, p2, Lq/B;

    if-eqz p1, :cond_9f

    check-cast p2, Lq/B;

    invoke-virtual {p0, p2}, Lq/F;->D(Lq/B;)V

    goto :goto_103

    :cond_9f
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lq/F;->L(Ljava/lang/String;)V

    goto :goto_103

    :pswitch_a5  #0x7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lq/F;->A(B)V

    goto :goto_103

    :pswitch_b0  #0x6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->E(I)V

    goto :goto_103

    :pswitch_ba  #0x5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lq/F;->F(J)V

    goto :goto_103

    :pswitch_c4  #0x4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->I(I)V

    goto :goto_103

    :pswitch_ce  #0x3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lq/F;->O(J)V

    goto :goto_103

    :pswitch_d8  #0x2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lq/F;->O(J)V

    goto :goto_103

    :pswitch_e2  #0x1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lq/F;->E(I)V

    goto :goto_103

    :pswitch_f3  #0x0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lq/F;->F(J)V

    :goto_103
    return-void

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_f3  #00000000
        :pswitch_e2  #00000001
        :pswitch_d8  #00000002
        :pswitch_ce  #00000003
        :pswitch_c4  #00000004
        :pswitch_ba  #00000005
        :pswitch_b0  #00000006
        :pswitch_a5  #00000007
        :pswitch_95  #00000008
        :pswitch_8b  #00000009
        :pswitch_84  #0000000a
        :pswitch_6a  #0000000b
        :pswitch_5f  #0000000c
        :pswitch_45  #0000000d
        :pswitch_3a  #0000000e
        :pswitch_2f  #0000000f
        :pswitch_1d  #00000010
        :pswitch_a  #00000011
    .end packed-switch
.end method

.method public static q(Lq/f2;Ljava/lang/Object;Lq/F;)V
    .registers 6

    check-cast p0, Lq/R1;

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    iget-object v1, p0, Lq/R1;->b:Lq/C0;

    iget v1, v1, Lq/C0;->f:I

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v2

    if-eqz v2, :cond_6e

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lq/R1;->o()Z

    move-result p0

    if-eqz p0, :cond_4d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1f

    return-void

    :cond_1f
    const/4 p0, 0x2

    invoke-virtual {p2, v1, p0}, Lq/F;->M(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lq/g2;->d(Lq/i6;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_28

    :cond_38
    invoke-virtual {p2, v1}, Lq/F;->N(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lq/g2;->p(Lq/F;Lq/i6;Ljava/lang/Object;)V

    goto :goto_3f

    :cond_4d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lq/i6;->c:Lq/f6;

    if-ne v0, v2, :cond_65

    check-cast p1, Lq/Q3;

    invoke-virtual {p2, v1, p1}, Lq/F;->G(ILq/Q3;)V

    goto :goto_51

    :cond_65
    iget v2, v0, Lq/i6;->b:I

    invoke-virtual {p2, v1, v2}, Lq/F;->M(II)V

    invoke-static {p2, v0, p1}, Lq/g2;->p(Lq/F;Lq/i6;Ljava/lang/Object;)V

    goto :goto_51

    :cond_6e
    sget-object p0, Lq/i6;->c:Lq/f6;

    if-ne v0, p0, :cond_78

    check-cast p1, Lq/Q3;

    invoke-virtual {p2, v1, p1}, Lq/F;->G(ILq/Q3;)V

    goto :goto_80

    :cond_78
    iget p0, v0, Lq/i6;->b:I

    invoke-virtual {p2, v1, p0}, Lq/F;->M(II)V

    invoke-static {p2, v0, p1}, Lq/g2;->p(Lq/F;Lq/i6;Ljava/lang/Object;)V

    :cond_80
    :goto_80
    return-void
.end method

.method public static r(Ljava/util/Map$Entry;Lq/F;)V
    .registers 7

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/f2;

    move-object v1, v0

    check-cast v1, Lq/R1;

    invoke-virtual {v1}, Lq/R1;->i()Lq/i6;

    move-result-object v2

    iget-object v2, v2, Lq/i6;->a:Lq/j6;

    sget-object v3, Lq/j6;->i:Lq/j6;

    if-ne v2, v3, :cond_46

    invoke-virtual {v1}, Lq/R1;->p()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v1}, Lq/R1;->o()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq/f2;

    check-cast p0, Lq/R1;

    iget-object p0, p0, Lq/R1;->b:Lq/C0;

    iget p0, p0, Lq/C0;->f:I

    check-cast v0, Lq/Q3;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lq/F;->M(II)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lq/F;->M(II)V

    invoke-virtual {p1, p0}, Lq/F;->N(I)V

    invoke-virtual {p1, v2, v0}, Lq/F;->J(ILq/Q3;)V

    const/4 p0, 0x4

    invoke-virtual {p1, v1, p0}, Lq/F;->M(II)V

    goto :goto_4d

    :cond_46
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lq/g2;->q(Lq/f2;Ljava/lang/Object;Lq/F;)V

    :goto_4d
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lq/g2;

    invoke-direct {v0}, Lq/g2;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lq/g2;->a:Lq/D4;

    iget-object v3, v2, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    invoke-virtual {v2, v1}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/f2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lq/g2;->n(Lq/f2;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    invoke-virtual {v2}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/f2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lq/g2;->n(Lq/f2;Ljava/lang/Object;)V

    goto :goto_2c

    :cond_46
    iget-boolean v1, p0, Lq/g2;->c:Z

    iput-boolean v1, v0, Lq/g2;->c:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lq/g2;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lq/g2;

    iget-object v0, p0, Lq/g2;->a:Lq/D4;

    iget-object p1, p1, Lq/g2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/util/Map;
    .registers 3

    iget-boolean v0, p0, Lq/g2;->c:Z

    iget-object v1, p0, Lq/g2;->a:Lq/D4;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lq/g2;->b(Lq/D4;Z)Lq/D4;

    move-result-object v0

    iget-boolean v1, v1, Lq/D4;->d:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lq/D4;->f()V

    :cond_12
    return-object v0

    :cond_13
    iget-boolean v0, v1, Lq/D4;->d:Z

    if-eqz v0, :cond_18

    goto :goto_1c

    :cond_18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_1c
    return-object v1
.end method

.method public final h()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/g2;->a:Lq/D4;

    iget-object v3, v2, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    invoke-virtual {v2, v0}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/f2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lq/g2;->e(Lq/f2;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    invoke-virtual {v2}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/f2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lq/g2;->e(Lq/f2;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2a

    :cond_46
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lq/g2;->a:Lq/D4;

    invoke-virtual {v0}, Lq/D4;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Lq/R1;)Z
    .registers 3

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lq/g2;->a:Lq/D4;

    invoke-virtual {v0, p1}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lq/g2;->a:Lq/D4;

    iget-object v3, v2, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1a

    invoke-virtual {v2, v1}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lq/g2;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    invoke-virtual {v2}, Lq/D4;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lq/g2;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_22

    return v0

    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method public final m()V
    .registers 4

    iget-boolean v0, p0, Lq/g2;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lq/g2;->a:Lq/D4;

    iget-object v2, v1, Lq/D4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    invoke-virtual {v1, v0}, Lq/D4;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    invoke-virtual {v1}, Lq/D4;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/g2;->b:Z

    return-void
.end method

.method public final n(Lq/f2;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lq/R1;

    invoke-virtual {p1}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_32

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lq/g2;->o(Lq/f2;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_28
    move-object p2, v0

    goto :goto_35

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    invoke-static {p1, p2}, Lq/g2;->o(Lq/f2;Ljava/lang/Object;)V

    :goto_35
    iget-object v0, p0, Lq/g2;->a:Lq/D4;

    invoke-virtual {v0, p1, p2}, Lq/D4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
