.class public final Lq/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/U3;
.implements Lorg/chromium/support_lib_boundary/WebMessageListenerBoundaryInterface;
.implements Lq/W5;
.implements Lorg/chromium/support_lib_boundary/WebViewStartUpCallbackBoundaryInterface;
.implements Lorg/chromium/support_lib_boundary/WebViewStartUpConfigBoundaryInterface;
.implements Lq/b;


# static fields
.field public static c:Lq/s2;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    .line 1
    const/16 v0, 0x9

    iput v0, p0, Lq/s2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 2
    iput p1, p0, Lq/s2;->a:I

    iput-object p2, p0, Lq/s2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/E;Lq/d2;Lq/R1;)V
    .registers 7

    invoke-virtual {p3}, Lq/R1;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/e2;

    invoke-virtual {v0, p3}, Lq/e2;->f(Lq/R1;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v1, v0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v1, p3}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq/P3;

    if-eqz v2, :cond_1e

    check-cast v1, Lq/P3;

    goto :goto_27

    :cond_1e
    check-cast v1, Lq/Q3;

    invoke-interface {v1}, Lq/Q3;->j()Lq/P3;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    :goto_27
    invoke-virtual {p1, v1, p2}, Lq/E;->r(Lq/P3;Lq/d2;)V

    return-void

    :cond_2b
    throw v1

    :cond_2c
    throw v1
.end method

.method public b(Lq/R1;)I
    .registers 2

    invoke-virtual {p1}, Lq/R1;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .registers 3

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-static {v0, p1}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-object p1
.end method

