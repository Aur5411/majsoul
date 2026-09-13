.class public abstract Lq/C4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static volatile e:Lq/A2;

.field public static volatile f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq/C4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq/C4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq/C4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lq/C4;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, ""

    sput-object v0, Lq/C4;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lq/A3;)V
    .registers 6

    invoke-static {p0}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_skin_data_cach5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_skin_data_updated_v5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lq/C4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_73

    if-eqz p1, :cond_72

    sget-object v0, Lq/C4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object p0, Lq/C4;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    new-instance p0, Lq/A4;

    const/16 v0, 0xa

    const-string v1, "正在检查更新"

    const-string v3, ""

    invoke-direct {p0, v2, v3, v0, v1}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lq/A3;->a(Lq/A4;)V

    return-void

    :cond_3f
    sget-object v0, Lq/C4;->e:Lq/A2;

    const/16 v1, 0x64

    if-nez v0, :cond_52

    invoke-static {p0}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lq/A4;

    const-string v2, "已是最新"

    const/4 v3, 0x3

    invoke-direct {v0, v3, p0, v1, v2}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_6f

    :cond_52
    iget-object p0, v0, Lq/A2;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "发现全皮肤更新 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lq/A2;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lq/A4;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v1, v0}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    :goto_6f
    invoke-virtual {p1, v0}, Lq/A3;->a(Lq/A4;)V

    :cond_72
    return-void

    :cond_73
    invoke-static {p0, p1}, Lq/C4;->b(Landroid/content/Context;Lq/A3;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lq/A3;)V
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lq/C4;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_b
    sget-object v1, Lq/C4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const-string v2, "正在检查更新"

    const/16 v4, 0xa

    const-string v5, ""

    if-nez v1, :cond_26

    if-eqz p1, :cond_25

    new-instance p0, Lq/A4;

    invoke-direct {p0, v3, v5, v4, v2}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lq/A3;->a(Lq/A4;)V

    :cond_25
    return-void

    :cond_26
    new-instance p1, Lq/A4;

    invoke-direct {p1, v3, v5, v4, v2}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/A3;

    invoke-static {v1, p1}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto :goto_2f

    :cond_3f
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lq/w4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq/w4;-><init>(Landroid/content/Context;I)V

    const-string p0, "qiuhui-majsouldata-check"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static c(Lq/y4;ILq/x4;)[B
    .registers 6

    :try_start_0
    iget-object v0, p0, Lq/y4;->b:Ljava/lang/String;

    invoke-static {v0}, Lq/C4;->g(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_67

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4e

    :try_start_f
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_36
    .catchall {:try_start_f .. :try_end_13} :catchall_34

    :try_start_13
    iget v2, p0, Lq/y4;->c:I

    invoke-static {v1, p1, v2, p2}, Lq/C4;->i(Ljava/io/InputStream;IILq/x4;)[B

    move-result-object p1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_38

    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_36
    .catchall {:try_start_19 .. :try_end_1c} :catchall_34

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {p1}, Lq/y;->y([B)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lq/y4;->d:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return-object p1

    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MajsoulData asset digest mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_34
    move-exception p0

    goto :goto_4a

    :catch_36
    move-exception p0

    goto :goto_44

    :catchall_38
    move-exception p0

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p1

    :try_start_40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw p0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_36
    .catchall {:try_start_40 .. :try_end_44} :catchall_34

    :goto_44
    :try_start_44
    new-instance p1, Lq/z4;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_34

    :goto_4a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    :cond_4e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to download "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lq/y4;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_67
    move-exception p0

    new-instance p1, Lq/z4;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;)Lq/J1;
    .registers 15

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-nez v0, :cond_15e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :try_start_8
    const-string v2, "https://api.github.com/repos/Avenshy/MajsoulData/releases/latest"

    invoke-static {v2}, Lq/C4;->g(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_157

    const-string v3, "Accept"

    const-string v4, "application/vnd.github+json"

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-GitHub-Api-Version"

    const-string v4, "2022-11-28"

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "If-None-Match"

    invoke-virtual {v2, v3, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :try_start_27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_14d

    const/16 v4, 0x130

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Lq/J1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5, p0}, Lq/J1;-><init>(ZLq/A2;Ljava/lang/String;)V

    return-object v0

    :cond_3a
    div-int/lit8 v3, v3, 0x64

    const/4 p0, 0x2

    if-ne v3, p0, :cond_142

    const-string p0, "ETag"

    invoke-virtual {v2, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, ""

    if-nez p0, :cond_4a

    move-object p0, v3

    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_12a
    .catchall {:try_start_4a .. :try_end_4e} :catchall_128

    const/high16 v6, 0x80000

    const/4 v7, -0x1

    :try_start_51
    invoke-static {v4, v6, v7, v5}, Lq/C4;->i(Ljava/io/InputStream;IILq/x4;)[B

    move-result-object v6
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_12c

    :try_start_55
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_12a
    .catchall {:try_start_55 .. :try_end_58} :catchall_128

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v7, v0

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-eqz v0, :cond_75

    const-wide/16 v0, 0xfa0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_6f

    goto :goto_75

    :cond_6f
    new-instance p0, Lq/B4;

    invoke-direct {p0}, Lq/B4;-><init>()V

    throw p0

    :cond_75
    :goto_75
    new-instance v0, Lq/J1;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v6, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tag_name"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "assets"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "liqi.desc"

    const-string v8, "max_data.yaml"

    move-object v9, v5

    if-eqz v4, :cond_cb

    move v10, v6

    :goto_9c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_cb

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_a9

    goto :goto_c8

    :cond_a9
    const-string v12, "name"

    invoke-virtual {v11, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bc

    const/high16 v5, 0x100000

    invoke-static {v11, v12, v5}, Lq/C4;->h(Lorg/json/JSONObject;Ljava/lang/String;I)Lq/y4;

    move-result-object v5

    goto :goto_c8

    :cond_bc
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    const/high16 v9, 0x200000

    invoke-static {v11, v12, v9}, Lq/C4;->h(Lorg/json/JSONObject;Ljava/lang/String;I)Lq/y4;

    move-result-object v9

    :cond_c8
    :goto_c8
    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    :cond_cb
    const-string v3, "draft"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "prerelease"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v3, :cond_120

    if-nez v2, :cond_120

    if-eqz v1, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x60

    if-gt v2, v3, :cond_118

    if-eqz v5, :cond_110

    if-eqz v9, :cond_110

    iget-object v2, v5, Lq/y4;->a:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    iget-object v2, v9, Lq/y4;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    new-instance v2, Lq/A2;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v5, v9}, Lq/A2;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v6, v2, p0}, Lq/J1;-><init>(ZLq/A2;Ljava/lang/String;)V

    return-object v0

    :cond_110
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incomplete MajsoulData release assets"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_118
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing MajsoulData release version"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unstable MajsoulData release"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_128
    move-exception p0

    goto :goto_13e

    :catch_12a
    move-exception p0

    goto :goto_138

    :catchall_12c
    move-exception p0

    if-eqz v4, :cond_137

    :try_start_12f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_133

    goto :goto_137

    :catchall_133
    move-exception v0

    :try_start_134
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_137
    :goto_137
    throw p0
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_138} :catch_12a
    .catchall {:try_start_134 .. :try_end_138} :catchall_128

    :goto_138
    :try_start_138
    new-instance v0, Lq/z4;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_13e
    .catchall {:try_start_138 .. :try_end_13e} :catchall_128

    :goto_13e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    :cond_142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to query MajsoulData release"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_14d
    move-exception p0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Lq/z4;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_157
    move-exception p0

    new-instance v0, Lq/z4;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_15e
    new-instance p0, Lq/B4;

    invoke-direct {p0}, Lq/B4;-><init>()V

    throw p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lq/y;->a(Landroid/content/Context;)Lq/A2;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, "0.16.269-4.0.46"

    goto :goto_d

    :cond_9
    iget-object p0, p0, Lq/A2;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :goto_d
    return-object p0
.end method

.method public static f(Lq/A3;Lq/A4;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lq/A3;->a(Lq/A4;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "User-Agent"

    const-string v1, "QiuHui-Mahjong-Android"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static h(Lorg/json/JSONObject;Ljava/lang/String;I)Lq/y4;
    .registers 7

    const-string v0, "size"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "browser_download_url"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "digest"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    move-object v2, p0

    :goto_19
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sha256:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2c
    if-lez v0, :cond_6f

    if-gt v0, p2, :cond_6f

    const-string p2, "[0-9a-f]{64}"

    invoke-virtual {v2, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6f

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_67

    const-string p2, "github.com"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_61

    const-string p2, ".githubusercontent.com"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_67

    :cond_61
    new-instance p0, Lq/y4;

    invoke-direct {p0, p1, v1, v0, v2}, Lq/y4;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Untrusted release asset URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid release asset metadata: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/io/InputStream;IILq/x4;)[B
    .registers 13

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    if-lez p2, :cond_b

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    const/4 v2, -0x1

    move v3, v2

    :cond_13
    :goto_13
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v2, :cond_85

    if-eqz p3, :cond_26

    sget-boolean v5, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-nez v5, :cond_20

    goto :goto_26

    :cond_20
    new-instance p0, Lq/B4;

    invoke-direct {p0}, Lq/B4;-><init>()V

    throw p0

    :cond_26
    :goto_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-gt v5, p1, :cond_7d

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p3, :cond_13

    if-lez p2, :cond_13

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/16 v5, 0x64

    mul-int/2addr v4, v5

    div-int/2addr v4, p2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_13

    iget v3, p3, Lq/x4;->a:I

    packed-switch v3, :pswitch_data_98

    iget-object v3, p3, Lq/x4;->c:Lq/A2;

    mul-int/lit8 v5, v4, 0x25

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x26

    new-instance v6, Lq/A4;

    const-string v7, "正在下载协议数据"

    const/4 v8, 0x5

    iget-object v3, v3, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v6, v8, v3, v5, v7}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v3, p3, Lq/x4;->b:Lq/A3;

    invoke-static {v3, v6}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto :goto_7b

    :pswitch_62  #0x0
    iget-object v3, p3, Lq/x4;->c:Lq/A2;

    mul-int/lit8 v5, v4, 0x17

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0xc

    new-instance v6, Lq/A4;

    const-string v7, "正在下载皮肤数据"

    const/4 v8, 0x4

    iget-object v3, v3, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v6, v8, v3, v5, v7}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v3, p3, Lq/x4;->b:Lq/A3;

    invoke-static {v3, v6}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    :goto_7b
    move v3, v4

    goto :goto_13

    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MajsoulData response is too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    if-lez p2, :cond_97

    array-length p1, p0

    if-ne p1, p2, :cond_8f

    goto :goto_97

    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MajsoulData asset size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    :goto_97
    return-object p0

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_62  #00000000
    .end packed-switch
.end method
