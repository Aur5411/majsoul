.class public final Lq/u4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq/u4;->a:I

    iput p2, p0, Lq/u4;->b:I

    iput-wide p3, p0, Lq/u4;->c:J

    iput p5, p0, Lq/u4;->d:I

    iput-object p6, p0, Lq/u4;->e:Ljava/util/HashMap;

    iput-object p7, p0, Lq/u4;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/u4;->g:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lq/u4;
    .registers 22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "overlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "full_skin_profile"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto/16 :goto_139

    :cond_1d
    :try_start_1d
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, "majsoulmax-profile-v1"

    invoke-static {v3, v0}, Lq/j3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v0, "skins"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_59
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v0, "views"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_db

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_7d

    goto :goto_6a

    :cond_7d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    :goto_83
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_cf

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_90

    goto :goto_cc

    :cond_90
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "itemIdList"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_b2

    move v13, v2

    :goto_9e
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_b2

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_9e

    :cond_b2
    new-instance v12, Lq/t4;

    const-string v13, "slot"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "itemId"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v12, v13, v14, v8, v11}, Lq/t4;-><init>(IIILjava/util/List;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    :cond_cf
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    :cond_db
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "loadingImages"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_fd

    move v3, v2

    :goto_e9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_fd

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    :cond_fd
    new-instance v0, Lq/u4;

    const-string v3, "mainCharacter"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v3, "accountId"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "viewsIndex"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_11d} :catch_11e

    return-object v0

    :catch_11e
    new-instance v0, Lq/u4;

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    return-object v0

    :cond_139
    :goto_139
    new-instance v0, Lq/u4;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;J)V
    .registers 14

    invoke-static {p0}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v0

    new-instance v10, Lq/u4;

    new-instance v7, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v8, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget v3, v0, Lq/u4;->b:I

    iget v6, v0, Lq/u4;->d:I

    iget v2, v0, Lq/u4;->a:I

    iget-object v9, v0, Lq/u4;->g:Ljava/util/List;

    move-object v1, v10

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {p0, v10}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)V
    .registers 13

    invoke-static {p0}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v0

    new-instance v10, Lq/u4;

    new-instance v7, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v8, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-nez p1, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1a
    move-object v9, p1

    iget-wide v4, v0, Lq/u4;->c:J

    iget v6, v0, Lq/u4;->d:I

    iget v2, v0, Lq/u4;->a:I

    iget v3, v0, Lq/u4;->b:I

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {p0, v10}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    return-void
.end method

.method public static d(Landroid/content/Context;I)V
    .registers 13

    invoke-static {p0}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v0

    new-instance v10, Lq/u4;

    new-instance v7, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v8, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-wide v4, v0, Lq/u4;->c:J

    iget v6, v0, Lq/u4;->d:I

    iget v3, v0, Lq/u4;->b:I

    iget-object v9, v0, Lq/u4;->g:Ljava/util/List;

    move-object v1, v10

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {p0, v10}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    return-void
.end method

.method public static e(Landroid/content/Context;II)V
    .registers 13

    invoke-static {p0}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lq/u4;

    new-instance v8, Ljava/util/HashMap;

    iget-object p2, v0, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v8, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-wide v4, v0, Lq/u4;->c:J

    iget v6, v0, Lq/u4;->d:I

    iget v2, v0, Lq/u4;->a:I

    iget v3, v0, Lq/u4;->b:I

    iget-object v9, v0, Lq/u4;->g:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {p0, p1}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    return-void
.end method

.method public static f(Landroid/content/Context;II)V
    .registers 9

    invoke-static {p0}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v0

    iget v1, v0, Lq/u4;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lq/u4;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20

    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    :goto_20
    const/4 v2, 0x0

    move v3, v2

    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/t4;

    iget v4, v4, Lq/t4;->a:I

    if-ne v4, p1, :cond_3f

    new-instance v4, Lq/t4;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, p1, v2, p2, v5}, Lq/t4;-><init>(IIILjava/util/List;)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_42
    new-instance v3, Lq/t4;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p1, v2, p2, v4}, Lq/t4;-><init>(IIILjava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4e
    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0}, Lq/u4;->g(Landroid/content/Context;IZLjava/util/ArrayList;)V

    return-void
.end method

.method public static g(Landroid/content/Context;IZLjava/util/ArrayList;)V
    .registers 14

    invoke-static {p0}, Lq/u4;->a(Landroid/content/Context;)Lq/u4;

    move-result-object v0

    new-instance v8, Ljava/util/HashMap;

    iget-object v1, v0, Lq/u4;->f:Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lq/u4;

    if-eqz p2, :cond_1d

    :goto_1b
    move v6, p1

    goto :goto_20

    :cond_1d
    iget p1, v0, Lq/u4;->d:I

    goto :goto_1b

    :goto_20
    new-instance v7, Ljava/util/HashMap;

    iget-object p1, v0, Lq/u4;->e:Ljava/util/HashMap;

    invoke-direct {v7, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget v3, v0, Lq/u4;->b:I

    iget-wide v4, v0, Lq/u4;->c:J

    iget v2, v0, Lq/u4;->a:I

    iget-object v9, v0, Lq/u4;->g:Ljava/util/List;

    move-object v1, p3

    invoke-direct/range {v1 .. v9}, Lq/u4;-><init>(IIJILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;)V

    invoke-static {p0, p3}, Lq/u4;->h(Landroid/content/Context;Lq/u4;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Lq/u4;)V
    .registers 13

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lq/u4;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "mainCharacter"

    iget v3, p1, Lq/u4;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    iget v3, p1, Lq/u4;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "accountId"

    iget-wide v3, p1, Lq/u4;->c:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "viewsIndex"

    iget v3, p1, Lq/u4;->d:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "skins"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p1, Lq/u4;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_86
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/t4;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, v6, Lq/t4;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ad

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9d

    :cond_ad
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "slot"

    iget v10, v6, Lq/t4;->a:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "type"

    iget v10, v6, Lq/t4;->b:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "itemId"

    iget v6, v6, Lq/t4;->c:I

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "itemIdList"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_86

    :cond_d4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6b

    :cond_e6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object p1, p1, Lq/u4;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_101

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f1

    :cond_101
    const-string p1, "views"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "loadingImages"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "overlay"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "full_skin_profile"

    const-string v1, "majsoulmax-profile-v1"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lq/j3;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12e} :catch_12e

    :catch_12e
    return-void
.end method
