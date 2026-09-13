.class public final Lq/P5;
.super Lq/i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ALGORITHMIC_DARKENING"

    invoke-direct {p0, v0, v0}, Lq/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\A\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lq/P5;->d:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final b()Z
    .registers 5

    invoke-super {p0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_d

    goto :goto_3d

    :cond_d
    sget-object v0, Lq/O5;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object v2, p0, Lq/P5;->d:Ljava/util/regex/Pattern;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x69

    if-lt v0, v2, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    return v1

    :cond_3d
    :goto_3d
    return v0
.end method
