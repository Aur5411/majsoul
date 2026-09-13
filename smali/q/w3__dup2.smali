.class public final Lq/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public final a:Lq/v2;

.field public final b:Lq/r2;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:J

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Lq/n;

.field public p:Lcom/qiuhui/mahjong/MortalStateEncoder;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:J

.field public x:Ljava/util/List;

.field public y:Lq/Z1;

.field public z:Z


# direct methods
.method public constructor <init>(Lq/v2;Lq/r2;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/w3;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq/w3;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/w3;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/w3;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lq/w3;->h:I

    iput v0, p0, Lq/w3;->i:I

    iput v0, p0, Lq/w3;->k:I

    iput v0, p0, Lq/w3;->n:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq/w3;->x:Ljava/util/List;

    iput v0, p0, Lq/w3;->A:I

    iput-object p1, p0, Lq/w3;->a:Lq/v2;

    iput-object p2, p0, Lq/w3;->b:Lq/r2;

    return-void
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "?"

    if-eqz p0, :cond_b1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_b1

    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    goto/16 :goto_8f

    :sswitch_1c
    const-string v1, "7z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_8f

    :cond_26
    const/16 v0, 0x9

    goto/16 :goto_8f

    :sswitch_2a
    const-string v1, "6z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_8f

    :cond_34
    const/16 v0, 0x8

    goto/16 :goto_8f

    :sswitch_38
    const-string v1, "5z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_8f

    :cond_41
    const/4 v0, 0x7

    goto :goto_8f

    :sswitch_43
    const-string v1, "4z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_8f

    :cond_4c
    const/4 v0, 0x6

    goto :goto_8f

    :sswitch_4e
    const-string v1, "3z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_8f

    :cond_57
    const/4 v0, 0x5

    goto :goto_8f

    :sswitch_59
    const-string v1, "2z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_8f

    :cond_62
    const/4 v0, 0x4

    goto :goto_8f

    :sswitch_64
    const-string v1, "1z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_8f

    :cond_6d
    const/4 v0, 0x3

    goto :goto_8f

    :sswitch_6f
    const-string v1, "0s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_8f

    :cond_78
    const/4 v0, 0x2

    goto :goto_8f

    :sswitch_7a
    const-string v1, "0p"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto :goto_8f

    :cond_83
    const/4 v0, 0x1

    goto :goto_8f

    :sswitch_85
    const-string v1, "0m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    packed-switch v0, :pswitch_data_dc

    goto :goto_b0

    :pswitch_93  #0x9
    const-string p0, "C"

    goto :goto_b0

    :pswitch_96  #0x8
    const-string p0, "F"

    goto :goto_b0

    :pswitch_99  #0x7
    const-string p0, "P"

    goto :goto_b0

    :pswitch_9c  #0x6
    const-string p0, "N"

    goto :goto_b0

    :pswitch_9f  #0x5
    const-string p0, "W"

    goto :goto_b0

    :pswitch_a2  #0x4
    const-string p0, "S"

    goto :goto_b0

    :pswitch_a5  #0x3
    const-string p0, "E"

    goto :goto_b0

    :pswitch_a8  #0x2
    const-string p0, "5sr"

    goto :goto_b0

    :pswitch_ab  #0x1
    const-string p0, "5pr"

    goto :goto_b0

    :pswitch_ae  #0x0
    const-string p0, "5mr"

    :goto_b0
    return-object p0

    :cond_b1
    :goto_b1
    return-object v0

    :sswitch_data_b2
    .sparse-switch
        0x63d -> :sswitch_85
        0x640 -> :sswitch_7a
        0x643 -> :sswitch_6f
        0x669 -> :sswitch_64
        0x688 -> :sswitch_59
        0x6a7 -> :sswitch_4e
        0x6c6 -> :sswitch_43
        0x6e5 -> :sswitch_38
        0x704 -> :sswitch_2a
        0x723 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_ae  #00000000
        :pswitch_ab  #00000001
        :pswitch_a8  #00000002
        :pswitch_a5  #00000003
        :pswitch_a2  #00000004
        :pswitch_9f  #00000005
        :pswitch_9c  #00000006
        :pswitch_99  #00000007
        :pswitch_96  #00000008
        :pswitch_93  #00000009
    .end packed-switch
.end method

.method public static C(Ljava/lang/Object;)J
    .registers 3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0
.end method

.method public static b(Ljava/lang/String;Lq/Z1;)V
    .registers 2

    invoke-static {p0, p1}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_10

    :cond_7
    const-string p1, "id"

    invoke-static {p1, p0}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    :goto_10
    return-void
.end method

.method public static i(Ljava/lang/String;)Lq/u3;
    .registers 3

    new-instance v0, Lq/u3;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p1, Lq/Z1;->c:Lq/G1;

    invoke-virtual {v0, p0}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p1, p0}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public static k(Ljava/lang/String;Lq/Z1;)Z
    .registers 2

    invoke-static {p0, p1}, Lq/w3;->j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_12

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static l(Ljava/lang/String;Lq/Z1;)Lq/Z1;
    .registers 2

    invoke-static {p0, p1}, Lq/w3;->j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lq/Z1;

    if-eqz p1, :cond_b

    check-cast p0, Lq/Z1;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;
    .registers 2

    invoke-static {p0, p1}, Lq/w3;->j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/lang/Number;

    goto :goto_10

    :cond_b
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lq/w3;->j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static q(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const-string v1, "mps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_1e

    move v2, v0

    :cond_1e
    return v2
.end method

.method public static r(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    goto :goto_36

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0x30

    if-lt v1, v3, :cond_36

    const/16 v3, 0x39

    if-gt v1, v3, :cond_36

    const-string v4, "mpsz"

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_25

    goto :goto_36

    :cond_25
    const/16 v4, 0x7a

    if-ne p0, v4, :cond_33

    const/16 p0, 0x31

    if-lt v1, p0, :cond_36

    const/16 p0, 0x37

    if-gt v1, p0, :cond_36

    :goto_31
    move v0, v2

    goto :goto_36

    :cond_33
    if-gt v1, v3, :cond_36

    goto :goto_31

    :cond_36
    :goto_36
    return v0
.end method

.method public static x(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_31

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_31
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_58

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "5"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_58
    return v2
.end method

.method public static y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lq/w3;->j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/util/List;

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_f
    return-object p0
.end method


# virtual methods
.method public final A(Lq/u3;)V
    .registers 12

    iget-object v0, p0, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    invoke-virtual {v0, p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->a(Ljava/lang/String;)Lq/b4;

    move-result-object v0

    iget-object v1, p0, Lq/w3;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lq/b4;->g()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {p0, v0}, Lq/w3;->e(Lq/b4;)Lq/b4;

    move-result-object v8

    iget-object v1, p0, Lq/w3;->b:Lq/r2;

    iget-object v2, p0, Lq/w3;->o:Lq/n;

    iget-object v3, v0, Lq/b4;->a:[F

    iget-object v4, v0, Lq/b4;->b:[Z

    new-instance v5, Ljava/util/ArrayList;

    iget-object p1, p0, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v6, p0, Lq/w3;->r:Z

    iget-object v7, p0, Lq/w3;->x:Ljava/util/List;

    iget-boolean v9, p0, Lq/w3;->s:Z

    invoke-virtual/range {v1 .. v9}, Lq/r2;->c(Lq/n;[F[ZLjava/util/List;ZLjava/util/List;Lq/b4;Z)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_38} :catch_39

    goto :goto_44

    :catch_39
    invoke-virtual {p0}, Lq/w3;->c()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/w3;->q:Z

    iget-object p1, p0, Lq/w3;->b:Lq/r2;

    invoke-virtual {p1}, Lq/r2;->a()V

    :cond_44
    :goto_44
    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;[BII)V
    .registers 14

    monitor-enter p0

    if-eqz p3, :cond_b2

    if-ltz p4, :cond_b2

    const/4 v0, 0x2

    if-lt p5, v0, :cond_b2

    :try_start_8
    array-length v1, p3

    sub-int/2addr v1, p5

    if-le p4, v1, :cond_e

    goto/16 :goto_b2

    :cond_e
    aget-byte v1, p3, p4
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_97

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    const/4 v4, -0x1

    move v5, v3

    goto :goto_35

    :cond_19
    if-eq v1, v0, :cond_20

    if-ne v1, v2, :cond_1e

    goto :goto_20

    :cond_1e
    monitor-exit p0

    return-void

    :cond_20
    :goto_20
    const/4 v4, 0x4

    if-ge p5, v4, :cond_25

    monitor-exit p0

    return-void

    :cond_25
    add-int/lit8 v4, p4, 0x1

    :try_start_27
    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p4, 0x2

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    move v5, v2

    :goto_35
    add-int/2addr p4, v5

    sub-int/2addr p5, v5

    const/4 v5, 0x0

    invoke-static {p3, p4, p5, v5}, Lq/E;->d([BIIZ)Lq/C;

    move-result-object p3

    sget-object p4, Lq/B;->c:Lq/B;

    const-string p5, ""

    :cond_40
    :goto_40
    iget v6, p3, Lq/C;->e:I

    iget v7, p3, Lq/C;->c:I

    if-ne v6, v7, :cond_48

    move v6, v3

    goto :goto_49

    :cond_48
    move v6, v5

    :goto_49
    if-nez v6, :cond_68

    invoke-virtual {p3}, Lq/C;->z()I

    move-result v6

    if-nez v6, :cond_52

    goto :goto_68

    :cond_52
    ushr-int/lit8 v7, v6, 0x3

    if-ne v7, v3, :cond_5b

    invoke-virtual {p3}, Lq/C;->y()Ljava/lang/String;

    move-result-object p5

    goto :goto_40

    :cond_5b
    if-ne v7, v0, :cond_62

    invoke-virtual {p3}, Lq/C;->h()Lq/B;

    move-result-object p4

    goto :goto_40

    :cond_62
    invoke-virtual {p3, v6}, Lq/C;->C(I)Z

    move-result v6

    if-nez v6, :cond_40

    :cond_68
    :goto_68
    new-instance p3, Lq/t3;

    invoke-direct {p3, p5, p4}, Lq/t3;-><init>(Ljava/lang/String;Lq/B;)V

    if-eq v1, v0, :cond_74

    if-ne v1, v2, :cond_72

    goto :goto_74

    :cond_72
    const/4 v4, 0x0

    goto :goto_88

    :cond_74
    :goto_74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_88
    const-string v5, "out"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    if-ne v1, v0, :cond_99

    invoke-virtual {p0, v4, p3}, Lq/w3;->w(Ljava/lang/String;Lq/t3;)V
    :try_end_95
    .catchall {:try_start_27 .. :try_end_95} :catchall_97

    monitor-exit p0

    return-void

    :catchall_97
    move-exception p1

    goto :goto_b0

    :cond_99
    :try_start_99
    const-string p3, "in"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_97

    if-nez p2, :cond_a3

    monitor-exit p0

    return-void

    :cond_a3
    if-ne v1, v2, :cond_a9

    :try_start_a5
    invoke-virtual {p0, v4, p4}, Lq/w3;->h(Ljava/lang/String;Lq/B;)V

    goto :goto_ae

    :cond_a9
    if-ne v1, v3, :cond_ae

    invoke-virtual {p0, p1, p5, p4}, Lq/w3;->g(ILjava/lang/String;Lq/B;)V
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_97

    :cond_ae
    :goto_ae
    monitor-exit p0

    return-void

    :goto_b0
    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_97

    throw p1

    :cond_b2
    :goto_b2
    monitor-exit p0

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/qiuhui/mahjong/MortalStateEncoder;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    :cond_a
    iget-object v0, p0, Lq/w3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final declared-synchronized d(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lq/w3;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lq/q3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lq/q3;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lq/w3;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lq/q3;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lq/q3;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget v0, p0, Lq/w3;->A:I

    if-ne v0, p1, :cond_40

    const/4 p1, 0x0

    iput-object p1, p0, Lq/w3;->y:Lq/Z1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/w3;->z:Z

    const/4 p1, -0x1

    iput p1, p0, Lq/w3;->A:I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_40

    :catchall_3e
    move-exception p1

    goto :goto_42

    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3e

    throw p1
.end method

.method public final e(Lq/b4;)Lq/b4;
    .registers 6

    iget-object p1, p1, Lq/b4;->b:[Z

    array-length v0, p1

    const/16 v1, 0x25

    const/4 v2, 0x0

    if-le v0, v1, :cond_63

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lq/w3;->x:Ljava/util/List;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_63

    :cond_16
    :try_start_16
    new-instance p1, Lcom/qiuhui/mahjong/MortalStateEncoder;

    iget v0, p0, Lq/w3;->h:I

    iget-object v1, p0, Lq/w3;->o:Lq/n;

    invoke-direct {p1, v0, v1}, Lcom/qiuhui/mahjong/MortalStateEncoder;-><init>(ILq/n;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_63

    :try_start_1f
    iget-object v0, p0, Lq/w3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->a(Ljava/lang/String;)Lq/b4;

    goto :goto_25

    :catchall_35
    move-exception v0

    goto :goto_5a

    :cond_37
    const-string v0, "reach"

    invoke-static {v0}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v0

    const-string v1, "actor"

    iget v3, p0, Lq/w3;->h:I

    invoke-virtual {v0, v3, v1}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qiuhui/mahjong/MortalStateEncoder;->a(Ljava/lang/String;)Lq/b4;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lq/b4;->g()Z

    move-result v1
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_35

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    move-object v0, v2

    :goto_56
    :try_start_56
    invoke-virtual {p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_63

    return-object v0

    :goto_5a
    :try_start_5a
    invoke-virtual {p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p1

    :try_start_5f
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    :goto_63
    return-object v2
.end method

.method public final f(Lq/Z1;ZI)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/16 v5, 0x9

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "name"

    invoke-static {v11, v0}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "data"

    invoke-static {v12, v0}, Lq/w3;->j(Ljava/lang/String;Lq/Z1;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lq/B;

    if-eqz v13, :cond_20

    check-cast v12, Lq/B;

    goto :goto_22

    :cond_20
    sget-object v12, Lq/B;->c:Lq/B;

    :goto_22
    const-string v13, "ActionNewRound"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    iget v13, v1, Lq/w3;->m:I

    if-lt v13, v8, :cond_32

    iget v13, v1, Lq/w3;->h:I

    if-gez v13, :cond_3b

    :cond_32
    iput-object v0, v1, Lq/w3;->y:Lq/Z1;

    iput-boolean v2, v1, Lq/w3;->z:Z

    move/from16 v0, p3

    iput v0, v1, Lq/w3;->A:I

    return-void

    :cond_3b
    iget-boolean v0, v1, Lq/w3;->t:Z

    if-eqz v0, :cond_51

    const-string v0, "ActionHule"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "ActionEndGame"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_4f
    move v0, v10

    goto :goto_52

    :cond_51
    move v0, v9

    :goto_52
    iget-boolean v13, v1, Lq/w3;->t:Z

    if-eqz v13, :cond_61

    const-string v13, "ActionNewRound"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_61

    if-nez v0, :cond_61

    return-void

    :cond_61
    iget-object v13, v1, Lq/w3;->a:Lq/v2;

    invoke-virtual {v13, v11}, Lq/v2;->l(Ljava/lang/String;)Lq/G1;

    move-result-object v13

    if-eqz v13, :cond_851

    invoke-virtual {v12}, Lq/B;->size()I

    move-result v14

    if-nez v14, :cond_71

    goto/16 :goto_851

    :cond_71
    if-eqz v0, :cond_92

    const-string v0, "ActionHule"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_80
    const-string v0, "ActionEndGame"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    iget-boolean v2, v0, Lq/r2;->h:Z

    if-nez v2, :cond_8f

    goto :goto_91

    :cond_8f
    iput-boolean v9, v0, Lq/r2;->h:Z

    :cond_91
    :goto_91
    return-void

    :cond_92
    const-wide/16 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_852

    :goto_9b
    const/4 v0, -0x1

    goto :goto_c8

    :sswitch_9d
    const-string v0, "ActionNoTile"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto :goto_9b

    :cond_a6
    move v0, v8

    goto :goto_c8

    :sswitch_a8
    const-string v0, "ActionEndGame"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_9b

    :cond_b1
    const/4 v0, 0x2

    goto :goto_c8

    :sswitch_b3
    const-string v0, "ActionHule"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto :goto_9b

    :cond_bc
    move v0, v10

    goto :goto_c8

    :sswitch_be
    const-string v0, "ActionLiuJu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_9b

    :cond_c7
    move v0, v9

    :goto_c8
    packed-switch v0, :pswitch_data_864

    move-wide v6, v14

    goto :goto_d1

    :pswitch_cd  #0x0, 0x1, 0x2, 0x3
    const-wide/16 v16, 0x1f40

    move-wide/from16 v6, v16

    :goto_d1
    cmp-long v16, v6, v14

    if-lez v16, :cond_da

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    invoke-virtual {v0, v6, v7}, Lq/r2;->g(J)V

    :cond_da
    const-string v0, "ActionHule"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_829

    const-string v0, "ActionNoTile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_829

    const-string v0, "ActionLiuJu"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_829

    const-string v0, "ActionEndGame"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    goto/16 :goto_829

    :cond_fc
    invoke-virtual {v12}, Lq/B;->size()I

    move-result v0

    if-nez v0, :cond_105

    sget-object v0, Lq/S2;->c:[B

    goto :goto_10b

    :cond_105
    new-array v6, v0, [B

    invoke-virtual {v12, v6, v0}, Lq/B;->e([BI)V

    move-object v0, v6

    :goto_10b
    if-eqz v2, :cond_12d

    new-array v2, v5, [I

    fill-array-data v2, :array_89a

    move v6, v9

    :goto_113
    array-length v7, v0

    if-ge v6, v7, :cond_12d

    array-length v7, v0

    xor-int/lit8 v7, v7, 0x17

    mul-int/lit8 v12, v6, 0x5

    add-int/2addr v12, v7

    rem-int/lit8 v7, v6, 0x9

    aget v7, v2, v7

    add-int/2addr v12, v7

    and-int/lit16 v7, v12, 0xff

    aget-byte v12, v0, v6

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/2addr v6, v10

    goto :goto_113

    :cond_12d
    new-instance v2, Lq/Y1;

    invoke-direct {v2, v13}, Lq/Y1;-><init>(Lq/G1;)V

    array-length v5, v0

    :try_start_133
    invoke-static {v0, v9, v5, v9}, Lq/E;->d([BIIZ)Lq/C;

    move-result-object v0

    sget-object v5, Lq/b2;->e:Lq/b2;

    invoke-virtual {v2, v0, v5}, Lq/a;->v(Lq/E;Lq/d2;)Lq/a;

    invoke-virtual {v0, v9}, Lq/C;->a(I)V
    :try_end_13f
    .catch Lq/U2; {:try_start_133 .. :try_end_13f} :catch_81a
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_13f} :catch_818

    invoke-static {v2}, Lq/Y1;->E(Lq/Y1;)Lq/Z1;

    move-result-object v2

    const-string v0, "ActionNewRound"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    monitor-enter p0

    :try_start_14c
    iget-boolean v0, v1, Lq/w3;->t:Z
    :try_end_14e
    .catchall {:try_start_14c .. :try_end_14e} :catchall_15f

    if-nez v0, :cond_152

    monitor-exit p0

    goto :goto_162

    :cond_152
    :try_start_152
    iget-wide v5, v1, Lq/w3;->w:J

    invoke-virtual {v1, v5, v6}, Lq/w3;->v(J)V

    iput-boolean v9, v1, Lq/w3;->t:Z

    iput-boolean v9, v1, Lq/w3;->u:Z

    iput-boolean v9, v1, Lq/w3;->v:Z
    :try_end_15d
    .catchall {:try_start_152 .. :try_end_15d} :catchall_15f

    monitor-exit p0

    goto :goto_162

    :catchall_15f
    move-exception v0

    :try_start_160
    monitor-exit p0
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    throw v0

    :cond_162
    :goto_162
    const-string v0, "tile"

    invoke-static {v0, v2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "operation"

    invoke-static {v5, v2}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object v5

    const-string v6, "operation_list"

    if-nez v5, :cond_177

    invoke-static {v6, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v5

    goto :goto_17b

    :cond_177
    invoke-static {v6, v5}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v5

    :goto_17b
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_187

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_202

    :cond_187
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_190
    :goto_190
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v12, v7, Lq/Z1;

    if-eqz v12, :cond_190

    check-cast v7, Lq/Z1;

    const-string v12, "type"

    invoke-static {v12, v7}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "combination"

    invoke-static {v4, v7}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b9

    :cond_1cb
    new-instance v4, Lq/p;

    invoke-direct {v4, v12, v13, v0}, Lq/p;-><init>(ILjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    goto :goto_190

    :cond_1d5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_202

    :cond_1e0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1ed
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1fe

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ed

    :cond_1fe
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_202
    iput-object v0, v1, Lq/w3;->x:Ljava/util/List;

    iget v0, v1, Lq/w3;->k:I

    if-ltz v0, :cond_21b

    const-string v0, "reach_accepted"

    invoke-static {v0}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v0

    const-string v4, "actor"

    iget v5, v1, Lq/w3;->k:I

    invoke-virtual {v0, v5, v4}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lq/w3;->A(Lq/u3;)V

    const/4 v0, -0x1

    iput v0, v1, Lq/w3;->k:I

    :cond_21b
    const-string v0, "ActionNewRound"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25e

    const-string v0, "doras"

    invoke-static {v0, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v0

    iget-object v4, v1, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    if-eqz v4, :cond_25e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v1, Lq/w3;->l:I

    if-gt v4, v5, :cond_236

    goto :goto_25e

    :cond_236
    :goto_236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_258

    const-string v4, "dora"

    invoke-static {v4}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dora_marker"

    invoke-virtual {v4, v7, v6}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lq/w3;->A(Lq/u3;)V

    add-int/2addr v5, v10

    goto :goto_236

    :cond_258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lq/w3;->l:I

    :cond_25e
    :goto_25e
    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_870

    :goto_266
    const/16 v16, -0x1

    goto :goto_2b0

    :sswitch_269
    const-string v0, "ActionDiscardTile"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_272

    goto :goto_266

    :cond_272
    const/16 v16, 0x5

    goto :goto_2b0

    :sswitch_275
    const-string v0, "ActionNewRound"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27e

    goto :goto_266

    :cond_27e
    move/from16 v16, v3

    goto :goto_2b0

    :sswitch_281
    const-string v0, "ActionDealTile"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28a

    goto :goto_266

    :cond_28a
    move/from16 v16, v8

    goto :goto_2b0

    :sswitch_28d
    const-string v0, "ActionChiPengGang"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_296

    goto :goto_266

    :cond_296
    const/16 v16, 0x2

    goto :goto_2b0

    :sswitch_299
    const-string v0, "ActionBaBei"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a2

    goto :goto_266

    :cond_2a2
    move/from16 v16, v10

    goto :goto_2b0

    :sswitch_2a5
    const-string v0, "ActionAnGangAddGang"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ae

    goto :goto_266

    :cond_2ae
    move/from16 v16, v9

    :goto_2b0
    packed-switch v16, :pswitch_data_88a

    goto/16 :goto_817

    :pswitch_2b5  #0x5
    const-string v0, "seat"

    invoke-static {v0, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v3, "tile"

    invoke-static {v3, v2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_liqi"

    invoke-static {v4, v2}, Lq/w3;->k(Ljava/lang/String;Lq/Z1;)Z

    move-result v4

    const-string v5, "actor"

    if-eqz v4, :cond_2dd

    const-string v4, "reach"

    invoke-static {v4}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lq/w3;->A(Lq/u3;)V

    iput v0, v1, Lq/w3;->k:I

    :cond_2dd
    const-string v4, "dahai"

    invoke-static {v4}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-static {v3}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pai"

    invoke-virtual {v4, v6, v5}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "moqie"

    invoke-static {v5, v2}, Lq/w3;->k(Ljava/lang/String;Lq/Z1;)Z

    move-result v2

    const-string v5, "tsumogiri"

    invoke-virtual {v4, v5, v2}, Lq/u3;->c(Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lq/w3;->A(Lq/u3;)V

    iget v2, v1, Lq/w3;->h:I

    if-ltz v2, :cond_305

    if-eq v0, v2, :cond_305

    goto/16 :goto_817

    :cond_305
    if-gez v2, :cond_309

    goto/16 :goto_817

    :cond_309
    iget-object v0, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lq/w3;->x(Ljava/util/ArrayList;Ljava/lang/String;)Z

    iput-boolean v9, v1, Lq/w3;->r:Z

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    invoke-virtual {v0}, Lq/r2;->a()V

    goto/16 :goto_817

    :pswitch_317  #0x4
    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    const-string v5, "chang"

    invoke-static {v5, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v6, "ju"

    invoke-static {v6, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v7, "ben"

    invoke-static {v7, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lq/r2;->b()J

    iget-object v0, v0, Lq/r2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v11, Lq/r;

    monitor-enter v11

    :try_start_348
    sput-boolean v10, Lq/r;->g:Z

    sget-object v0, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v5, :cond_367

    if-eq v5, v10, :cond_364

    const/4 v0, 0x2

    if-eq v5, v0, :cond_361

    if-eq v5, v8, :cond_35e

    const-string v5, ""

    goto :goto_369

    :catchall_35b
    move-exception v0

    goto/16 :goto_562

    :cond_35e
    const-string v5, "北"

    goto :goto_369

    :cond_361
    const-string v5, "西"

    goto :goto_369

    :cond_364
    const-string v5, "南"

    goto :goto_369

    :cond_367
    const-string v5, "东"

    :goto_369
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v10

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "局 · "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "本场"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lq/r;->f:Ljava/lang/String;

    sput-boolean v9, Lq/r;->h:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sput-object v5, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V

    sput v3, Lq/r;->c:I

    invoke-static {}, Lq/r;->f()V
    :try_end_3a0
    .catchall {:try_start_348 .. :try_end_3a0} :catchall_35b

    monitor-exit v11

    iget-object v3, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v9, v1, Lq/w3;->r:Z

    const-string v3, "tiles"

    invoke-static {v3, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b2
    :goto_3b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lq/w3;->r(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b2

    iget-object v6, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b2

    :cond_3cc
    const/4 v5, -0x1

    iput v5, v1, Lq/w3;->k:I

    const-string v3, "doras"

    invoke-static {v3, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e4

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3ea

    :cond_3e4
    const-string v3, "dora"

    invoke-static {v3, v2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v3

    :goto_3ea
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v10

    iput v5, v1, Lq/w3;->l:I

    iget-object v5, v1, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    if-nez v5, :cond_3fe

    iget-boolean v5, v1, Lq/w3;->q:Z

    if-eqz v5, :cond_3fe

    iput-boolean v9, v1, Lq/w3;->q:Z

    invoke-virtual/range {p0 .. p0}, Lq/w3;->o()V

    :cond_3fe
    iget-object v5, v1, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    if-eqz v5, :cond_55d

    iget v5, v1, Lq/w3;->h:I

    if-ltz v5, :cond_55d

    iput-boolean v10, v1, Lq/w3;->s:Z

    :try_start_408
    const-string v5, "ju"

    invoke-static {v5, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v11, 0xe

    if-ne v7, v11, :cond_430

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_431

    :catchall_42d
    move-exception v0

    goto/16 :goto_55a

    :cond_430
    move-object v7, v4

    :goto_431
    new-instance v11, Lq/o3;

    invoke-direct {v11, v9}, Lq/o3;-><init>(I)V

    invoke-static {v11}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v11

    new-instance v12, Lq/p3;

    invoke-direct {v12, v10}, Lq/p3;-><init>(I)V

    invoke-interface {v11, v12}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move v12, v9

    :goto_44c
    iget v13, v1, Lq/w3;->m:I

    if-ge v12, v13, :cond_482

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    iget v14, v1, Lq/w3;->h:I

    if-ne v12, v14, :cond_471

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_45d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_47d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_45d

    :cond_471
    move v14, v9

    :goto_472
    const/16 v15, 0xd

    if-ge v14, v15, :cond_47d

    const-string v15, "?"

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/2addr v14, v10

    goto :goto_472

    :cond_47d
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/2addr v12, v10

    goto :goto_44c

    :cond_482
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v12, "scores"

    invoke-static {v12, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v12

    iget v13, v1, Lq/w3;->m:I

    if-ne v13, v8, :cond_495

    const v13, 0x88b8

    goto :goto_497

    :cond_495
    const/16 v13, 0x61a8

    :goto_497
    move v14, v9

    :goto_498
    iget v15, v1, Lq/w3;->m:I

    if-ge v14, v15, :cond_4b3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_4ad

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    goto :goto_4ae

    :cond_4ad
    move v15, v13

    :goto_4ae
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/2addr v14, v10

    goto :goto_498

    :cond_4b3
    const-string v12, "start_kyoku"

    invoke-static {v12}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v12

    const-string v13, "bakaze"

    const-string v14, "chang"

    invoke-static {v14, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    const-string v15, "E"

    if-eqz v14, :cond_4d9

    if-eq v14, v10, :cond_4d7

    const/4 v0, 0x2

    if-eq v14, v0, :cond_4d4

    if-eq v14, v8, :cond_4d1

    goto :goto_4d9

    :cond_4d1
    const-string v15, "N"

    goto :goto_4d9

    :cond_4d4
    const-string v15, "W"

    goto :goto_4d9

    :cond_4d7
    const-string v15, "S"

    :cond_4d9
    :goto_4d9
    invoke-virtual {v12, v13, v15}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dora_marker"

    invoke-static {v3}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kyoku"

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v12, v3, v0}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "honba"

    const-string v3, "ben"

    invoke-static {v3, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v12, v3, v0}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "kyotaku"

    const-string v3, "liqibang"

    invoke-static {v3, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v12, v2, v0}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "oya"

    invoke-virtual {v12, v5, v0}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "scores"

    invoke-virtual {v12, v0, v6}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tehais"

    invoke-virtual {v12, v0, v11}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Lq/w3;->A(Lq/u3;)V

    if-eqz v7, :cond_53a

    iput-boolean v10, v1, Lq/w3;->r:Z

    const-string v0, "tsumo"

    invoke-static {v0}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v0

    const-string v2, "actor"

    iget v3, v1, Lq/w3;->h:I

    invoke-virtual {v0, v3, v2}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v2, "pai"

    invoke-static {v7}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lq/w3;->A(Lq/u3;)V

    goto :goto_54f

    :cond_53a
    const-string v0, "tsumo"

    invoke-static {v0}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v0

    const-string v2, "actor"

    invoke-virtual {v0, v5, v2}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v2, "pai"

    const-string v3, "?"

    invoke-virtual {v0, v2, v3}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lq/w3;->A(Lq/u3;)V
    :try_end_54f
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_54f} :catch_552
    .catchall {:try_start_408 .. :try_end_54f} :catchall_42d

    :goto_54f
    iput-boolean v9, v1, Lq/w3;->s:Z

    goto :goto_55d

    :catch_552
    :try_start_552
    invoke-virtual/range {p0 .. p0}, Lq/w3;->c()V

    iput-object v4, v1, Lq/w3;->o:Lq/n;

    iput-boolean v9, v1, Lq/w3;->q:Z
    :try_end_559
    .catchall {:try_start_552 .. :try_end_559} :catchall_42d

    goto :goto_54f

    :goto_55a
    iput-boolean v9, v1, Lq/w3;->s:Z

    throw v0

    :cond_55d
    :goto_55d
    invoke-virtual/range {p0 .. p0}, Lq/w3;->u()V

    goto/16 :goto_817

    :goto_562
    :try_start_562
    monitor-exit v11
    :try_end_563
    .catchall {:try_start_562 .. :try_end_563} :catchall_35b

    throw v0

    :pswitch_564  #0x3
    const-string v0, "seat"

    invoke-static {v0, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v3, "tile"

    invoke-static {v3, v2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lq/w3;->h:I

    if-ltz v3, :cond_581

    if-ne v0, v3, :cond_581

    invoke-static {v2}, Lq/w3;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_581

    move v9, v10

    :cond_581
    if-eqz v9, :cond_58a

    iget-object v3, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v10, v1, Lq/w3;->r:Z

    :cond_58a
    const-string v3, "tsumo"

    invoke-static {v3}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v3

    const-string v4, "actor"

    invoke-virtual {v3, v0, v4}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59e

    const-string v0, "?"

    goto :goto_5a2

    :cond_59e
    invoke-static {v2}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5a2
    const-string v2, "pai"

    invoke-virtual {v3, v2, v0}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lq/w3;->A(Lq/u3;)V

    if-nez v9, :cond_5ae

    goto/16 :goto_817

    :cond_5ae
    invoke-virtual/range {p0 .. p0}, Lq/w3;->u()V

    goto/16 :goto_817

    :pswitch_5b3  #0x2
    const-string v3, "seat"

    invoke-static {v3, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget v5, v1, Lq/w3;->h:I

    if-ltz v5, :cond_5c5

    if-ne v3, v5, :cond_5c5

    move v5, v10

    goto :goto_5c6

    :cond_5c5
    move v5, v9

    :goto_5c6
    invoke-virtual {v1, v5}, Lq/w3;->t(Z)V

    const-string v6, "tiles"

    invoke-static {v6, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v6

    const-string v7, "froms"

    invoke-static {v7, v2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, ""

    move v14, v3

    if-ne v11, v12, :cond_61a

    move v11, v9

    move-object v12, v13

    :goto_5e9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_61b

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-ne v15, v3, :cond_60b

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_618

    :cond_60b
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v14, v15

    :goto_618
    add-int/2addr v11, v10

    goto :goto_5e9

    :cond_61a
    move-object v12, v13

    :cond_61b
    const-string v11, "type"

    invoke-static {v11, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_633

    if-eq v2, v10, :cond_630

    const/4 v0, 0x2

    if-eq v2, v0, :cond_62d

    goto :goto_635

    :cond_62d
    const-string v13, "daiminkan"

    goto :goto_635

    :cond_630
    const-string v13, "pon"

    goto :goto_635

    :cond_633
    const-string v13, "chi"

    :goto_635
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_659

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_659

    invoke-static {v13}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v4

    const-string v0, "actor"

    invoke-virtual {v4, v3, v0}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "target"

    invoke-virtual {v4, v14, v0}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "pai"

    invoke-virtual {v4, v0, v12}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consumed"

    invoke-virtual {v4, v0, v8}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_659
    if-nez v5, :cond_662

    if-eqz v4, :cond_817

    invoke-virtual {v1, v4}, Lq/w3;->A(Lq/u3;)V

    goto/16 :goto_817

    :cond_662
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_695

    move v0, v9

    move v2, v0

    :goto_66e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_696

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget v5, v1, Lq/w3;->h:I

    if-ne v3, v5, :cond_693

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lq/w3;->x(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_693

    add-int/2addr v2, v10

    :cond_693
    add-int/2addr v0, v10

    goto :goto_66e

    :cond_695
    move v2, v9

    :cond_696
    if-nez v2, :cond_6b3

    move v0, v9

    :goto_699
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v0, v2, :cond_6b3

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lq/w3;->x(Ljava/util/ArrayList;Ljava/lang/String;)Z

    add-int/2addr v0, v10

    goto :goto_699

    :cond_6b3
    iput-boolean v9, v1, Lq/w3;->r:Z

    if-eqz v4, :cond_6ba

    invoke-virtual {v1, v4}, Lq/w3;->A(Lq/u3;)V

    :cond_6ba
    invoke-virtual/range {p0 .. p0}, Lq/w3;->u()V

    goto/16 :goto_817

    :pswitch_6bf  #0x1
    const-string v0, "seat"

    invoke-static {v0, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, v1, Lq/w3;->h:I

    if-ltz v2, :cond_6d0

    if-ne v0, v2, :cond_6d0

    move v9, v10

    :cond_6d0
    invoke-virtual {v1, v9}, Lq/w3;->t(Z)V

    const-string v2, "nukidora"

    invoke-static {v2}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v2

    const-string v3, "actor"

    invoke-virtual {v2, v0, v3}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v0, "pai"

    const-string v3, "N"

    invoke-virtual {v2, v0, v3}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lq/w3;->A(Lq/u3;)V

    if-eqz v9, :cond_817

    const-string v0, "4z"

    iget-object v2, v1, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lq/w3;->x(Ljava/util/ArrayList;Ljava/lang/String;)Z

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    invoke-virtual {v0}, Lq/r2;->a()V

    goto/16 :goto_817

    :pswitch_6f8  #0x0
    const-string v4, "seat"

    invoke-static {v4, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget v5, v1, Lq/w3;->h:I

    if-ltz v5, :cond_70a

    if-ne v4, v5, :cond_70a

    move v5, v10

    goto :goto_70b

    :cond_70a
    move v5, v9

    :goto_70b
    invoke-virtual {v1, v5}, Lq/w3;->t(Z)V

    const-string v6, "tiles"

    invoke-static {v6, v2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq/w3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "type"

    invoke-static {v11, v2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    const-string v12, "consumed"

    const-string v13, "actor"

    const-string v14, "r"

    const-string v15, ""

    if-ne v11, v8, :cond_76c

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v7}, Lq/w3;->q(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_74d

    const-string v9, ""

    const-string v10, "r"

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v3, 0x2

    if-ne v8, v3, :cond_74a

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_74a
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_74d
    :goto_74d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_75c

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_74d

    :cond_75c
    const-string v7, "ankan"

    invoke-static {v7}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v7

    invoke-virtual {v7, v4, v13}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-virtual {v7, v12, v0}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Lq/w3;->A(Lq/u3;)V

    goto :goto_7ba

    :cond_76c
    move v9, v3

    const/4 v0, 0x2

    if-ne v11, v0, :cond_7ba

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v7}, Lq/w3;->q(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_797

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_797

    const-string v8, ""

    const-string v10, "r"

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_794

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_794
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_797
    :goto_797
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_7a6

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_797

    :cond_7a6
    const-string v8, "kakan"

    invoke-static {v8}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v8

    invoke-virtual {v8, v4, v13}, Lq/u3;->a(ILjava/lang/String;)V

    const-string v4, "pai"

    invoke-virtual {v8, v4, v7}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v12, v3}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Lq/w3;->A(Lq/u3;)V

    :cond_7ba
    :goto_7ba
    if-nez v5, :cond_7bd

    goto :goto_817

    :cond_7bd
    invoke-static {v6, v2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lq/w3;->e:Ljava/util/ArrayList;

    const/4 v4, 0x3

    if-ne v11, v4, :cond_7c8

    const/4 v0, 0x4

    goto :goto_7ce

    :cond_7c8
    const/4 v0, 0x2

    if-ne v11, v0, :cond_7cd

    const/4 v0, 0x1

    goto :goto_7ce

    :cond_7cd
    const/4 v0, 0x0

    :goto_7ce
    if-eqz v3, :cond_812

    if-eqz v0, :cond_812

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7d9

    goto :goto_812

    :cond_7d9
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_7e2
    if-ge v9, v4, :cond_801

    aget-object v6, v2, v9

    invoke-static {v6}, Lq/w3;->r(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7ee

    :cond_7ec
    const/4 v6, 0x1

    goto :goto_7ff

    :cond_7ee
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7f5

    move-object v15, v6

    :cond_7f5
    if-ge v5, v0, :cond_7ec

    invoke-static {v3, v6}, Lq/w3;->x(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7ec

    const/4 v6, 0x1

    add-int/2addr v5, v6

    :goto_7ff
    add-int/2addr v9, v6

    goto :goto_7e2

    :cond_801
    const/4 v6, 0x1

    :goto_802
    if-ge v5, v0, :cond_812

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_812

    invoke-static {v3, v15}, Lq/w3;->x(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_812

    add-int/2addr v5, v6

    goto :goto_802

    :cond_812
    :goto_812
    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    invoke-virtual {v0}, Lq/r2;->a()V

    :cond_817
    :goto_817
    return-void

    :catch_818
    move-exception v0

    goto :goto_81c

    :catch_81a
    move-exception v0

    goto :goto_828

    :goto_81c
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "byte array"

    invoke-virtual {v2, v4}, Lq/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_828
    throw v0

    :cond_829
    :goto_829
    const-string v0, "ActionHule"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_836

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_836
    const-string v0, "ActionEndGame"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_848

    iget-object v0, v1, Lq/w3;->b:Lq/r2;

    iget-boolean v2, v0, Lq/r2;->h:Z

    if-nez v2, :cond_845

    goto :goto_848

    :cond_845
    const/4 v2, 0x0

    iput-boolean v2, v0, Lq/r2;->h:Z

    :cond_848
    :goto_848
    const-string v0, "ActionEndGame"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lq/w3;->s(Z)V

    :cond_851
    :goto_851
    return-void

    :sswitch_data_852
    .sparse-switch
        -0x3f40eeb3 -> :sswitch_be
        -0x1ad23144 -> :sswitch_b3
        0x228b6437 -> :sswitch_a8
        0x5ad2ca05 -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_864
    .packed-switch 0x0
        :pswitch_cd  #00000000
        :pswitch_cd  #00000001
        :pswitch_cd  #00000002
        :pswitch_cd  #00000003
    .end packed-switch

    :sswitch_data_870
    .sparse-switch
        -0x557df062 -> :sswitch_2a5
        -0x3fd238ef -> :sswitch_299
        -0x187527d1 -> :sswitch_28d
        -0x18333a50 -> :sswitch_281
        0x1ac13444 -> :sswitch_275
        0x2431dc36 -> :sswitch_269
    .end sparse-switch

    :pswitch_data_88a
    .packed-switch 0x0
        :pswitch_6f8  #00000000
        :pswitch_6bf  #00000001
        :pswitch_5b3  #00000002
        :pswitch_564  #00000003
        :pswitch_317  #00000004
        :pswitch_2b5  #00000005
    .end packed-switch

    :array_89a
    .array-data 4
        0x84
        0x5e
        0x4e
        0x42
        0x39
        0xa2
        0x1f
        0x60
        0x1c
    .end array-data
.end method

.method public final g(ILjava/lang/String;Lq/B;)V
    .registers 7

    if-eqz p2, :cond_8e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8e

    :cond_a
    iget-object v0, p0, Lq/w3;->a:Lq/v2;

    invoke-virtual {v0, p2}, Lq/v2;->l(Ljava/lang/String;)Lq/G1;

    move-result-object p2

    if-nez p2, :cond_13

    return-void

    :cond_13
    invoke-static {p2, p3}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object p3

    iget-object p2, p2, Lq/G1;->a:Lq/Q;

    invoke-virtual {p2}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionPrototype"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2, p1}, Lq/w3;->f(Lq/Z1;ZI)V

    goto :goto_8e

    :cond_2a
    invoke-virtual {p2}, Lq/Q;->C()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotifyGameEndResult"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lq/w3;->b:Lq/r2;

    if-eqz p1, :cond_4d

    iget p1, p0, Lq/w3;->h:I

    if-ltz p1, :cond_3d

    goto :goto_49

    :cond_3d
    iget p1, p0, Lq/w3;->i:I

    if-ltz p1, :cond_49

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lq/w3;->j:J

    cmp-long p1, p1, v1

    :cond_49
    :goto_49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8e

    :cond_4d
    invoke-virtual {p2}, Lq/Q;->C()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotifyGameFinishRewardV2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const-string p1, "level_change"

    invoke-static {p1, p3}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p1

    if-nez p1, :cond_63

    const/4 p1, 0x0

    goto :goto_69

    :cond_63
    const-string p2, "final"

    invoke-static {p2, p1}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p1

    :goto_69
    if-nez p1, :cond_6c

    goto :goto_8e

    :cond_6c
    const-string p2, "mode_id"

    invoke-static {p2, p3}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/16 p3, 0x4e20

    if-lt p2, p3, :cond_7b

    goto :goto_82

    :cond_7b
    const/16 p3, 0x2710

    if-lt p2, p3, :cond_80

    goto :goto_82

    :cond_80
    sget-object p2, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_82
    const-string p2, "id"

    invoke-static {p2, p1}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8e
    :goto_8e
    return-void
.end method

.method public final h(Ljava/lang/String;Lq/B;)V
    .registers 15

    iget-object v0, p0, Lq/w3;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/v3;

    if-nez v0, :cond_21

    if-eqz p1, :cond_20

    iget-object v0, p0, Lq/w3;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lq/w3;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1b
    iget-object v0, p0, Lq/w3;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void

    :cond_21
    iget-object v1, v0, Lq/v3;->b:Lq/G1;

    invoke-static {v1, p2}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object p2

    iget-object v1, p2, Lq/Z1;->c:Lq/G1;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lq/G1;->g(Ljava/lang/String;)Lq/R1;

    move-result-object v1

    if-eqz v1, :cond_60

    iget-object v2, v1, Lq/R1;->h:Lq/G1;

    iget-object v3, p2, Lq/Z1;->c:Lq/G1;

    if-ne v2, v3, :cond_58

    iget-object v2, p2, Lq/Z1;->d:Lq/g2;

    invoke-virtual {v2, v1}, Lq/g2;->i(Lq/R1;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_60

    :cond_40
    invoke-virtual {p2, v1}, Lq/Z1;->m(Lq/R1;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq/Z1;

    if-eqz v2, :cond_60

    check-cast v1, Lq/Z1;

    const-string v2, "code"

    invoke-static {v2, v1}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_57

    goto :goto_60

    :cond_57
    return-void

    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    :goto_60
    iget v1, v0, Lq/v3;->c:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6a

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6f

    :cond_6a
    iget-object v1, p0, Lq/w3;->b:Lq/r2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6f
    iget-object v1, v0, Lq/v3;->b:Lq/G1;

    iget-object v1, v1, Lq/G1;->a:Lq/Q;

    invoke-virtual {v1}, Lq/Q;->C()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResLogin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_104

    iget-wide v0, p0, Lq/w3;->g:J

    const-string p1, "account_id"

    invoke-static {p1, p2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v2

    invoke-static {v2}, Lq/w3;->C(Ljava/lang/Object;)J

    move-result-wide v6

    iput-wide v6, p0, Lq/w3;->g:J

    const-string v2, "account"

    invoke-static {v2, p2}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p2

    const-string v2, ""

    if-nez p2, :cond_9c

    move-object v6, v2

    goto :goto_a2

    :cond_9c
    const-string v6, "nickname"

    invoke-static {v6, p2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v6

    :goto_a2
    iget-wide v7, p0, Lq/w3;->g:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_b4

    if-eqz p2, :cond_b4

    invoke-static {p1, p2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Lq/w3;->C(Ljava/lang/Object;)J

    move-result-wide v7

    iput-wide v7, p0, Lq/w3;->g:J

    :cond_b4
    iget-object p1, p0, Lq/w3;->b:Lq/r2;

    if-eqz p2, :cond_c5

    const-string v7, "level"

    invoke-static {v7, p2}, Lq/w3;->b(Ljava/lang/String;Lq/Z1;)V

    const-string v7, "level3"

    invoke-static {v7, p2}, Lq/w3;->b(Ljava/lang/String;Lq/Z1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c5
    cmp-long p2, v0, v4

    if-eqz p2, :cond_d8

    iget-wide v7, p0, Lq/w3;->g:J

    cmp-long p2, v7, v4

    if-eqz p2, :cond_d8

    cmp-long p2, v0, v7

    if-eqz p2, :cond_d8

    iput v3, p0, Lq/w3;->i:I

    iput-wide v4, p0, Lq/w3;->j:J

    goto :goto_e6

    :cond_d8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v7, p0, Lq/w3;->j:J

    cmp-long p2, v0, v7

    if-lez p2, :cond_e6

    iput v3, p0, Lq/w3;->i:I

    iput-wide v4, p0, Lq/w3;->j:J

    :cond_e6
    :goto_e6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_fc

    iget-wide v0, p0, Lq/w3;->g:J

    cmp-long p2, v0, v4

    if-nez p2, :cond_f3

    goto :goto_f7

    :cond_f3
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :goto_f7
    invoke-virtual {p1, v6, v2}, Lq/r2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32e

    :cond_fc
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->b()V

    goto/16 :goto_32e

    :cond_104
    const-string v2, "ResFastLogin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_316

    iget-object v0, v0, Lq/v3;->a:Ljava/lang/String;

    const-string v2, ".loginSuccess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_316

    :cond_118
    const-string v0, "ResAuthGame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_249

    if-nez p1, :cond_125

    :catch_123
    :goto_123
    move p1, v3

    goto :goto_136

    :cond_125
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_12e

    goto :goto_123

    :cond_12e
    :try_start_12e
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_136} :catch_123

    :goto_136
    const-string v0, "seat_list"

    invoke-static {v0, p2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_14f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x4

    if-eq v1, v7, :cond_14f

    invoke-virtual {p0, v2}, Lq/w3;->z(I)V

    goto/16 :goto_32e

    :cond_14f
    sget v1, Lq/r;->c:I

    const/4 v7, 0x1

    if-eq v1, v7, :cond_159

    sget v1, Lq/r;->c:I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_175

    :cond_159
    sget-object v1, Lq/r;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_175

    iget-object v1, p0, Lq/w3;->b:Lq/r2;

    sget-object v8, Lq/r;->d:Ljava/lang/String;

    iget-wide v9, p0, Lq/w3;->g:J

    cmp-long v11, v9, v4

    if-nez v11, :cond_16e

    sget-object v9, Lq/r;->e:Ljava/lang/String;

    goto :goto_172

    :cond_16e
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    :goto_172
    invoke-virtual {v1, v8, v9}, Lq/r2;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_17e

    sget-object v1, Lq/n;->d:Lq/n;

    goto :goto_180

    :cond_17e
    sget-object v1, Lq/n;->e:Lq/n;

    :goto_180
    if-ltz p1, :cond_184

    iput p1, p0, Lq/w3;->n:I

    :cond_184
    iget-object v6, p0, Lq/w3;->b:Lq/r2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->b()V

    sget-object v8, Lq/r;->b:Lq/n;

    if-ne v8, v1, :cond_191

    goto :goto_19f

    :cond_191
    sput-object v1, Lq/r;->b:Lq/n;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    sput-object v8, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V

    invoke-static {}, Lq/r;->f()V

    :goto_19f
    iget-boolean v8, v6, Lq/r2;->h:Z

    if-nez v8, :cond_1a5

    iput-boolean v7, v6, Lq/r2;->h:Z

    :cond_1a5
    iget-object v7, v6, Lq/r2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lq/m2;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v1, v9}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-wide v6, p0, Lq/w3;->g:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_1be

    :try_start_1b6
    sget-object v1, Lq/r;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_1b6 .. :try_end_1bc} :catch_1bd

    goto :goto_1be

    :catch_1bd
    move-wide v6, v4

    :cond_1be
    :goto_1be
    cmp-long v1, v6, v4

    if-nez v1, :cond_1fc

    sget-object v1, Lq/r;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1fc

    const-string v1, "players"

    invoke-static {v1, p2}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1fc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v1, Lq/Z1;

    if-eqz v8, :cond_1d4

    check-cast v1, Lq/Z1;

    sget-object v8, Lq/r;->d:Ljava/lang/String;

    const-string v9, "nickname"

    invoke-static {v9, v1}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d4

    const-string p2, "account_id"

    invoke-static {p2, v1}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object p2

    invoke-static {p2}, Lq/w3;->C(Ljava/lang/Object;)J

    move-result-wide v6

    :cond_1fc
    cmp-long p2, v6, v4

    if-eqz p2, :cond_219

    iput-wide v6, p0, Lq/w3;->g:J

    move p2, v2

    :goto_203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_219

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lq/w3;->C(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_216

    goto :goto_21a

    :cond_216
    add-int/lit8 p2, p2, 0x1

    goto :goto_203

    :cond_219
    move p2, v3

    :goto_21a
    iput p2, p0, Lq/w3;->h:I

    if-ltz p2, :cond_22a

    iput p2, p0, Lq/w3;->i:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xafc8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lq/w3;->j:J

    :cond_22a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lq/w3;->z(I)V

    iget-object p2, p0, Lq/w3;->y:Lq/Z1;

    iget-boolean v0, p0, Lq/w3;->z:Z

    iget v1, p0, Lq/w3;->A:I

    const/4 v4, 0x0

    iput-object v4, p0, Lq/w3;->y:Lq/Z1;

    iput-boolean v2, p0, Lq/w3;->z:Z

    iput v3, p0, Lq/w3;->A:I

    if-eqz p2, :cond_32e

    if-ltz v1, :cond_244

    if-ne v1, p1, :cond_32e

    :cond_244
    :try_start_244
    invoke-virtual {p0, p2, v0, p1}, Lq/w3;->f(Lq/Z1;ZI)V
    :try_end_247
    .catch Lq/U2; {:try_start_244 .. :try_end_247} :catch_32e

    goto/16 :goto_32e

    :cond_249
    const-string p1, "ResSyncGame"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27b

    const-string p1, "ResEnterGame"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25a

    goto :goto_27b

    :cond_25a
    const-string p1, "ResAccountInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32e

    const-string p1, "account"

    invoke-static {p1, p2}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p1

    if-eqz p1, :cond_32e

    iget-object p2, p0, Lq/w3;->b:Lq/r2;

    const-string v0, "level"

    invoke-static {v0, p1}, Lq/w3;->b(Ljava/lang/String;Lq/Z1;)V

    const-string v0, "level3"

    invoke-static {v0, p1}, Lq/w3;->b(Ljava/lang/String;Lq/Z1;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_32e

    :cond_27b
    :goto_27b
    const-string p1, "is_end"

    invoke-static {p1, p2}, Lq/w3;->k(Ljava/lang/String;Lq/Z1;)Z

    move-result p1

    if-eqz p1, :cond_285

    goto/16 :goto_32e

    :cond_285
    const-string p1, "game_restore"

    invoke-static {p1, p2}, Lq/w3;->l(Ljava/lang/String;Lq/Z1;)Lq/Z1;

    move-result-object p1

    if-nez p1, :cond_292

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_298

    :cond_292
    const-string p2, "actions"

    invoke-static {p2, p1}, Lq/w3;->y(Ljava/lang/String;Lq/Z1;)Ljava/util/List;

    move-result-object p1

    :goto_298
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a0

    goto/16 :goto_32e

    :cond_2a0
    iget-object p2, p0, Lq/w3;->b:Lq/r2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    invoke-virtual {p2}, Lq/r2;->b()J

    iget-object p2, p2, Lq/r2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p2, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long p2, v0, v4

    if-eqz p2, :cond_2be

    invoke-static {}, Lq/r;->f()V

    :cond_2be
    const-class p2, Lq/r;

    monitor-enter p2

    :try_start_2c1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lq/r;->i:Ljava/util/List;

    invoke-static {}, Lq/r;->d()V
    :try_end_2ca
    .catchall {:try_start_2c1 .. :try_end_2ca} :catchall_313

    monitor-exit p2

    iput-boolean v2, p0, Lq/w3;->t:Z

    iput-boolean v2, p0, Lq/w3;->u:Z

    iput-boolean v2, p0, Lq/w3;->v:Z

    iget-wide v0, p0, Lq/w3;->w:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lq/w3;->w:J

    iget-object p2, p0, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lq/w3;->x:Ljava/util/List;

    iput-boolean v2, p0, Lq/w3;->r:Z

    iput-boolean v2, p0, Lq/w3;->s:Z

    iput v3, p0, Lq/w3;->k:I

    iput v2, p0, Lq/w3;->l:I

    iget p2, p0, Lq/w3;->m:I

    invoke-virtual {p0, p2}, Lq/w3;->z(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_2f4
    :cond_2f4
    :goto_2f4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_308

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lq/Z1;

    if-eqz v0, :cond_2f4

    check-cast p2, Lq/Z1;

    :try_start_304
    invoke-virtual {p0, p2, v2, v3}, Lq/w3;->f(Lq/Z1;ZI)V
    :try_end_307
    .catch Lq/U2; {:try_start_304 .. :try_end_307} :catch_2f4

    goto :goto_2f4

    :cond_308
    iget-object p1, p0, Lq/w3;->b:Lq/r2;

    iget-object p2, p0, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_32e

    :catchall_313
    move-exception p1

    :try_start_314
    monitor-exit p2
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_313

    throw p1

    :cond_316
    :goto_316
    sget-object p1, Lq/r;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_326

    iget-object p2, p0, Lq/w3;->b:Lq/r2;

    sget-object v0, Lq/r;->e:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lq/r2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32e

    :cond_326
    iget-object p1, p0, Lq/w3;->b:Lq/r2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->b()V

    :catch_32e
    :cond_32e
    :goto_32e
    return-void
.end method

.method public final o()V
    .registers 4

    iget-object v0, p0, Lq/w3;->o:Lq/n;

    if-eqz v0, :cond_3b

    iget v1, p0, Lq/w3;->h:I

    if-ltz v1, :cond_3b

    sget-object v1, Lq/n;->d:Lq/n;

    if-ne v0, v1, :cond_f

    sget-boolean v0, Lcom/qiuhui/mahjong/MortalStateEncoder;->e:Z

    goto :goto_11

    :cond_f
    sget-boolean v0, Lcom/qiuhui/mahjong/MortalStateEncoder;->f:Z

    :goto_11
    if-nez v0, :cond_14

    goto :goto_3b

    :cond_14
    :try_start_14
    iget-object v0, p0, Lq/w3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/qiuhui/mahjong/MortalStateEncoder;

    iget v1, p0, Lq/w3;->h:I

    iget-object v2, p0, Lq/w3;->o:Lq/n;

    invoke-direct {v0, v1, v2}, Lcom/qiuhui/mahjong/MortalStateEncoder;-><init>(ILq/n;)V

    iput-object v0, p0, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    const-string v0, "start_game"

    invoke-static {v0}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object v0

    const-string v1, "id"

    iget v2, p0, Lq/w3;->h:I

    invoke-virtual {v0, v2, v1}, Lq/u3;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lq/w3;->A(Lq/u3;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    invoke-virtual {p0}, Lq/w3;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/w3;->q:Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final declared-synchronized p(I)Z
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_c

    :try_start_3
    iget v0, p0, Lq/w3;->n:I

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1

    :cond_c
    const/4 p1, 0x0

    :goto_d
    monitor-exit p0

    return p1
.end method

.method public final s(Z)V
    .registers 8

    iget-boolean v0, p0, Lq/w3;->t:Z

    iget-object v1, p0, Lq/w3;->b:Lq/r2;

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    iget-wide v3, p0, Lq/w3;->w:J

    invoke-virtual {p0, v3, v4}, Lq/w3;->v(J)V

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lq/w3;->v:Z

    if-nez p1, :cond_1d

    iput-boolean v2, p0, Lq/w3;->v:Z

    new-instance p1, Lq/r3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lq/r3;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Lq/r2;->f(ZLjava/lang/Runnable;)V

    :cond_1d
    return-void

    :cond_1e
    iput-boolean v2, p0, Lq/w3;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/w3;->u:Z

    iput-boolean p1, p0, Lq/w3;->v:Z

    iget-wide v2, p0, Lq/w3;->w:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lq/w3;->w:J

    new-instance v0, Lq/s3;

    invoke-direct {v0, p0, v2, v3}, Lq/s3;-><init>(Lq/w3;J)V

    invoke-virtual {v1, p1, v0}, Lq/r2;->f(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public final t(Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lq/w3;->b:Lq/r2;

    iget-object v0, p1, Lq/r2;->a:Lq/W3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Lq/r2;->g(J)V

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method public final u()V
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lq/w3;->p:Lcom/qiuhui/mahjong/MortalStateEncoder;

    if-eqz v3, :cond_8

    return-void

    :cond_8
    iget-boolean v3, p0, Lq/w3;->q:Z

    iget-object v4, p0, Lq/w3;->b:Lq/r2;

    if-eqz v3, :cond_12

    invoke-virtual {v4}, Lq/r2;->a()V

    return-void

    :cond_12
    iget-object v3, p0, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lq/o3;

    invoke-direct {v3, v2}, Lq/o3;-><init>(I)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v7, Lq/p3;

    invoke-direct {v7, v2}, Lq/p3;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v1, [C

    fill-array-data v7, :array_90

    move v8, v2

    :goto_48
    if-ge v8, v1, :cond_83

    aget-char v9, v7, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_55
    :goto_55
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_75

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v6, :cond_55

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_55

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    :cond_75
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_81

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_81
    add-int/2addr v8, v0

    goto :goto_48

    :cond_83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lq/r2;->d(Ljava/lang/String;)V

    goto :goto_8e

    :cond_8b
    invoke-virtual {v4}, Lq/r2;->a()V

    :goto_8e
    return-void

    nop

    :array_90
    .array-data 2
        0x6ds
        0x70s
        0x73s
        0x7as
    .end array-data
.end method

.method public final declared-synchronized v(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lq/w3;->t:Z

    if-eqz v0, :cond_2e

    iget-wide v0, p0, Lq/w3;->w:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_2e

    iget-boolean p1, p0, Lq/w3;->u:Z

    if-eqz p1, :cond_10

    goto :goto_2e

    :cond_10
    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/w3;->u:Z

    iget-object p1, p0, Lq/w3;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/w3;->r:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/w3;->x:Ljava/util/List;

    const-string p1, "end_kyoku"

    invoke-static {p1}, Lq/w3;->i(Ljava/lang/String;)Lq/u3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq/w3;->A(Lq/u3;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    goto :goto_30

    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2c

    throw p1
.end method

.method public final w(Ljava/lang/String;Lq/t3;)V
    .registers 14

    iget-object v0, p0, Lq/w3;->a:Lq/v2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const-string v2, "."

    const/4 v3, 0x0

    iget-object v4, p2, Lq/t3;->a:Ljava/lang/String;

    iget-object v0, v0, Lq/v2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    if-nez v4, :cond_13

    move-object v5, v3

    goto :goto_25

    :cond_13
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1f

    :cond_1e
    move-object v5, v4

    :goto_1f
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/U1;

    :goto_25
    if-nez v5, :cond_29

    move-object v5, v3

    goto :goto_2b

    :cond_29
    iget-object v5, v5, Lq/U1;->d:Lq/G1;

    :goto_2b
    const-string v6, ".inputOperation"

    const-string v7, ".inputChiPengGang"

    const-string v8, ".matchGame"

    const-string v9, ".authGame"

    if-eqz v5, :cond_54

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4d

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4d

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4d

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_54

    :cond_4d
    iget-object p2, p2, Lq/t3;->b:Lq/B;

    invoke-static {v5, p2}, Lq/Z1;->u(Lq/G1;Lq/B;)Lq/Z1;

    move-result-object p2

    goto :goto_55

    :cond_54
    move-object p2, v3

    :goto_55
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    if-eqz p2, :cond_68

    const-string v5, "type"

    invoke-static {v5, p2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_69

    :cond_68
    const/4 v5, -0x1

    :goto_69
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_75

    :cond_74
    move-object v1, v4

    :goto_75
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/U1;

    if-nez v0, :cond_7e

    goto :goto_80

    :cond_7e
    iget-object v3, v0, Lq/U1;->e:Lq/G1;

    :goto_80
    iget-object v0, p0, Lq/w3;->d:Ljava/util/HashMap;

    if-eqz v3, :cond_9c

    iget-object v1, p0, Lq/w3;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v6, 0x200

    if-lt v2, v6, :cond_94

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_94
    new-instance v2, Lq/v3;

    invoke-direct {v2, v4, v3, v5}, Lq/v3;-><init>(Ljava/lang/String;Lq/G1;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    if-eqz p2, :cond_b0

    const-string v1, "account_id"

    invoke-static {v1, p2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lq/w3;->C(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, p0, Lq/w3;->g:J

    :cond_b0
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lq/w3;->b:Lq/r2;

    if-eqz v1, :cond_cb

    if-eqz p2, :cond_cb

    const-string v1, "match_mode"

    invoke-static {v1, p2}, Lq/w3;->m(Ljava/lang/String;Lq/Z1;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    const-string v1, "client_version_string"

    invoke-static {v1, p2}, Lq/w3;->n(Ljava/lang/String;Lq/Z1;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_cb
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    if-eqz p2, :cond_f6

    const-string v1, "cancel_operation"

    invoke-static {v1, p2}, Lq/w3;->k(Ljava/lang/String;Lq/Z1;)Z

    move-result p2

    if-eqz p2, :cond_f6

    iget-object p2, v2, Lq/r2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p2, Lq/r;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-eqz p2, :cond_f3

    invoke-static {}, Lq/r;->f()V

    :cond_f3
    invoke-virtual {v2}, Lq/r2;->a()V

    :cond_f6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq/B;

    if-eqz p2, :cond_103

    if-eqz v3, :cond_103

    invoke-virtual {p0, p1, p2}, Lq/w3;->h(Ljava/lang/String;Lq/B;)V

    :cond_103
    return-void
.end method

.method public final z(I)V
    .registers 5

    invoke-virtual {p0}, Lq/w3;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq/w3;->o:Lq/n;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lq/w3;->q:Z

    const/4 v2, -0x1

    iput v2, p0, Lq/w3;->k:I

    iput v1, p0, Lq/w3;->l:I

    iput p1, p0, Lq/w3;->m:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_16

    sget-object v0, Lq/n;->d:Lq/n;

    goto :goto_1b

    :cond_16
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1b

    sget-object v0, Lq/n;->e:Lq/n;

    :cond_1b
    :goto_1b
    iput-object v0, p0, Lq/w3;->o:Lq/n;

    invoke-virtual {p0}, Lq/w3;->o()V

    return-void
.end method
