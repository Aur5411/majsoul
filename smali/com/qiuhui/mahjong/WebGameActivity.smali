.class public final Lcom/qiuhui/mahjong/WebGameActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lq/o;
.implements Lq/M2;


# static fields
.field public static volatile C:Z

.field public static final D:Ljava/util/HashSet;

.field public static final E:[D

.field public static final F:[[D

.field public static final G:[D

.field public static final H:[D

.field public static final I:[J


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public a:Landroid/webkit/WebView;

.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/TextView;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:J

.field public volatile j:Lq/K5;

.field public k:Landroid/content/SharedPreferences;

.field public l:Lq/t5;

.field public m:Landroid/content/SharedPreferences;

.field public n:Lq/t5;

.field public final o:Landroid/os/Handler;

.field public final p:Landroid/os/Handler;

.field public final q:Landroid/os/Handler;

.field public final r:Landroid/os/Handler;

.field public final s:Lq/s5;

.field public final t:Lq/s5;

.field public final u:Lq/s5;

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Lq/A2;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "https://maj-soul.com"

    const-string v2, "https://*.maj-soul.com"

    const-string v3, "https://mahjongsoul.com"

    const-string v4, "https://*.mahjongsoul.com"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->D:Ljava/util/HashSet;

    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_60

    sput-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->E:[D

    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_9c

    new-array v2, v0, [D

    fill-array-data v2, :array_a8

    new-array v3, v0, [D

    fill-array-data v3, :array_b4

    new-array v4, v0, [D

    fill-array-data v4, :array_c0

    new-array v5, v0, [D

    fill-array-data v5, :array_cc

    new-array v6, v0, [D

    fill-array-data v6, :array_d8

    filled-new-array/range {v1 .. v6}, [[D

    move-result-object v0

    sput-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->F:[[D

    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->G:[D

    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_114

    sput-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->H:[D

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_134

    sput-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->I:[J

    return-void

    nop

    :array_60
    .array-data 8
        0x4001d9999999999aL  # 2.23125
        0x40082ccccccccccdL  # 3.021875
        0x400e800000000000L  # 3.8125
        0x401269999999999aL  # 4.603125
        0x4015933333333333L  # 5.39375
        0x4018bccccccccccdL  # 6.184375
        0x401be66666666666L  # 6.975
        0x401f100000000000L  # 7.765625
        0x40211ccccccccccdL  # 8.55625
        0x4022b1999999999aL  # 9.346875
        0x4024466666666666L  # 10.1375
        0x4025db3333333333L  # 10.928125
        0x4027700000000000L  # 11.71875
        0x402904cccccccccdL  # 12.509375
    .end array-data

    :array_9c
    .array-data 8
        0x4025c00000000000L  # 10.875
        0x401c000000000000L  # 7.0
    .end array-data

    :array_a8
    .array-data 8
        0x4021466666666666L  # 8.6375
        0x401c000000000000L  # 7.0
    .end array-data

    :array_b4
    .array-data 8
        0x401999999999999aL  # 6.4
        0x401c000000000000L  # 7.0
    .end array-data

    :array_c0
    .array-data 8
        0x4025c00000000000L  # 10.875
        0x401799999999999aL  # 5.9
    .end array-data

    :array_cc
    .array-data 8
        0x4021466666666666L  # 8.6375
        0x401799999999999aL  # 5.9
    .end array-data

    :array_d8
    .array-data 8
        0x401999999999999aL  # 6.4
        0x401799999999999aL  # 5.9
    .end array-data

    :array_e4
    .array-data 8
        0x400d4ccccccccccdL  # 3.6625
        0x4011fc28f5c28f5cL  # 4.49625
        0x401551eb851eb852L  # 5.33
        0x4018a7ae147ae148L  # 6.16375
        0x401bfd70a3d70a3dL  # 6.9975
        0x401f533333333333L  # 7.83125
        0x4021547ae147ae14L  # 8.665
        0x4022ff5c28f5c28fL  # 9.49875
        0x4024aa3d70a3d70aL  # 10.3325
        0x4026551eb851eb85L  # 11.16625
        0x4028000000000000L  # 12.0
    .end array-data

    :array_114
    .array-data 8
        0x40114ccccccccccdL  # 4.325
        0x4015f74bc6a7ef9eL  # 5.4915
        0x401aa219652bd3c3L  # 6.6583
        0x401f4ccccccccccdL  # 7.825
        0x4021fbc01a36e2ebL  # 8.9917
        0x4024510cb295e9e2L  # 10.1583
        0x4026a66666666666L  # 11.325
    .end array-data

    :array_134
    .array-data 8
        0x1a4
        0x2bc
        0x3b6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->h:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->p:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->r:Landroid/os/Handler;

    new-instance v0, Lq/s5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    new-instance v0, Lq/s5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->t:Lq/s5;

    new-instance v0, Lq/s5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->u:Lq/s5;

    const-string v0, ""

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->B:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_4

    :try_start_2
    const-string p0, ""

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_26

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_26

    :cond_20
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_24} :catch_26

    add-int/2addr v1, v2

    goto :goto_13

    :catch_26
    :cond_26
    :goto_26
    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x22

    if-ne p0, v0, :cond_7

    const-string p0, "0m"

    goto :goto_4a

    :cond_7
    const/16 v1, 0x23

    if-ne p0, v1, :cond_e

    const-string p0, "0p"

    goto :goto_4a

    :cond_e
    const/16 v1, 0x24

    if-ne p0, v1, :cond_15

    const-string p0, "0s"

    goto :goto_4a

    :cond_15
    if-ltz p0, :cond_49

    if-lt p0, v0, :cond_1a

    goto :goto_49

    :cond_1a
    rem-int/lit8 v0, p0, 0x9

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x9

    if-ge p0, v1, :cond_25

    const/16 p0, 0x6d

    goto :goto_35

    :cond_25
    const/16 v1, 0x12

    if-ge p0, v1, :cond_2c

    const/16 p0, 0x70

    goto :goto_35

    :cond_2c
    const/16 v1, 0x1b

    if-ge p0, v1, :cond_33

    const/16 p0, 0x73

    goto :goto_35

    :cond_33
    const/16 p0, 0x7a

    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 p0, 0x0

    :goto_4a
    return-object p0
.end method

.method public static g(Lq/m;Lq/p4;I)Lorg/json/JSONObject;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lq/p4;->h()Z

    move-result v1

    const-wide v2, 0x4020b9999999999aL  # 8.3625

    sget-object v4, Lcom/qiuhui/mahjong/WebGameActivity;->E:[D

    const/4 v5, -0x1

    iget v6, p1, Lq/p4;->g:I

    if-eqz v1, :cond_37

    invoke-static {v6}, Lcom/qiuhui/mahjong/WebGameActivity;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qiuhui/mahjong/WebGameActivity;->j(Lq/m;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_36

    array-length v4, v4

    if-lt v6, v4, :cond_22

    goto :goto_36

    :cond_22
    iget-object v0, p0, Lq/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v4, p0, Lq/m;->c:Z

    invoke-static {v6, v0, v4}, Lcom/qiuhui/mahjong/WebGameActivity;->r(IIZ)D

    move-result-wide v7

    const-string v0, "discard"

    const-string v4, "切"

    :goto_32
    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_7d

    :cond_36
    :goto_36
    return-object v0

    :cond_37
    const/16 v1, 0x25

    if-ne v6, v1, :cond_5f

    iget v1, p1, Lq/p4;->h:I

    if-ltz v1, :cond_5f

    invoke-static {v1}, Lcom/qiuhui/mahjong/WebGameActivity;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qiuhui/mahjong/WebGameActivity;->j(Lq/m;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5e

    array-length v4, v4

    if-lt v6, v4, :cond_4d

    goto :goto_5e

    :cond_4d
    iget-object v0, p0, Lq/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v4, p0, Lq/m;->c:Z

    invoke-static {v6, v0, v4}, Lcom/qiuhui/mahjong/WebGameActivity;->r(IIZ)D

    move-result-wide v7

    const-string v0, "riichi"

    const-string v4, "立"

    goto :goto_32

    :cond_5e
    :goto_5e
    return-object v0

    :cond_5f
    iget-object v1, p0, Lq/m;->d:Ljava/util/List;

    invoke-static {p1, v1}, Lq/k3;->k(Lq/p4;Ljava/util/List;)I

    move-result v1

    iget-object v2, p0, Lq/m;->d:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/qiuhui/mahjong/WebGameActivity;->y(Ljava/util/List;I)Lq/J5;

    move-result-object v2

    if-nez v2, :cond_6e

    return-object v0

    :cond_6e
    const-string v0, ""

    iget-wide v7, v2, Lq/J5;->a:D

    iget-wide v2, v2, Lq/J5;->b:D

    const-string v4, "action"

    iget-object v6, p1, Lq/p4;->b:Ljava/lang/String;

    move v12, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v6

    move v6, v12

    :goto_7d
    const/high16 v9, 0x42c80000  # 100.0f

    iget p1, p1, Lq/p4;->e:F

    mul-float/2addr p1, v9

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 v9, 0x63

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v9, 0x1

    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "rank"

    invoke-virtual {v10, v11, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v10, "kind"

    invoke-virtual {p2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "text"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "label"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "confidence"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "tile"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "handIndex"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "operationType"

    invoke-virtual {p1, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget-wide v0, p0, Lq/m;->a:J

    invoke-static {v0, v1}, Lq/r;->e(J)Z

    move-result p2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lq/m;->c:Z

    if-eqz p2, :cond_d5

    if-eqz v1, :cond_d5

    move p2, v9

    goto :goto_d6

    :cond_d5
    move p2, v0

    :goto_d6
    const-string v4, "openingDeal"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v1, :cond_e8

    iget-object p0, p0, Lq/m;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v9

    if-ne v5, p0, :cond_e8

    goto :goto_e9

    :cond_e8
    move v9, v0

    :goto_e9
    const-string p0, "preferDraw"

    invoke-virtual {p1, p0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "x16"

    invoke-virtual {p0, p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "y9"

    invoke-virtual {p0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "x"

    invoke-virtual {p0, p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "y"

    invoke-virtual {p0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lq/m;Ljava/lang/String;)I
    .registers 5

    if-eqz p1, :cond_39

    iget-object v0, p0, Lq/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_39

    :cond_b
    iget-wide v0, p0, Lq/m;->a:J

    invoke-static {v0, v1}, Lq/r;->e(J)Z

    move-result v0

    iget-boolean v1, p0, Lq/m;->c:Z

    iget-object p0, p0, Lq/m;->b:Ljava/util/List;

    if-nez v0, :cond_34

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_34

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_34
    invoke-static {p0, v1, p1, v0}, Lcom/qiuhui/mahjong/WebGameActivity;->q(Ljava/util/List;ZLjava/lang/String;Z)I

    move-result p0

    return p0

    :cond_39
    :goto_39
    const/4 p0, -0x1

    return p0
.end method

.method public static k(Lq/m;Lq/p4;J)Lq/J5;
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Lq/p4;->h()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_83

    :cond_b
    iget p1, p1, Lq/p4;->g:I

    invoke-static {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_83

    iget-object v1, p0, Lq/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_83

    :cond_1c
    iget-wide v1, p0, Lq/m;->a:J

    invoke-static {v1, v2}, Lq/r;->e(J)Z

    move-result v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lq/m;->c:Z

    iget-object p0, p0, Lq/m;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v3, :cond_2e

    sub-int/2addr v4, v2

    :cond_2e
    sget-object v5, Lcom/qiuhui/mahjong/WebGameActivity;->E:[D

    if-nez v1, :cond_65

    if-eqz v3, :cond_65

    if-ltz v4, :cond_65

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_65

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    array-length p1, v5

    sub-int/2addr p1, v2

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v0, Lq/J5;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0, v2}, Lcom/qiuhui/mahjong/WebGameActivity;->r(IIZ)D

    move-result-wide v4

    const-wide v6, 0x4020b9999999999aL  # 8.3625

    const/4 v10, 0x2

    move-object v3, v0

    move-wide v8, p2

    invoke-direct/range {v3 .. v10}, Lq/J5;-><init>(DDJI)V

    return-object v0

    :cond_65
    invoke-static {p0, v3, p1, v1}, Lcom/qiuhui/mahjong/WebGameActivity;->q(Ljava/util/List;ZLjava/lang/String;Z)I

    move-result p1

    if-ltz p1, :cond_83

    array-length v1, v5

    if-ge p1, v1, :cond_83

    new-instance v0, Lq/J5;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0, v3}, Lcom/qiuhui/mahjong/WebGameActivity;->r(IIZ)D

    move-result-wide v5

    const-wide v7, 0x4020b9999999999aL  # 8.3625

    const/4 v11, 0x2

    move-object v4, v0

    move-wide v9, p2

    invoke-direct/range {v4 .. v11}, Lq/J5;-><init>(DDJI)V

    :cond_83
    :goto_83
    return-object v0
.end method

.method public static q(Ljava/util/List;ZLjava/lang/String;Z)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_58

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    if-nez p2, :cond_c

    goto :goto_58

    :cond_c
    if-eqz p1, :cond_17

    if-nez p3, :cond_17

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    :cond_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_1b
    new-instance p3, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lq/o3;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lq/o3;-><init>(I)V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lq/p3;

    const/4 v2, 0x4

    invoke-direct {p1, v2}, Lq/p3;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :goto_40
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v1, p0, :cond_58

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_55

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    return v1

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_58
    :goto_58
    return v0
.end method

.method public static r(IIZ)D
    .registers 6

    if-ltz p0, :cond_17

    sget-object v0, Lcom/qiuhui/mahjong/WebGameActivity;->E:[D

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_17

    :cond_8
    aget-wide v1, v0, p0

    if-eqz p2, :cond_16

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_16

    const-wide p0, 0x3fcf99999999999aL  # 0.246875

    add-double/2addr v1, p0

    :cond_16
    return-wide v1

    :cond_17
    :goto_17
    const-wide/high16 p0, 0x7ff8000000000000L  # Double.NaN

    return-wide p0
.end method

.method public static t(J)Z
    .registers 4

    sget v0, Lq/r;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    sget-object v0, Lq/r;->j:Lq/m;

    iget-wide v0, v0, Lq/m;->a:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_17

    sget-object p0, Lq/r;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static u(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "maj-soul.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, ".maj-soul.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "mahjongsoul.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, ".mahjongsoul.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_2a
    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public static w(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    const-string v0, "tile"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "operationType"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "text"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "x16"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v1, "y9"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2d

    const-string p0, "tile:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_67

    :cond_2d
    if-ltz v2, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "operation:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3c

    const/4 v0, 0x6

    if-ne v2, v0, :cond_3d

    :cond_3c
    const/4 v2, 0x4

    :cond_3d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_67

    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "anchor:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_67
    return-object p0
.end method

.method public static y(Ljava/util/List;I)Lq/J5;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_f

    new-instance p1, Lq/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lq/p;-><init>(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_13

    :cond_f
    invoke-static {p0, p1}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object p1

    :goto_13
    const/4 v1, 0x0

    if-nez p1, :cond_17

    return-object v1

    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x5

    if-eqz v3, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/p;

    iget v3, v3, Lq/p;->a:I

    if-eq v3, v6, :cond_3e

    if-ne v3, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v4, v3

    :cond_3e
    :goto_3e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_50
    new-instance p0, Lq/o3;

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lq/o3;-><init>(I)V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget p0, p1, Lq/p;->a:I

    if-eq p0, v6, :cond_65

    if-ne p0, v5, :cond_64

    goto :goto_65

    :cond_64
    move v4, p0

    :cond_65
    :goto_65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_85

    sget-object p1, Lcom/qiuhui/mahjong/WebGameActivity;->F:[[D

    array-length v2, p1

    if-lt p0, v2, :cond_75

    goto :goto_85

    :cond_75
    new-instance v1, Lq/J5;

    aget-object p0, p1, p0

    aget-wide v4, p0, v0

    const/4 p1, 0x1

    aget-wide v6, p0, p1

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lq/J5;-><init>(DDJI)V

    :cond_85
    :goto_85
    return-object v1
.end method


# virtual methods
.method public final A()V
    .registers 1

    return-void
.end method

.method public final B()V
    .registers 34

    move-object/from16 v10, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, v10, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_405

    const-string v2, "automation"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "enabled"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_405

    :cond_19
    sget-object v4, Lq/r;->j:Lq/m;

    sget-object v5, Lq/r;->i:Ljava/util/List;

    iget-wide v6, v4, Lq/m;->a:J

    iget-wide v8, v10, Lcom/qiuhui/mahjong/WebGameActivity;->h:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_405

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto/16 :goto_405

    :cond_2d
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/p4;

    iget-object v6, v6, Lq/p4;->f:Ljava/lang/String;

    if-eqz v6, :cond_405

    const-string v7, "Mortal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_41

    goto/16 :goto_405

    :cond_41
    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "moral"

    const/4 v7, 0x6

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v8

    invoke-static {v5, v2, v8, v9}, Lq/k;->j(Ljava/util/List;ID)Lq/p4;

    move-result-object v6

    const-wide/16 v8, 0x0

    if-nez v6, :cond_5f

    :cond_5c
    :goto_5c
    const/4 v11, 0x0

    goto/16 :goto_36f

    :cond_5f
    invoke-virtual {v6}, Lq/p4;->h()Z

    move-result v12

    if-eqz v12, :cond_b1

    invoke-static {v4, v6, v8, v9}, Lcom/qiuhui/mahjong/WebGameActivity;->k(Lq/m;Lq/p4;J)Lq/J5;

    move-result-object v0

    iget v2, v6, Lq/p4;->g:I

    invoke-static {v2}, Lcom/qiuhui/mahjong/WebGameActivity;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qiuhui/mahjong/WebGameActivity;->j(Lq/m;Ljava/lang/String;)I

    move-result v14

    if-eqz v0, :cond_5c

    if-eqz v2, :cond_5c

    if-gez v14, :cond_7a

    goto :goto_5c

    :cond_7a
    new-instance v5, Lq/I5;

    iget-boolean v6, v4, Lq/m;->c:Z

    if-eqz v6, :cond_8c

    iget-object v6, v4, Lq/m;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ne v14, v6, :cond_8c

    move/from16 v18, v1

    goto :goto_8e

    :cond_8c
    move/from16 v18, v3

    :goto_8e
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    const/16 v16, 0x0

    const-string v13, "discard"

    const/4 v15, 0x0

    move-object v12, v5

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v19}, Lq/I5;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/util/List;)V

    move-object v11, v5

    goto/16 :goto_36f

    :cond_b1
    iget-object v12, v4, Lq/m;->d:Ljava/util/List;

    invoke-static {v6, v12}, Lq/k3;->k(Lq/p4;Ljava/util/List;)I

    move-result v12

    if-gez v12, :cond_ba

    goto :goto_5c

    :cond_ba
    iget-object v13, v4, Lq/m;->d:Ljava/util/List;

    invoke-static {v13, v12}, Lcom/qiuhui/mahjong/WebGameActivity;->y(Ljava/util/List;I)Lq/J5;

    move-result-object v13

    const/4 v15, 0x7

    if-ne v12, v15, :cond_165

    iget v8, v6, Lq/p4;->h:I

    if-ltz v8, :cond_f9

    new-instance v9, Lq/p4;

    const/16 v11, 0x22

    if-ge v8, v11, :cond_d0

    move/from16 v17, v8

    goto :goto_e1

    :cond_d0
    if-ne v8, v11, :cond_d5

    const/16 v17, 0x4

    goto :goto_e1

    :cond_d5
    const/16 v11, 0x23

    if-ne v8, v11, :cond_de

    const/16 v11, 0xd

    :goto_db
    move/from16 v17, v11

    goto :goto_e1

    :cond_de
    const/16 v11, 0x16

    goto :goto_db

    :goto_e1
    iget v11, v6, Lq/p4;->e:F

    iget-object v15, v6, Lq/p4;->f:Ljava/lang/String;

    const-string v18, ""

    const/16 v24, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v16, v9

    move/from16 v21, v11

    move-object/from16 v22, v15

    move/from16 v23, v8

    invoke-direct/range {v16 .. v24}, Lq/p4;-><init>(ILjava/lang/String;IIFLjava/lang/String;II)V

    goto :goto_fa

    :cond_f9
    const/4 v9, 0x0

    :goto_fa
    if-nez v9, :cond_119

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lq/x5;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {v5}, Lq/r5;->a(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v8

    invoke-static {v5, v2, v8, v9}, Lq/k;->j(Ljava/util/List;ID)Lq/p4;

    move-result-object v9

    :cond_119
    sget-object v2, Lq/r;->b:Lq/n;

    iget-object v5, v4, Lq/m;->d:Ljava/util/List;

    if-eqz v2, :cond_5c

    if-eqz v9, :cond_5c

    invoke-virtual {v9}, Lq/p4;->h()Z

    move-result v8

    if-nez v8, :cond_129

    goto/16 :goto_5c

    :cond_129
    invoke-static {v2, v5}, Lq/k;->i(Lq/n;Ljava/util/List;)[Z

    move-result-object v2

    iget v5, v9, Lq/p4;->g:I

    if-ltz v5, :cond_5c

    array-length v8, v2

    if-ge v5, v8, :cond_5c

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_5c

    const-wide/16 v7, 0x12c

    invoke-static {v4, v9, v7, v8}, Lcom/qiuhui/mahjong/WebGameActivity;->k(Lq/m;Lq/p4;J)Lq/J5;

    move-result-object v5

    iget v7, v9, Lq/p4;->g:I

    invoke-static {v7}, Lcom/qiuhui/mahjong/WebGameActivity;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/qiuhui/mahjong/WebGameActivity;->j(Lq/m;Ljava/lang/String;)I

    move-result v8

    if-eqz v5, :cond_5c

    if-eqz v7, :cond_5c

    if-gez v8, :cond_150

    goto/16 :goto_5c

    :cond_150
    iget-boolean v9, v4, Lq/m;->c:Z

    if-eqz v9, :cond_15f

    iget-object v9, v4, Lq/m;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v8, v9, :cond_15f

    move v8, v1

    goto :goto_160

    :cond_15f
    move v8, v3

    :goto_160
    move-object/from16 v18, v7

    move/from16 v19, v8

    goto :goto_19c

    :cond_165
    const/16 v5, 0xb

    if-ne v12, v5, :cond_195

    iget-boolean v5, v4, Lq/m;->c:Z

    const-string v7, "4z"

    if-eqz v5, :cond_18e

    iget-object v5, v4, Lq/m;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18e

    iget-object v5, v4, Lq/m;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_18e

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18e

    move v5, v1

    goto :goto_18f

    :cond_18e
    move v5, v3

    :goto_18f
    move/from16 v19, v5

    move-object/from16 v18, v7

    :goto_193
    const/4 v5, 0x0

    goto :goto_19c

    :cond_195
    const-string v5, ""

    move/from16 v19, v3

    move-object/from16 v18, v5

    goto :goto_193

    :goto_19c
    iget-object v7, v4, Lq/m;->d:Ljava/util/List;

    invoke-static {v7, v12}, Lq/k3;->h(Ljava/util/List;I)Lq/p;

    move-result-object v7

    if-eqz v12, :cond_1a8

    if-nez v7, :cond_1a8

    goto/16 :goto_5c

    :cond_1a8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_1b2

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b2
    if-nez v7, :cond_1b6

    move v9, v3

    goto :goto_1bc

    :cond_1b6
    iget-object v9, v7, Lq/p;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_1bc
    if-eqz v7, :cond_1c6

    iget-object v11, v7, Lq/p;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-gt v13, v1, :cond_1c9

    :cond_1c6
    move v13, v1

    goto/16 :goto_2bc

    :cond_1c9
    iget v13, v7, Lq/p;->a:I

    const/4 v15, 0x3

    if-ne v13, v0, :cond_28a

    iget v6, v6, Lq/p4;->g:I

    const/16 v2, 0x26

    if-lt v6, v2, :cond_28a

    const/16 v2, 0x28

    if-gt v6, v2, :cond_28a

    move v2, v3

    :goto_1d9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_287

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v7, Lq/p;->c:Ljava/lang/String;

    invoke-static {v14}, Lq/k3;->l(Ljava/lang/String;)Lq/u;

    move-result-object v14

    if-eqz v14, :cond_1f5

    iget-char v3, v14, Lq/u;->b:C

    const/16 v0, 0x7a

    if-eq v3, v0, :cond_1f5

    if-nez v13, :cond_1f8

    :cond_1f5
    move-object/from16 v26, v7

    goto :goto_228

    :cond_1f8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v15, v13

    const/4 v1, 0x0

    :goto_205
    if-ge v1, v15, :cond_22a

    aget-object v24, v13, v1

    move-object/from16 v26, v7

    invoke-static/range {v24 .. v24}, Lq/k3;->l(Ljava/lang/String;)Lq/u;

    move-result-object v7

    if-eqz v7, :cond_228

    move-object/from16 v24, v13

    iget-char v13, v7, Lq/u;->b:C

    if-eq v13, v3, :cond_218

    goto :goto_228

    :cond_218
    iget v7, v7, Lq/u;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    add-int/2addr v1, v7

    move-object/from16 v13, v24

    move-object/from16 v7, v26

    goto :goto_205

    :cond_228
    :goto_228
    const/4 v0, 0x1

    goto :goto_27e

    :cond_22a
    move-object/from16 v26, v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v14, Lq/u;->a:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_240

    goto :goto_228

    :cond_240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v7, :cond_248

    goto :goto_228

    :cond_248
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    packed-switch v6, :pswitch_data_406

    goto :goto_228

    :pswitch_24f  #0x28
    add-int/lit8 v1, v3, -0x2

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    goto :goto_25d

    :pswitch_254  #0x27
    const/4 v13, 0x1

    add-int/lit8 v1, v3, -0x1

    add-int/2addr v3, v13

    goto :goto_25d

    :pswitch_259  #0x26
    const/4 v13, 0x1

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v3, v7

    :goto_25d
    if-lt v1, v13, :cond_228

    const/16 v7, 0x9

    if-gt v3, v7, :cond_228

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_228

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_228

    :cond_27c
    :goto_27c
    const/4 v13, 0x1

    goto :goto_2bd

    :goto_27e
    add-int/2addr v2, v0

    move v1, v0

    move-object/from16 v7, v26

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v15, 0x3

    goto/16 :goto_1d9

    :cond_287
    const/4 v0, -0x1

    move v2, v0

    goto :goto_27c

    :cond_28a
    move v0, v15

    if-ne v13, v0, :cond_2bb

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_292
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27c

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2a0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_2b4

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_2b1

    const/4 v13, 0x1

    add-int/2addr v7, v13

    goto :goto_2b2

    :cond_2b1
    const/4 v13, 0x1

    :goto_2b2
    add-int/2addr v6, v13

    goto :goto_2a0

    :cond_2b4
    const/4 v13, 0x1

    if-ge v7, v0, :cond_2b9

    move v2, v1

    move v0, v7

    :cond_2b9
    add-int/2addr v1, v13

    goto :goto_292

    :cond_2bb
    const/4 v13, 0x1

    :goto_2bc
    const/4 v2, 0x0

    :goto_2bd
    if-gez v2, :cond_2c1

    goto/16 :goto_5c

    :cond_2c1
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    const/4 v3, 0x2

    if-ne v12, v3, :cond_2fb

    if-le v9, v13, :cond_2fb

    int-to-double v13, v9

    div-double/2addr v13, v6

    neg-double v13, v13

    int-to-double v6, v2

    add-double/2addr v13, v6

    add-double/2addr v13, v0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double/2addr v13, v0

    const-wide/high16 v0, 0x4014000000000000L  # 5.0

    add-double/2addr v13, v0

    double-to-int v0, v13

    sget-object v1, Lcom/qiuhui/mahjong/WebGameActivity;->G:[D

    array-length v3, v1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lq/J5;

    aget-wide v26, v1, v0

    const-wide/16 v30, 0x384

    const/16 v32, 0x1

    const-wide v28, 0x4019333333333333L  # 6.3

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v32}, Lq/J5;-><init>(DDJI)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33f

    :cond_2fb
    const/4 v3, 0x4

    if-eq v12, v3, :cond_301

    const/4 v3, 0x6

    if-ne v12, v3, :cond_303

    :cond_301
    const/4 v3, 0x1

    goto :goto_305

    :cond_303
    const/4 v0, 0x7

    goto :goto_33a

    :goto_305
    if-le v9, v3, :cond_303

    int-to-double v5, v9

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    div-double/2addr v5, v13

    neg-double v5, v5

    int-to-double v13, v2

    add-double/2addr v5, v13

    add-double/2addr v5, v0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double/2addr v5, v0

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    add-double/2addr v5, v0

    double-to-int v0, v5

    sget-object v1, Lcom/qiuhui/mahjong/WebGameActivity;->H:[D

    array-length v3, v1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lq/J5;

    aget-wide v26, v1, v0

    const-wide/16 v30, 0x384

    const/16 v32, 0x1

    const-wide v28, 0x4019333333333333L  # 6.3

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v32}, Lq/J5;-><init>(DDJI)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33f

    :goto_33a
    if-ne v12, v0, :cond_33f

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33f
    :goto_33f
    new-instance v0, Lq/I5;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34e

    :cond_35f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    const-string v14, "operation"

    const/4 v15, -0x1

    move-object v13, v0

    move/from16 v16, v12

    move/from16 v17, v2

    invoke-direct/range {v13 .. v20}, Lq/I5;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/util/List;)V

    move-object v11, v0

    :goto_36f
    if-nez v11, :cond_372

    return-void

    :cond_372
    iget-wide v0, v4, Lq/m;->a:J

    iput-wide v0, v10, Lcom/qiuhui/mahjong/WebGameActivity;->h:J

    iget-object v2, v10, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v2, :cond_37b

    goto :goto_392

    :cond_37b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "(function(){try{return typeof window.__qiuhuiSetActiveDecision===\'function\'&&window.__qiuhuiSetActiveDecision(\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\');}catch(_){return false;}})();"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_392
    invoke-static/range {p0 .. p0}, Lq/y;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "instant_discard_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static/range {p0 .. p0}, Lq/y;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "discard_delay_min_ms"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lq/y;->j(I)I

    move-result v0

    invoke-static/range {p0 .. p0}, Lq/y;->p(Landroid/app/Activity;)I

    move-result v1

    if-ne v0, v1, :cond_3b8

    int-to-long v0, v0

    :goto_3b5
    const-wide/16 v2, 0x0

    goto :goto_3c6

    :cond_3b8
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    int-to-long v5, v0

    int-to-long v0, v1

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    invoke-virtual {v2, v5, v6, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    goto :goto_3b5

    :goto_3c6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v0, v4, Lq/m;->a:J

    invoke-static {v0, v1}, Lq/r;->e(J)Z

    move-result v0

    if-eqz v0, :cond_3f5

    iget-object v0, v11, Lq/I5;->a:Ljava/lang/String;

    const-string v1, "discard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f5

    iget-wide v1, v4, Lq/m;->a:J

    iget-object v0, v4, Lq/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v8, v4, v6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v4, v11

    move-wide v5, v6

    move-wide v7, v8

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Lcom/qiuhui/mahjong/WebGameActivity;->H(JILq/I5;JJI)V

    goto :goto_405

    :cond_3f5
    iget-object v8, v10, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v9, Lq/w5;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v11

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lq/w5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;Lq/m;Lq/I5;J)V

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_405
    :goto_405
    return-void

    :pswitch_data_406
    .packed-switch 0x26
        :pswitch_259  #00000026
        :pswitch_254  #00000027
        :pswitch_24f  #00000028
    .end packed-switch
.end method

.method public final C()V
    .registers 9

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->t:Lq/s5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lq/j3;->e(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_12

    return-void

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final D()V
    .registers 13

    iget-wide v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    const-wide/16 v2, 0x1

    add-long v6, v0, v2

    iput-wide v6, p0, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_13

    return-void

    :cond_13
    const-string v0, "overlay"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "cat_recommendation_enabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->h()V

    return-void

    :cond_27
    sget-object v0, Lq/r;->j:Lq/m;

    sget-object v2, Lq/r;->i:Ljava/util/List;

    if-eqz v0, :cond_9a

    iget-wide v3, v0, Lq/m;->a:J

    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-lez v5, :cond_9a

    if-eqz v2, :cond_9a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_9a

    :cond_3e
    :try_start_3e
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lq/n4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq/p4;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-static {v0, v9, v10}, Lcom/qiuhui/mahjong/WebGameActivity;->g(Lq/m;Lq/p4;I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_61

    invoke-static {v9}, Lcom/qiuhui/mahjong/WebGameActivity;->w(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    const-string v10, "rank"

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_61

    :cond_94
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_9c

    :catch_9a
    :cond_9a
    :goto_9a
    move-object v10, v1

    goto :goto_ae

    :cond_9c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "decisionId"

    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "markers"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ad} :catch_9a

    goto :goto_9a

    :goto_ae
    if-nez v10, :cond_b4

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->h()V

    return-void

    :cond_b4
    iget-wide v8, v0, Lq/m;->a:J

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->p:Landroid/os/Handler;

    new-instance v1, Lq/u5;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lq/u5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JJLorg/json/JSONObject;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final E()V
    .registers 1

    return-void
.end method

.method public final F(Ljava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    if-nez v0, :cond_2b

    sget v0, Lq/Q4;->b:I

    const/4 v1, 0x1

    const/high16 v2, 0x41700000  # 15.0f

    invoke-static {p0, p1, v2, v0, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_46

    new-instance p2, Lq/e3;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lq/e3;-><init>(Landroid/app/Activity;I)V

    goto :goto_47

    :cond_46
    const/4 p2, 0x0

    :goto_47
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final G()V
    .registers 9

    const/4 v0, 0x1

    const-string v1, "\n当前组件："

    const-string v2, "com.google.android.webview"

    const-string v3, ""

    :try_start_7
    sget-object v4, Lq/O5;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4b

    if-eqz v4, :cond_10

    goto :goto_2f

    :cond_10
    const/4 v4, 0x0

    :try_start_11
    const-string v5, "android.webkit.WebViewUpdateService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getCurrentWebViewPackageName"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_23} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_23} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_23} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_23} :catch_2f
    .catchall {:try_start_11 .. :try_end_23} :catchall_4b

    if-nez v5, :cond_26

    goto :goto_2f

    :cond_26
    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4b

    const/4 v7, 0x0

    :try_start_2b
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2f} :catch_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_4b

    :catch_2f
    :goto_2f
    if-eqz v4, :cond_4b

    :try_start_31
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_4b

    :catchall_4b
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "系统网页组件版本过旧，AI 无法安全启动\n\n1. 点击此处进入手机应用商店\n2. 更新当前网页组件；若搜不到，请更新 Chrome\n3. 更新后彻底关闭本软件，再重新打开"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_68

    new-instance v3, Lq/c5;

    invoke-direct {v3, p0, v2, v0}, Lq/c5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_68
    return-void
.end method

.method public final H(JILq/I5;JJI)V
    .registers 27

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    const-string v0, "(function(){try{return typeof window.__qiuhuiOpeningDiscardReady===\'function\'&&window.__qiuhuiOpeningDiscardReady("

    iget-object v1, v12, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_ca

    sget-object v1, Lq/r;->j:Lq/m;

    iget-wide v1, v1, Lq/m;->a:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_ca

    const-string v1, "automation"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "enabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_ca

    :cond_23
    :try_start_23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "decisionId"

    invoke-virtual {v1, v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "expectedHandSize"

    move/from16 v11, p3

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tile"
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_6e

    move-object/from16 v15, p4

    :try_start_3a
    iget-object v3, v15, Lq/I5;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");}catch(_){return false;}})();"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v8, v12, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v9, Lq/y5;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p9

    move-wide/from16 v3, p7

    move-wide/from16 v5, p1

    move-object/from16 v7, p4

    move-object v11, v8

    move-object v13, v9

    move-wide/from16 v8, p5

    move-object v14, v10

    move/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lq/y5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;IJJLq/I5;JI)V

    invoke-virtual {v11, v14, v13}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6d} :catch_70

    goto :goto_ca

    :catch_6e
    move-object/from16 v15, p4

    :catch_70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/16 v0, 0x1e

    move/from16 v10, p9

    if-lt v10, v0, :cond_9b

    cmp-long v0, v13, p7

    if-ltz v0, :cond_9b

    move-wide/from16 v6, p5

    long-to-double v0, v6

    const-wide v2, 0x408f400000000000L  # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fd3333333333333L  # 0.3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qiuhui/mahjong/WebGameActivity;->p(JLq/I5;DI)V

    return-void

    :cond_9b
    move-wide/from16 v6, p5

    iget-object v11, v12, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v8, Lq/z5;

    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object v15, v8

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object v12, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lq/z5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;JJII)V

    const-wide/16 v0, 0x1

    sub-long v2, p7, v13

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x78

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v12, v15, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ca
    :goto_ca
    return-void
.end method

.method public final a()V
    .registers 3

    new-instance v0, Lq/s5;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .registers 5

    invoke-static {}, Lq/j3;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lq/s5;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->u:Lq/s5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lq/N2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final e()V
    .registers 6

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Lq/y;->g(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->frameRate(Landroid/content/Context;)F

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v1, 0x0

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x23

    if-eqz v0, :cond_29

    if-ge v4, v2, :cond_22

    goto :goto_29

    :cond_22
    :try_start_22
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->frameRate(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRequestedFrameRate(F)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    :goto_29
    if-lt v4, v2, :cond_34

    if-eqz v0, :cond_34

    :try_start_2d
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->frameRate(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setRequestedFrameRate(F)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    invoke-static {p0, v0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->applyQuality(Landroid/content/Context;Landroid/webkit/WebView;)V

    return-void
.end method

.method public final f()V
    .registers 7

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Lq/U5;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_88

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v3, Lq/L5;

    invoke-direct {v3, p0}, Lq/L5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lq/Q4;->b:I

    const-string v4, "网页加载中"

    const/high16 v5, 0x41700000  # 15.0f

    invoke-static {p0, v4, v5, v0, v2}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/qiuhui/mahjong/WebGameActivity;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebView must be acquired on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .registers 4

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v1, "(function(){try{window.AyakaCatHUD&&window.AyakaCatHUD.clear&&window.AyakaCatHUD.clear();}catch(_){}})();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final i()V
    .registers 12

    const/4 v0, 0x2

    const-string v1, ",configurable:false,enumerable:false});\nObject.defineProperty(window,\'__qiuhuiRenderWidth\',{value:1920,configurable:false,enumerable:false});\nObject.defineProperty(window,\'__qiuhuiRenderHeight\',{value:1080,configurable:false,enumerable:false});\nObject.defineProperty(window,\'__qiuhuiRemoteInferenceActive\',{value:false,configurable:false,enumerable:false});\n(function(){var c=[],A=window.AudioContext,W=window.webkitAudioContext;function w(N,n){if(typeof N!==\'function\'||N.__qiuhuiAudioPriority)return;function Q(){var x=Reflect.construct(N,arguments,Q);c.push(x);return x}try{Object.setPrototypeOf(Q,N)}catch(e){}Q.prototype=N.prototype;Object.defineProperty(Q,\'__qiuhuiAudioPriority\',{value:true});try{window[n]=Q}catch(e){}}function r(){for(var i=c.length-1;i>=0;i--){var x=c[i];if(!x||x.state===\'closed\'){c.splice(i,1);continue}if(x.state===\'suspended\'&&typeof x.resume===\'function\'){try{var p=x.resume();if(p&&typeof p.catch===\'function\')p.catch(function(){})}catch(e){}}}return true}w(A,\'AudioContext\');if(W!==A)w(W,\'webkitAudioContext\');Object.defineProperty(window,\'__qiuhuiResumeAudio\',{value:r,configurable:false,enumerable:false,writable:false});document.addEventListener(\'pointerdown\',r,true);document.addEventListener(\'touchstart\',r,true);window.addEventListener(\'focus\',r,true);window.addEventListener(\'pageshow\',r,true);document.addEventListener(\'visibilitychange\',function(){if(document.visibilityState===\'visible\')r()},true)})();\n"

    const-string v2, "Object.defineProperty(window,\'__qiuhuiBinaryBridgeEnabled\',{value:"

    iget-object v3, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    iget-object v3, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v0, v5}, Landroid/webkit/WebView;->setRendererPriorityPolicy(IZ)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object v6, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v6, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-static {v5}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :try_start_54
    const-string v3, "WEB_MESSAGE_LISTENER"

    invoke-static {v3}, Lq/k;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158

    const-string v3, "DOCUMENT_START_SCRIPT"

    invoke-static {v3}, Lq/k;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    goto/16 :goto_158

    :cond_66
    iput-boolean v4, p0, Lcom/qiuhui/mahjong/WebGameActivity;->e:Z

    new-instance v3, Lq/A2;

    new-instance v6, Lq/v2;

    invoke-direct {v6, p0}, Lq/v2;-><init>(Landroid/content/ContextWrapper;)V

    invoke-direct {v3, p0, v6}, Lq/A2;-><init>(Landroid/content/ContextWrapper;Lq/v2;)V

    iput-object v3, p0, Lcom/qiuhui/mahjong/WebGameActivity;->z:Lq/A2;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lq/C4;->a(Landroid/content/Context;Lq/A3;)V

    iget-object v3, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const-string v6, "qiuhuiBridge"

    sget-object v7, Lcom/qiuhui/mahjong/WebGameActivity;->D:Ljava/util/HashSet;

    new-instance v8, Lq/l3;

    invoke-direct {v8, v0, p0}, Lq/l3;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lq/O5;->a:Ljava/util/WeakHashMap;

    sget-object v0, Lq/R5;->c:Lq/h;

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_153

    invoke-static {v3}, Lq/O5;->a(Landroid/webkit/WebView;)Lq/V5;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v9, Lq/s2;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v8}, Lq/s2;-><init>(ILjava/lang/Object;)V

    new-instance v8, Lq/x;

    invoke-direct {v8, v9}, Lq/x;-><init>(Ljava/lang/Object;)V

    iget-object v0, v0, Lq/V5;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, v6, v3, v8}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    const-string v0, "WEB_MESSAGE_ARRAY_BUFFER"

    invoke-static {v0}, Lq/k;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->w:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/qiuhui/mahjong/WebGameActivity;->w:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lq/N2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Object.defineProperty(window,\'__qiuhuiWideViewportEnabled\',{value:true,configurable:false,enumerable:false});\nObject.defineProperty(window,\'__qiuhuiFullscreenAdaptEnabled\',{value:true,configurable:false,enumerable:false});\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Object.defineProperty(window,\'__qiuhuiFullSkinEnabled\',{value:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "overlay"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "full_skin_enabled"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",configurable:false,enumerable:false});\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "web/cat-hud.js"

    invoke-virtual {p0, v0}, Lcom/qiuhui/mahjong/WebGameActivity;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "web/bridge.js"

    invoke-virtual {p0, v0}, Lcom/qiuhui/mahjong/WebGameActivity;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    sget-object v2, Lq/R5;->d:Lq/h;

    invoke-virtual {v2}, Lq/i;->b()Z

    move-result v2

    if-eqz v2, :cond_14c

    invoke-static {v1}, Lq/O5;->a(Landroid/webkit/WebView;)Lq/V5;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v1, v1, Lq/V5;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v1, v0, v2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const-class v1, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    invoke-static {v1, v0}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    goto :goto_16e

    :cond_14c
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    :catchall_151
    move-exception v0

    goto :goto_15e

    :cond_153
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    :cond_158
    :goto_158
    iput-boolean v5, p0, Lcom/qiuhui/mahjong/WebGameActivity;->e:Z

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->G()V
    :try_end_15d
    .catchall {:try_start_54 .. :try_end_15d} :catchall_151

    return-void

    :goto_15e
    const-string v1, "QiuHuiWeb"

    const-string v2, "Web bridge initialization failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "网页已打开，助手桥接暂不可用"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_16e
    return-void
.end method

.method public final l(JLq/I5;I)V
    .registers 20

    move-object v6, p0

    move-object/from16 v5, p3

    move/from16 v4, p4

    iget v0, v5, Lq/I5;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne v0, v2, :cond_10

    if-lez v4, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v3

    :goto_11
    iget-object v2, v5, Lq/I5;->g:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1e
    const-wide/16 v9, 0x0

    :goto_20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v11, v6, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    if-ge v3, v1, :cond_46

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/J5;

    if-eqz v0, :cond_33

    const-wide/16 v12, 0x0

    goto :goto_35

    :cond_33
    iget-wide v12, v1, Lq/J5;->c:J

    :goto_35
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    new-instance v14, Lq/m3;

    move-wide/from16 v7, p1

    invoke-direct {v14, p0, v7, v8, v1}, Lq/m3;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JLq/J5;)V

    invoke-virtual {v11, v14, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_46
    move-wide/from16 v7, p1

    iget-object v0, v5, Lq/I5;->a:Ljava/lang/String;

    const-string v1, "discard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v0, 0x8

    goto :goto_56

    :cond_55
    const/4 v0, 0x5

    :goto_56
    if-lt v4, v0, :cond_59

    return-void

    :cond_59
    new-instance v12, Lq/E5;

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p4

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lq/E5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;)V

    const-wide/16 v0, 0x384

    add-long/2addr v9, v0

    invoke-virtual {v11, v12, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final m(FF)V
    .registers 14

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    move v6, p1

    move v7, p2

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v7, Lq/H5;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lq/H5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JFF)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 v1, 0x41

    const-wide/16 v3, 0x65

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide p1

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final n(JLq/I5;)V
    .registers 7

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_32

    iget-object v0, p3, Lq/I5;->g:Ljava/util/List;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p1, p2}, Lcom/qiuhui/mahjong/WebGameActivity;->t(J)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_32

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function(){try{return typeof window.__qiuhuiCanFallbackDecision===\'function\'&&window.__qiuhuiCanFallbackDecision(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\');}catch(_){return false;}})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lq/D5;

    invoke-direct {v2, p0, p1, p2, p3}, Lq/D5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JLq/I5;)V

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public final o()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_57

    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/16 v4, 0x1e

    if-lt v2, v3, :cond_32

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-lt v2, v4, :cond_28

    const/4 v5, 0x3

    goto :goto_29

    :cond_28
    const/4 v5, 0x1

    :goto_29
    invoke-static {v3, v5}, Lq/j;->f(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_32

    :catch_30
    move-exception v0

    goto :goto_58

    :cond_32
    :goto_32
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3c

    invoke-static {v0}, Lq/q5;->b(Landroid/view/Window;)V

    invoke-static {v0}, Lq/q5;->c(Landroid/view/Window;)V

    :cond_3c
    if-lt v2, v4, :cond_51

    invoke-static {v0}, Lq/h2;->j(Landroid/view/Window;)V

    invoke-static {v1}, Lq/h2;->d(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-static {}, Lq/h2;->i()I

    move-result v2

    invoke-static {v0, v2}, Lq/h2;->g(Landroid/view/WindowInsetsController;I)V

    invoke-static {v0}, Lq/h2;->f(Landroid/view/WindowInsetsController;)V

    :cond_51
    const/16 v0, 0x1706

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_56} :catch_30

    goto :goto_5f

    :cond_57
    :goto_57
    return-void

    :goto_58
    const-string v1, "QiuHuiWeb"

    const-string v2, "Immersive mode unavailable on this device"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    return-void
.end method

.method public final onBackPressed()V
    .registers 10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v1, v3, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lq/h2;->a()I

    move-result v1

    invoke-static {v0, v1}, Lq/h2;->h(Landroid/view/WindowInsets;I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_48

    :cond_21
    move v4, v2

    goto :goto_48

    :cond_23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3e19999a  # 0.15f

    mul-float/2addr v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_21

    :goto_48
    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->s()V

    :cond_4d
    const-wide/16 v0, 0x0

    if-eqz v4, :cond_54

    iput-wide v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->g:J

    return-void

    :cond_54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/qiuhui/mahjong/WebGameActivity;->g:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_74

    iput-wide v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->g:J

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_74
    iput-wide v3, p0, Lcom/qiuhui/mahjong/WebGameActivity;->g:J

    const-string v0, "再按一次返回主界面"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lq/k3;->n(Landroid/app/Activity;)V

    invoke-static {p0}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1a

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    sget-boolean p1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    const-string v0, "QiuHuiWeb"

    if-eqz p1, :cond_2a

    goto :goto_3b

    :cond_2a
    :try_start_2a
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p1

    const-string v1, "Assistant service start was deferred"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge p1, v1, :cond_42

    goto :goto_50

    :cond_42
    :try_start_42
    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-static {p1}, Lq/q5;->a(Landroid/os/PowerManager;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_50} :catch_50

    :catch_50
    :goto_50
    sget-object p1, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    const-string p1, "automation"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->k:Landroid/content/SharedPreferences;

    new-instance v2, Lq/t5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lq/t5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    iput-object v2, p0, Lcom/qiuhui/mahjong/WebGameActivity;->l:Lq/t5;

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "overlay"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->m:Landroid/content/SharedPreferences;

    new-instance v1, Lq/t5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lq/t5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    iput-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->n:Lq/t5;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_89

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lq/h2;->j(Landroid/view/Window;)V

    :cond_89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :try_start_92
    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->f()V

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->i()V
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_99

    goto :goto_ef

    :catchall_99
    move-exception p1

    const-string v1, "WebView initialization failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_ef

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "系统网页组件不可用\n请更新或启用 Android System WebView / Chrome\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lq/Q4;->a:I

    const/high16 v2, 0x41700000  # 15.0f

    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v0, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41c00000  # 24.0f

    invoke-static {p0, v0}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v0}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v0}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_ef
    :goto_ef
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_102

    new-instance v0, Lq/s5;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_102
    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->v()V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->l:Lq/t5;

    if-eqz v1, :cond_10

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_10
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->m:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->n:Lq/t5;

    if-eqz v1, :cond_1b

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1b
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_41

    iget-object v2, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_41
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    :cond_57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->x()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    const-string v1, "window.__qiuhuiResumeAudio&&window.__qiuhuiResumeAudio();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_28

    :cond_1e
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_28
    :goto_28
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->x()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->g:J

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->o()V

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->e()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    const-string v1, "window.__qiuhuiResumeAudio&&window.__qiuhuiResumeAudio();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lq/s5;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2e
    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->s:Lq/s5;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->C()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->o()V

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->e()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    const-string v1, "window.__qiuhuiResumeAudio&&window.__qiuhuiResumeAudio();"

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1b
    return-void
.end method

.method public final p(JLq/I5;DI)V
    .registers 23

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    const-string v0, "(function(){try{return typeof window.__qiuhuiAutoPlay===\'function\'&&window.__qiuhuiAutoPlay("

    iget-object v1, v9, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_b7

    invoke-static/range {p1 .. p2}, Lcom/qiuhui/mahjong/WebGameActivity;->t(J)Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "automation"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "enabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_b7

    :cond_21
    :try_start_21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "decisionId"
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_b2

    move-wide/from16 v11, p1

    :try_start_2a
    invoke-virtual {v1, v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "kind"

    iget-object v3, v10, Lq/I5;->a:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_b4

    iget-boolean v4, v10, Lq/I5;->f:Z

    :try_start_34
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "handIndex"

    iget v3, v10, Lq/I5;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "operationType"

    iget v3, v10, Lq/I5;->c:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "optionIndex"

    iget v3, v10, Lq/I5;->d:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tile"

    iget-object v3, v10, Lq/I5;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "moqie"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "preferDraw"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timeuse"

    move-wide/from16 v6, p4

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "verificationDelayMs"

    invoke-static/range {p0 .. p0}, Lq/y;->p(Landroid/app/Activity;)I

    move-result v3

    invoke-static {v3}, Lq/y;->j(I)I

    move-result v3

    int-to-double v3, v3

    const-wide v13, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v13, 0x384

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");}catch(_){return false;}})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v15, Lq/A5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lq/A5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;DLorg/json/JSONObject;)V

    invoke-virtual {v14, v13, v15}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_b1} :catch_b4

    goto :goto_b7

    :catch_b2
    move-wide/from16 v11, p1

    :catch_b4
    invoke-virtual/range {p0 .. p3}, Lcom/qiuhui/mahjong/WebGameActivity;->n(JLq/I5;)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public final s()V
    .registers 4

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v1, "(function(){var e=document.activeElement;if(e&&typeof e.blur===\'function\')e.blur();})()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_38

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lq/h2;->d(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, Lq/h2;->a()I

    move-result v1

    invoke-static {v0, v1}, Lq/h2;->g(Landroid/view/WindowInsetsController;I)V

    :cond_38
    return-void
.end method

.method public final v()V
    .registers 4

    iget-boolean v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->e:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/WebGameActivity;->G()V

    return-void

    :cond_8
    :try_start_8
    const-string v0, "网页加载中"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const-string v1, "https://game.maj-soul.com/1/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_24

    :catchall_16
    move-exception v0

    const-string v1, "QiuHuiWeb"

    const-string v2, "Game page load failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "网页加载失败 · 点击重试"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qiuhui/mahjong/WebGameActivity;->F(Ljava/lang/String;Z)V

    :goto_24
    return-void
.end method

.method public final x()V
    .registers 3

    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.qiuhui.mahjong.action.APP_VISIBILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_31

    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_33

    const/16 v1, 0x2000

    :try_start_f
    new-array v1, v1, [B

    :goto_11
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    :catchall_1d
    move-exception v1

    goto :goto_35

    :cond_1f
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_1d

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    :try_start_2d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    return-object v1

    :catch_31
    move-exception p1

    goto :goto_49

    :catchall_33
    move-exception v0

    goto :goto_3e

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_33

    :goto_3e
    if-eqz p1, :cond_48

    :try_start_40
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception p1

    :try_start_45
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_31

    :goto_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "无法加载网页桥接脚本"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
