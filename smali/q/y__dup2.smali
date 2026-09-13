.class public abstract Lq/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/b;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lq/A2; = null

.field public static volatile c:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/y;->a:Ljava/lang/Object;

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "skin_updates"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "full_skin_release_v5.dat"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lq/A2;
    .registers 12

    invoke-static {p0}, Lq/y;->A(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lq/y;->b:Lq/A2;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    sget-object v3, Lq/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_ee

    :cond_17
    sget-object v1, Lq/y;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    sget-object v3, Lq/y;->b:Lq/A2;

    if-eqz v3, :cond_2d

    sget-object v4, Lq/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2a

    :goto_27
    move-object v1, v3

    goto/16 :goto_ee

    :catchall_2a
    move-exception p0

    goto/16 :goto_124

    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_db

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x1e8480

    cmp-long v3, v3, v5

    if-lez v3, :cond_4a

    goto/16 :goto_db

    :cond_4a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4f} :catch_dd
    .catchall {:try_start_2d .. :try_end_4f} :catchall_2a

    :try_start_4f
    invoke-static {v3}, Lq/v4;->a(Ljava/io/FileInputStream;)[B

    move-result-object v4
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_d1

    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "majsoul-data-release-v2"

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5, v6}, Lq/j3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "version"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "maxData"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "descriptor"

    const-string v8, ""

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v8, "dataSha256"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "descriptorSha256"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_ce

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x400

    if-lt v9, v10, :cond_ce

    array-length v9, v6

    const v10, 0x186a0

    if-lt v9, v10, :cond_ce

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7}, Lq/y;->y([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce

    invoke-static {v6}, Lq/y;->y([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    goto :goto_ce

    :cond_c2
    new-instance v3, Lq/A2;

    invoke-direct {v3, v4, v5, v6}, Lq/A2;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lq/y;->b:Lq/A2;

    sput-object v0, Lq/y;->c:Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_cb} :catch_dd
    .catchall {:try_start_53 .. :try_end_cb} :catchall_2a

    :try_start_cb
    monitor-exit v1

    goto/16 :goto_27

    :cond_ce
    :goto_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_2a

    :goto_cf
    move-object v1, v2

    goto :goto_ee

    :catchall_d1
    move-exception v0

    :try_start_d2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception v3

    :try_start_d7
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_da
    throw v0
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_db} :catch_dd
    .catchall {:try_start_d7 .. :try_end_db} :catchall_2a

    :cond_db
    :goto_db
    :try_start_db
    monitor-exit v1

    goto :goto_cf

    :catch_dd
    sput-object v2, Lq/y;->b:Lq/A2;

    const-string v0, ""

    sput-object v0, Lq/y;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_db .. :try_end_ed} :catchall_2a

    goto :goto_cf

    :goto_ee
    if-eqz v1, :cond_123

    iget-object p0, v1, Lq/A2;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "0.16.269-4.0.46"

    invoke-static {p0}, Lq/y;->r(Ljava/lang/String;)[I

    move-result-object p0

    invoke-static {v0}, Lq/y;->r(Ljava/lang/String;)[I

    move-result-object v0

    array-length v3, p0

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_106
    if-ge v5, v3, :cond_120

    array-length v6, p0

    if-ge v5, v6, :cond_10e

    aget v6, p0, v5

    goto :goto_10f

    :cond_10e
    move v6, v4

    :goto_10f
    array-length v7, v0

    if-ge v5, v7, :cond_115

    aget v7, v0, v5

    goto :goto_116

    :cond_115
    move v7, v4

    :goto_116
    if-eq v6, v7, :cond_11d

    invoke-static {v6, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    goto :goto_120

    :cond_11d
    add-int/lit8 v5, v5, 0x1

    goto :goto_106

    :cond_120
    :goto_120
    if-ltz v4, :cond_123

    move-object v2, v1

    :cond_123
    return-object v2

    :goto_124
    :try_start_124
    monitor-exit v1
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_2a

    throw p0
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 3

    invoke-static {p0}, Lq/y;->g(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_14

    goto :goto_17

    :cond_14
    :try_start_14
    invoke-static {p0}, Lq/i2;->a(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    :goto_17
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    if-eqz p0, :cond_33

    if-nez p1, :cond_5

    goto :goto_33

    :cond_5
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_10

    invoke-static {p0}, Lq/h2;->c(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    goto :goto_20

    :cond_10
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    goto :goto_20

    :cond_1c
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :goto_20
    if-eqz p0, :cond_2f

    invoke-static {p0}, Lq/y;->k(Landroid/view/Display;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-static {p0, v0}, Lq/y;->u(Landroid/view/Display;I)F

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    goto :goto_33

    :cond_2f
    const/high16 p0, 0x42f00000  # 120.0f

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    :goto_33
    return-void
.end method

.method public static g(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lq/h2;->e(Landroid/view/Window;)V

    :cond_d
    const/16 v2, 0x23

    if-lt v0, v2, :cond_1f

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lq/i2;->b(Landroid/view/Window;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lq/i2;->d(Landroid/view/Window;)V

    :cond_1f
    if-lt v0, v1, :cond_26

    invoke-static {p0}, Lq/h2;->b(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object v0

    goto :goto_2e

    :cond_26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :goto_2e
    if-nez v0, :cond_31

    return-void

    :cond_31
    invoke-static {v0}, Lq/y;->k(Landroid/view/Display;)I

    move-result v1

    invoke-static {v0, v1}, Lq/y;->u(Landroid/view/Display;I)F

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd  # 0.1f

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_54

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    move v0, v4

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    if-eqz v1, :cond_5e

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v3, v1, :cond_5e

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_5f

    :cond_5e
    move v4, v0

    :goto_5f
    if-eqz v4, :cond_68

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_68} :catch_68

    :catch_68
    :cond_68
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-class v0, Lq/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j(I)I
    .registers 3

    const/16 v0, 0x1388

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x12c

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, v0

    return p0
.end method

.method public static k(Landroid/view/Display;)I
    .registers 14

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    const/high16 v2, 0x42f00000  # 120.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    const v3, 0x42f0199a  # 120.05f

    cmpg-float v1, v1, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v1, :cond_20

    move v1, v4

    goto :goto_21

    :cond_20
    move v1, v5

    :goto_21
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    array-length v6, p0

    move-object v8, v0

    move v7, v5

    :goto_28
    if-ge v7, v6, :cond_77

    aget-object v9, p0, v7

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v11

    if-ne v10, v11, :cond_74

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    if-eq v10, v11, :cond_41

    goto :goto_74

    :cond_41
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->isFinite(F)Z

    move-result v11

    if-nez v11, :cond_4c

    goto :goto_74

    :cond_4c
    sub-float v11, v10, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    cmpg-float v11, v10, v3

    if-gtz v11, :cond_57

    move v11, v4

    goto :goto_58

    :cond_57
    move v11, v5

    :goto_58
    if-eqz v11, :cond_5c

    if-eqz v1, :cond_72

    :cond_5c
    if-ne v11, v1, :cond_74

    if-eqz v11, :cond_68

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v12

    cmpl-float v12, v10, v12

    if-gtz v12, :cond_72

    :cond_68
    if-nez v11, :cond_74

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v12

    cmpg-float v10, v10, v12

    if-gez v10, :cond_74

    :cond_72
    move-object v8, v9

    move v1, v11

    :cond_74
    :goto_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_77
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0
.end method

.method public static l()Ljava/lang/reflect/InvocationHandler;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lq/y;->n()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.chromium.support_lib_glue.SupportLibReflectionUtil"

    invoke-static {v2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createWebViewProviderFactory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/InvocationHandler;

    return-object v0
.end method

.method public static n()Ljava/lang/ClassLoader;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {}, Lq/j;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_b
    :try_start_b
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "getFactory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_1c} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_1c} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1c} :catch_25

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :catch_25
    move-exception v0

    goto :goto_2a

    :catch_27
    move-exception v0

    goto :goto_2a

    :catch_29
    move-exception v0

    :goto_2a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static o(II)Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Lq/y;->j(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L  # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0}, Lq/y;->j(I)I

    move-result p0

    invoke-static {p1}, Lq/y;->j(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p0, p0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "切牌延迟 %.1f–%.1f 秒"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/app/Activity;)I
    .registers 4

    invoke-static {p0}, Lq/y;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "discard_delay_min_ms"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lq/y;->j(I)I

    move-result v0

    invoke-static {p0}, Lq/y;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "discard_delay_max_ms"

    const/16 v2, 0x3e8

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lq/y;->j(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static q(Lcom/qiuhui/mahjong/LicenseActivity;Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 7

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    move v1, v0

    goto :goto_7

    :cond_5
    sget v1, Lq/Q4;->a:I

    :goto_7
    const/4 v2, 0x1

    const/high16 v3, 0x41600000  # 14.0f

    invoke-static {p0, p1, v3, v1, v2}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x2a

    const/16 v2, 0x17

    const/16 v3, 0xf

    if-eqz p2, :cond_1f

    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :cond_1f
    if-eqz p2, :cond_26

    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    goto :goto_30

    :cond_26
    const/16 p2, 0xd2

    const/16 v1, 0xcd

    const/16 v2, 0xd7

    invoke-static {v1, v2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    :goto_30
    const/high16 v1, 0x41700000  # 15.0f

    invoke-static {v0, p2, v1, p0}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public static r(Ljava/lang/String;)[I
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_39

    :cond_a
    const-string v1, "[^0-9]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    move v3, v0

    :goto_15
    if-ge v0, v2, :cond_34

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_31

    :cond_20
    add-int/lit8 v5, v3, 0x1

    :try_start_22
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_28} :catch_2a

    move v3, v5

    goto :goto_31

    :catch_2a
    add-int/lit8 v3, v3, 0x2

    const v4, 0x7fffffff

    aput v4, v1, v5

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_34
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_39
    :goto_39
    new-array p0, v0, [I

    return-object p0
.end method

.method public static s(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "overlay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 10

    const-string v0, "automation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "settings_version"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3b

    const-string v0, "discard_delay_min_ms"

    const/16 v3, 0x4b0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "discard_delay_max_ms"

    const/16 v6, 0x898

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-ne v4, v3, :cond_38

    if-ne v7, v6, :cond_38

    const/16 v2, 0x258

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_38
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3b
    return-object p0
.end method

.method public static u(Landroid/view/Display;I)F
    .registers 9

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p1, :cond_16

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_19
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedRefreshRates()[F

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x7fc00000  # Float.NaN

    move v3, v2

    move v2, v1

    :goto_22
    if-ge v3, v0, :cond_52

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_4f

    :cond_2d
    const v5, 0x42f0199a  # 120.05f

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_40

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v6

    if-eqz v6, :cond_3e

    cmpl-float v6, v4, v1

    if-lez v6, :cond_40

    :cond_3e
    move v1, v4

    goto :goto_4f

    :cond_40
    cmpl-float v5, v4, v5

    if-lez v5, :cond_4f

    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v5

    if-eqz v5, :cond_4e

    cmpg-float v5, v4, v2

    if-gez v5, :cond_4f

    :cond_4e
    move v2, v4

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_52
    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_65

    :cond_59
    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_61

    move v1, v2

    goto :goto_65

    :cond_61
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    :goto_65
    return v1
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "full_skin_release_etag_v5"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_10

    :cond_f
    move-object v1, p0

    :goto_10
    return-object v1
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_10c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-lt v3, v4, :cond_10c

    if-eqz p3, :cond_10c

    array-length v3, p3

    const v4, 0x186a0

    if-lt v3, v4, :cond_10c

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4}, Lq/y;->y([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    invoke-static {p3}, Lq/y;->y([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "version"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "maxData"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "descriptor"

    invoke-static {p3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "dataSha256"

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v4, "descriptorSha256"

    invoke-virtual {p4, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    const-string p5, "majsoul-data-release-v2"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lq/j3;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p0}, Lq/y;->A(Landroid/content/Context;)Ljava/io/File;

    move-result-object p5

    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_104

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_80

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_104

    :cond_80
    new-instance v4, Ljava/io/File;

    const-string v5, "full_skin_release_v5.dat.tmp"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lq/y;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_b5

    :try_start_8f
    invoke-virtual {v5, p4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9c
    .catchall {:try_start_8f .. :try_end_9c} :catchall_f8

    :try_start_9c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b5

    :try_start_9f
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p4

    invoke-virtual {p5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v1, v2

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v1, v0

    invoke-static {p4, v5, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_b4
    .catch Ljava/nio/file/AtomicMoveNotSupportedException; {:try_start_9f .. :try_end_b4} :catch_b7
    .catchall {:try_start_9f .. :try_end_b4} :catchall_b5

    goto :goto_c8

    :catchall_b5
    move-exception p0

    goto :goto_102

    :catch_b7
    :try_start_b7
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p4

    invoke-virtual {p5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v0, v2

    invoke-static {p4, v1, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :goto_c8
    new-instance p4, Lq/A2;

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-direct {p4, p1, p2, p3}, Lq/A2;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object p4, Lq/y;->b:Lq/A2;

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lq/y;->c:Ljava/lang/String;

    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_b7 .. :try_end_dc} :catchall_b5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "overlay"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "full_skin_data_updated_v5"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_f8
    move-exception p0

    :try_start_f9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_101

    :catchall_fd
    move-exception p1

    :try_start_fe
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_101
    throw p0

    :goto_102
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_b5

    throw p0

    :cond_104
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to create skin update directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid full-skin release bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    :cond_9
    invoke-static {p0}, Lq/y;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "full_skin_release_etag_v5"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static y([B)Ljava/lang/String;
    .registers 7

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_30

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z()Landroid/text/SpannableString;
    .registers 6

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "本软件的目的，是让你能实时掌握自己在麻将对局中的表现并从中学习。\n\n本软件仅供教育用途。作者不对使用者的任何行为负责。\n\n游戏开发商与发行商保留对违反其服务条款者采取行动的权利；任何后果（如账号封禁等）皆由使用者自行承担。\n\n仅供自行娱乐，请勿用于非法用途！"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x2b

    const/16 v3, 0x27

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, 0x63

    const/16 v3, 0xeb

    const/16 v5, 0x25

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x81

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Iterable;)V
.end method

.method public abstract c(Lq/c;)V
.end method

.method public abstract h()Ljava/util/List;
.end method

.method public abstract m(I)Lq/c;
.end method
