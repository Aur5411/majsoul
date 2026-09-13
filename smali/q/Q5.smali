.class public final Lq/Q5;
.super Lq/h;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    iput p2, p0, Lq/Q5;->e:I

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, p3}, Lq/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lq/Q5;->e:I

    packed-switch v1, :pswitch_data_66

    const-string v1, "MULTI_PROFILE"

    invoke-static {v1}, Lq/k;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_13

    :cond_f
    invoke-super {p0}, Lq/i;->b()Z

    move-result v0

    :goto_13
    return v0

    :pswitch_14  #0x1
    invoke-super {p0}, Lq/i;->b()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_3d

    :cond_1b
    const-string v1, "MULTI_PROCESS"

    invoke-static {v1}, Lq/k;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v0, Lq/O5;->a:Ljava/util/WeakHashMap;

    sget-object v0, Lq/R5;->b:Lq/h;

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lq/S5;->a:Lq/W5;

    invoke-interface {v0}, Lq/W5;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    move-result v0

    goto :goto_3d

    :cond_38
    invoke-static {}, Lq/R5;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    :cond_3d
    :goto_3d
    return v0

    :pswitch_3e  #0x0
    invoke-super {p0}, Lq/i;->b()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_64

    :cond_45
    sget-object v1, Lq/O5;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_4e

    goto :goto_64

    :cond_4e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_59

    invoke-static {v1}, Lq/j;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    goto :goto_5c

    :cond_59
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, v1

    :goto_5c
    const-wide/32 v3, 0x25f34560

    cmp-long v1, v1, v3

    if-ltz v1, :cond_64

    const/4 v0, 0x1

    :cond_64
    :goto_64
    return v0

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_14  #00000001
    .end packed-switch
.end method
