.class public final Lcom/qiuhui/mahjong/MortalStateEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final e:Z

.field public static final f:Z


# instance fields
.field public final a:Lq/n;

.field public final b:I

.field public final c:I

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "qiuhui_mortal_state3p"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_7} :catch_9

    move v0, v2

    goto :goto_a

    :catch_9
    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/qiuhui/mahjong/MortalStateEncoder;->e:Z

    const-string v0, "qiuhui_mortal_state"

    :try_start_e
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_11} :catch_12

    move v1, v2

    :catch_12
    sput-boolean v1, Lcom/qiuhui/mahjong/MortalStateEncoder;->f:Z

    return-void
.end method

.method public constructor <init>(ILq/n;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_38

    sget-object v0, Lq/n;->d:Lq/n;

    if-ne p2, v0, :cond_c

    sget-boolean v1, Lcom/qiuhui/mahjong/MortalStateEncoder;->e:Z

    goto :goto_e

    :cond_c
    sget-boolean v1, Lcom/qiuhui/mahjong/MortalStateEncoder;->f:Z

    :goto_e
    if-eqz v1, :cond_38

    iput-object p2, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->a:Lq/n;

    iget v1, p2, Lq/n;->b:I

    mul-int/lit8 v1, v1, 0x22

    iput v1, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->b:I

    iget v1, p2, Lq/n;->c:I

    iput v1, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->c:I

    if-ne p2, v0, :cond_23

    invoke-static {p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->nativeCreate3p(I)J

    move-result-wide p1

    goto :goto_27

    :cond_23
    invoke-static {p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->nativeCreate(I)J

    move-result-wide p1

    :goto_27
    iput-wide p1, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_30

    return-void

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Mortal 状态编码器初始化失败"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Mortal 状态编码器不可用"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCreate(I)J
.end method

.method private static native nativeCreate3p(I)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroy3p(J)V
.end method

.method private static native nativeUpdate(JLjava/lang/String;)[F
.end method

.method private static native nativeUpdate3p(JLjava/lang/String;)[F
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lq/b4;
    .registers 13

    iget-wide v0, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_91

    sget-object v2, Lq/n;->d:Lq/n;

    iget-object v3, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->a:Lq/n;

    if-ne v3, v2, :cond_13

    invoke-static {v0, v1, p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->nativeUpdate3p(JLjava/lang/String;)[F

    move-result-object p1

    goto :goto_17

    :cond_13
    invoke-static {v0, v1, p1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->nativeUpdate(JLjava/lang/String;)[F

    move-result-object p1

    :goto_17
    if-eqz p1, :cond_1e

    array-length v0, p1

    if-nez v0, :cond_1e

    const/4 p1, 0x0

    return-object p1

    :cond_1e
    if-eqz p1, :cond_89

    array-length v0, p1

    iget v1, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->b:I

    iget v2, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->c:I

    add-int v3, v1, v2

    if-ne v0, v3, :cond_89

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_30
    const/4 v6, 0x0

    if-ge v5, v3, :cond_49

    aget v7, v0, v5

    invoke-static {v7}, Ljava/lang/Float;->isFinite(F)Z

    move-result v7

    if-eqz v7, :cond_3e

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_3e
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([FF)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mortal observation 包含非有限值"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-array v3, v2, [Z

    move v5, v4

    move v7, v5

    :goto_4d
    if-ge v5, v2, :cond_76

    add-int v8, v1, v5

    aget v8, p1, v8

    cmpl-float v9, v8, v6

    const/high16 v10, 0x3f800000  # 1.0f

    if-eqz v9, :cond_69

    cmpl-float v9, v8, v10

    if-nez v9, :cond_5e

    goto :goto_69

    :cond_5e
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([FF)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mortal 动作掩码包含异常值"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    :goto_69
    cmpl-float v8, v8, v10

    if-nez v8, :cond_6f

    const/4 v8, 0x1

    goto :goto_70

    :cond_6f
    move v8, v4

    :goto_70
    aput-boolean v8, v3, v5

    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_76
    if-eqz v7, :cond_7e

    new-instance p1, Lq/b4;

    invoke-direct {p1, v0, v3}, Lq/b4;-><init>([F[Z)V

    return-object p1

    :cond_7e
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([FF)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mortal 决策没有合法动作"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_89
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mortal observation 长度不正确"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mortal 状态编码器已关闭"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .registers 7

    iget-wide v0, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    :cond_9
    sget-object v4, Lq/n;->d:Lq/n;

    iget-object v5, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->a:Lq/n;

    if-ne v5, v4, :cond_13

    invoke-static {v0, v1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->nativeDestroy3p(J)V

    goto :goto_16

    :cond_13
    invoke-static {v0, v1}, Lcom/qiuhui/mahjong/MortalStateEncoder;->nativeDestroy(J)V

    :goto_16
    iput-wide v2, p0, Lcom/qiuhui/mahjong/MortalStateEncoder;->d:J

    return-void
.end method
