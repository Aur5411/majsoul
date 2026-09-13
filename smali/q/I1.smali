.class public abstract synthetic Lq/I1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static synthetic c(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-ne p0, v0, :cond_f

    const-string p0, "对局中"

    return-object p0

    :cond_f
    const/4 p0, 0x0

    throw p0

    :cond_11
    const-string p0, "等待对局"

    return-object p0

    :cond_14
    const-string p0, "等待登录"

    return-object p0

    :cond_17
    const-string p0, "准备就绪"

    return-object p0
.end method

.method public static d(IIII)I
    .registers 4

    mul-int/2addr p0, p1

    add-int/2addr p0, p2

    mul-int/2addr p0, p3

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(I)I
    .registers 1

    if-eqz p0, :cond_5

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method