.method public d(Lq/Z5;Lq/L2;)V
    .registers 6

    new-instance v0, Lq/X5;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lq/X5;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lq/X5;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Lq/X5;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lq/X5;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lq/X5;-><init>(ILjava/lang/Object;)V

    iget-object p2, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast p2, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p2, v0, p1, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->startUpWebView(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public e()V
    .registers 2

    iget v0, p0, Lq/s2;->a:I

    packed-switch v0, :pswitch_data_16

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/t2;

    invoke-virtual {v0}, Lq/t2;->M()V

    return-void

    :pswitch_d  #0x0
    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/q4;

    invoke-virtual {v0}, Lq/q4;->e()V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method

.method public f(Lq/E;Lq/d2;Lq/R1;)V
    .registers 8

    invoke-virtual {p3}, Lq/R1;->p()Z

    move-result v0

    iget-object v1, p3, Lq/R1;->b:Lq/C0;

    const/4 v2, 0x0

    if-nez v0, :cond_30

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/e2;

    invoke-virtual {v0, p3}, Lq/e2;->f(Lq/R1;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v2, v0, Lq/e2;->a:Lq/D4;

    invoke-virtual {v2, p3}, Lq/D4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lq/P3;

    if-eqz v3, :cond_20

    check-cast v2, Lq/P3;

    goto :goto_29

    :cond_20
    check-cast v2, Lq/Q3;

    invoke-interface {v2}, Lq/Q3;->j()Lq/P3;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    :goto_29
    iget p3, v1, Lq/C0;->f:I

    invoke-virtual {p1, p3, v2, p2}, Lq/E;->n(ILq/P3;Lq/d2;)V

    return-void

    :cond_2f
    throw v2

    :cond_30
    throw v2
.end method

.method public g(Lq/R1;Ljava/lang/Object;)Lq/U3;
    .registers 4

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/e2;

    invoke-virtual {v0, p1, p2}, Lq/e2;->l(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/Z5;

    iget-object v0, v0, Lq/Z5;->a:Lq/T5;

    return-object v0
.end method

.method public getProfileNamesToLoad()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/Z5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;
    .registers 3

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getProfileStore()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const-class v1, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-static {v1, v0}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    return-object v0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .registers 3

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const-class v1, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    invoke-static {v1, v0}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    return-object v0
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .registers 3

    const-string v0, "WEB_MESSAGE_LISTENER"

    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lq/R1;Ljava/lang/Object;)Lq/U3;
    .registers 4

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/e2;

    invoke-virtual {v0, p1, p2}, Lq/e2;->a(Lq/R1;Ljava/lang/Object;)V

    return-object p0
.end method

.method public j(Lq/b2;Lq/G1;I)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lq/a2;

    invoke-direct {v0, p3, p2}, Lq/a2;-><init>(ILq/G1;)V

    iget-object p1, p1, Lq/b2;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public k(Lq/Z5;Lq/c4;)V
    .registers 6

    new-instance v0, Lq/s2;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, Lq/s2;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lq/x;

    invoke-direct {p1, v0}, Lq/x;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lq/s2;

    new-instance v1, Lq/l3;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p2}, Lq/l3;-><init>(ILjava/lang/Object;)V

    const/16 p2, 0xb

    invoke-direct {v0, p2, v1}, Lq/s2;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lq/x;

    invoke-direct {p2, v0}, Lq/x;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->startUpWebView(Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_opened"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lq/s2;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lq/r2;

    if-eqz v2, :cond_25

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->c()V

    return-void

    :cond_25
    const-string v2, "login"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, ".login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, ".oauth2Login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto/16 :goto_ad

    :cond_3f
    const-string v1, "hand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string p1, "tiles"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lq/r2;->d(Ljava/lang/String;)V

    return-void

    :cond_51
    const-string v1, "mortal_observation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    const-string p1, "players"

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_67

    sget-object p1, Lq/n;->d:Lq/n;

    :goto_65
    move-object v5, p1

    goto :goto_6a

    :cond_67
    sget-object p1, Lq/n;->e:Lq/n;

    goto :goto_65

    :goto_6a
    const-string p1, "obs"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "mask"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v6, v1, [F

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v7, v2, [Z

    const/4 v3, 0x0

    move v8, v3

    :goto_84
    if-ge v8, v1, :cond_90

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_84

    :cond_90
    :goto_90
    if-ge v3, v2, :cond_9b

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    aput-boolean p1, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_9b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lq/r2;->c(Lq/n;[F[ZLjava/util/List;ZLjava/util/List;Lq/b4;Z)V

    :cond_ac
    return-void

    :cond_ad
    :goto_ad
    const-string p1, "account"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_c5

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_c0

    const/4 p1, 0x0

    :goto_be
    move-object v1, p1

    goto :goto_c5

    :cond_c0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_be

    :cond_c5
    :goto_c5
    if-eqz v1, :cond_e8

    const-string p1, "nickname"

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e8

    const-string v0, "account_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lq/r2;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    return-void
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lq/s2;->a:I

    packed-switch v0, :pswitch_data_14

    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    return v0

    :pswitch_b  #0x6
    iget-object v0, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast v0, Lq/B;

    invoke-virtual {v0}, Lq/B;->size()I

    move-result v0

    return v0

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_b  #00000006
    .end packed-switch
.end method

.method public onPostMessage(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;ZLjava/lang/reflect/InvocationHandler;)V
    .registers 27

    const/16 v0, 0x8

    const/16 v1, 0xc

    const/4 v2, 0x1

    const-class v3, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    move-object/from16 v4, p2

    invoke-static {v3, v4}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    invoke-interface {v3}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getPorts()[Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Lq/s2;

    const/4 v6, 0x0

    move v7, v6

    :goto_18
    array-length v8, v4

    if-ge v7, v8, :cond_30

    new-instance v8, Lq/s2;

    aget-object v9, v4, v7

    invoke-direct {v8}, Lq/s2;-><init>()V

    const-class v10, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    invoke-static {v10, v9}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    iput-object v9, v8, Lq/s2;->b:Ljava/lang/Object;

    aput-object v8, v5, v7

    add-int/2addr v7, v2

    goto :goto_18

    :cond_30
    sget-object v4, Lq/R5;->a:Lq/h;

    invoke-virtual {v4}, Lq/i;->b()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_63

    const-class v4, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    invoke-interface {v3}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getMessagePayload()Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    invoke-static {v4, v3}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    invoke-interface {v3}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getType()I

    move-result v4

    if-eqz v4, :cond_59

    if-eq v4, v2, :cond_4f

    move-object v4, v5

    goto :goto_6c

    :cond_4f
    new-instance v4, Lq/o4;

    invoke-interface {v3}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsArrayBuffer()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lq/o4;-><init>([B)V

    goto :goto_6c

    :cond_59
    new-instance v4, Lq/o4;

    invoke-interface {v3}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lq/o4;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :cond_63
    new-instance v4, Lq/o4;

    invoke-interface {v3}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lq/o4;-><init>(Ljava/lang/String;)V

    :goto_6c
    if-eqz v4, :cond_2fc

    const-class v3, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    move-object/from16 v7, p5

    invoke-static {v3, v7}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    new-instance v7, Lq/V2;

    invoke-direct {v7, v3}, Lq/V2;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    invoke-interface {v3, v7}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/W2;

    move-object/from16 v3, p0

    iget-object v7, v3, Lq/s2;->b:Ljava/lang/Object;

    check-cast v7, Lq/l3;

    iget-object v7, v7, Lq/l3;->b:Ljava/lang/Object;

    check-cast v7, Lcom/qiuhui/mahjong/WebGameActivity;

    sget-boolean v8, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_2fe

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qiuhui/mahjong/WebGameActivity;->u(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a0

    goto/16 :goto_2fe

    :cond_a0
    iget-boolean v8, v7, Lcom/qiuhui/mahjong/WebGameActivity;->w:Z

    if-eqz v8, :cond_142

    iget v8, v4, Lq/o4;->a:I

    if-ne v8, v2, :cond_142

    invoke-virtual {v4, v2}, Lq/o4;->a(I)V

    iget-object v4, v4, Lq/o4;->c:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v7, v4

    const/high16 v8, 0x400000

    if-lt v7, v1, :cond_f4

    aget-byte v6, v4, v6

    const/16 v7, 0x51

    if-ne v6, v7, :cond_f4

    aget-byte v6, v4, v2

    const/16 v7, 0x48

    if-ne v6, v7, :cond_f4

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    if-eq v6, v2, :cond_c9

    goto :goto_f4

    :cond_c9
    const/4 v6, 0x3

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_d3

    if-eq v6, v2, :cond_d3

    goto :goto_f4

    :cond_d3
    const/4 v7, 0x4

    invoke-static {v4, v7}, Lq/j3;->i([BI)I

    move-result v7

    invoke-static {v4, v0}, Lq/j3;->i([BI)I

    move-result v0

    if-ltz v7, :cond_f4

    if-ltz v0, :cond_f4

    if-gt v0, v8, :cond_f4

    array-length v9, v4

    add-int/lit8 v10, v0, 0xc

    if-eq v9, v10, :cond_e8

    goto :goto_f4

    :cond_e8
    new-instance v5, Lq/w;

    if-ne v6, v2, :cond_ef

    const-string v2, "in"

    goto :goto_f1

    :cond_ef
    const-string v2, "out"

    :goto_f1
    invoke-direct {v5, v7, v0, v2, v4}, Lq/w;-><init>(IILjava/lang/String;[B)V

    :cond_f4
    :goto_f4
    if-eqz v5, :cond_2fe

    iget v0, v5, Lq/w;->a:I

    iget-object v2, v5, Lq/w;->b:Ljava/lang/String;

    iget-object v4, v5, Lq/w;->c:[B

    iget v5, v5, Lq/w;->d:I

    sget-object v6, Lq/p5;->a:Lq/y3;

    if-ltz v0, :cond_2fe

    const-string v6, "in"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_112

    const-string v6, "out"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2fe

    :cond_112
    if-eqz v4, :cond_2fe

    if-ltz v5, :cond_2fe

    array-length v6, v4

    sub-int/2addr v6, v5

    if-gt v1, v6, :cond_2fe

    if-le v5, v8, :cond_11e

    goto/16 :goto_2fe

    :cond_11e
    new-instance v1, Lq/m5;

    invoke-direct {v1, v0, v5, v2, v4}, Lq/m5;-><init>(IILjava/lang/String;[B)V

    sget-object v2, Lq/p5;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_126
    sget-object v0, Lq/p5;->a:Lq/y3;

    if-nez v0, :cond_132

    invoke-static {v1}, Lq/p5;->b(Lq/n5;)V

    monitor-exit v2

    goto/16 :goto_2fe

    :catchall_130
    move-exception v0

    goto :goto_140

    :cond_132
    monitor-exit v2
    :try_end_133
    .catchall {:try_start_126 .. :try_end_133} :catchall_130

    sget-object v2, Lq/p5;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lq/m2;

    const/4 v5, 0x6

    invoke-direct {v4, v0, v1, v5}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2fe

    :goto_140
    :try_start_140
    monitor-exit v2
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_130

    throw v0

    :cond_142
    invoke-virtual {v4, v6}, Lq/o4;->a(I)V

    iget-object v1, v4, Lq/o4;->b:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2fe

    const-string v2, "{\"kind\":\"skin_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23e

    invoke-static {v7, v1}, Lq/SkinAsync;->a(Lcom/qiuhui/mahjong/WebGameActivity;Ljava/lang/String;)V

    goto/16 :goto_2fe

    const-string v0, ""

    const-string v2, "socketId"

    const-string v4, "data"

    const-string v5, "kind"

    const-string v6, "window.__qiuhuiSkinUnlockReceive&&window.__qiuhuiSkinUnlockReceive("

    iget-object v8, v7, Lcom/qiuhui/mahjong/WebGameActivity;->z:Lq/A2;

    if-eqz v8, :cond_2fe

    iget-object v8, v7, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v8, :cond_16c

    goto/16 :goto_2fe

    :cond_16c
    :try_start_16c
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, -0x1

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "skin_request"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a3

    iget-object v0, v7, Lcom/qiuhui/mahjong/WebGameActivity;->z:Lq/A2;

    invoke-virtual {v0, v9, v10}, Lq/A2;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_214

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_214

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_214

    :cond_1a3
    const-string v2, "skin_response"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_1a9} :catch_2fe

    const-string v11, "skin_response_result"

    const-string v12, "token"

    if-eqz v2, :cond_1d7

    :try_start_1af
    iget-object v0, v7, Lcom/qiuhui/mahjong/WebGameActivity;->z:Lq/A2;

    invoke-virtual {v0, v9, v10}, Lq/A2;->v(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_214

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_214

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_214

    :cond_1d7
    const-string v2, "skin_notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    iget-object v0, v7, Lcom/qiuhui/mahjong/WebGameActivity;->z:Lq/A2;

    invoke-virtual {v0, v10}, Lq/A2;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_214

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_214

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_214

    :cond_207
    const-string v2, "skin_socket_close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_214

    iget-object v1, v7, Lcom/qiuhui/mahjong/WebGameActivity;->z:Lq/A2;

    invoke-virtual {v1, v9}, Lq/A2;->i(I)V

    :cond_214
    :goto_214
    if-eqz v0, :cond_2fe

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21e

    goto/16 :goto_2fe

    :cond_21e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lq/m2;

    const/4 v2, 0x7

    invoke-direct {v1, v7, v0, v2}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_23c} :catch_2fe

    goto/16 :goto_2fe

    :cond_23e
    const-string v2, "{\"kind\":\"local_action_submitted\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25a

    iget-wide v8, v7, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    iget-object v0, v7, Lcom/qiuhui/mahjong/WebGameActivity;->p:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/qiuhui/mahjong/WebGameActivity;->h()V

    invoke-static {v1}, Lq/p5;->c(Ljava/lang/String;)V

    goto/16 :goto_2fe

    :cond_25a
    const-string v2, "{\"kind\":\"frame\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f8

    const-string v2, "{\"kind\":\"animation_priority\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26c

    goto/16 :goto_2f8

    :cond_26c
    :try_start_26c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "kind"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyboard_hide"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_289

    new-instance v2, Lq/s5;

    invoke-direct {v2, v7, v0}, Lq/s5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {v7, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2fe

    :cond_289
    const-string v0, "game_viewport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e8

    const-string v0, "width"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v0, "height"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-string v0, "viewportWidth"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v17

    const-string v0, "viewportHeight"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v19

    invoke-static {v13, v14}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2fe

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2fe

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2fe

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2fe

    const-wide/16 v4, 0x0

    cmpl-double v0, v13, v4

    if-lez v0, :cond_2fe

    cmpl-double v0, v15, v4

    if-lez v0, :cond_2fe

    cmpl-double v0, v17, v4

    if-lez v0, :cond_2fe

    cmpl-double v0, v19, v4

    if-lez v0, :cond_2fe

    new-instance v0, Lq/K5;

    const-string v4, "left"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v4, "top"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Lq/K5;-><init>(DDDDDD)V

    iput-object v0, v7, Lcom/qiuhui/mahjong/WebGameActivity;->j:Lq/K5;

    goto :goto_2fe

    :cond_2e8
    const-string v0, "auto_battle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f4

    invoke-static {v1}, Lq/p5;->c(Ljava/lang/String;)V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_2f3} :catch_2f4

    goto :goto_2fe

    :catch_2f4
    :cond_2f4
    invoke-static {v1}, Lq/p5;->c(Ljava/lang/String;)V

    goto :goto_2fe

    :cond_2f8
    :goto_2f8
    invoke-static {v1}, Lq/p5;->c(Ljava/lang/String;)V

    goto :goto_2fe

    :cond_2fc
    move-object/from16 v3, p0

    :catch_2fe
    :cond_2fe
    :goto_2fe
    return-void
.end method

.method public onSuccess(Ljava/lang/reflect/InvocationHandler;)V
    .registers 7

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    invoke-static {v0, p1}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getBlockingStartUpLocations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    new-instance v2, Lq/L2;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lq/L2;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    sget-object v0, Lq/R5;->h:Lq/h;

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getAsyncStartUpLocations()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    new-instance v3, Lq/L2;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lq/L2;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_59
    const/4 v2, 0x0

    :cond_5a
    new-instance v0, Lq/Y5;

    invoke-direct {v0, v1, v2, p1}, Lq/Y5;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)V

    iget-object p1, p0, Lq/s2;->b:Ljava/lang/Object;

    check-cast p1, Lq/l3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lq/l2;

    iget-object p1, p1, Lq/l3;->b:Ljava/lang/Object;

    check-cast p1, Lq/c4;

    const/4 v3, 0x7

    invoke-direct {v2, p1, v0, v3}, Lq/l2;-><init>(Ljava/lang/Object;Lq/a6;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldRunUiThreadStartUpTasks()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
