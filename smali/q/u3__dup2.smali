.class public final Lq/u3;
.super Lorg/json/JSONObject;
.source "SourceFile"


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(Ljava/lang/String;Z)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final bridge synthetic put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 3

    .line 1
    invoke-virtual {p0, p2, p1}, Lq/u3;->a(ILjava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lq/u3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lq/u3;->c(Ljava/lang/String;Z)V

    return-object p0
.end method
