.class public abstract Lq/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static b:Ljava/lang/String;

.field public static c:Z

.field public static d:Lq/h3;

.field public static e:J

.field public static f:J

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lq/n3;->a:Ljava/util/ArrayList;

    const-string v0, ""

    sput-object v0, Lq/n3;->b:Ljava/lang/String;

    const-wide/high16 v1, -0x8000000000000000L

    sput-wide v1, Lq/n3;->e:J

    sput-object v0, Lq/n3;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Lq/e4;Lq/h3;J)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lq/m3;

    invoke-direct {v1, p0, p1, p2, p3}, Lq/m3;-><init>(Lq/e4;Lq/h3;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;ZLq/e4;)V
    .registers 16

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_16

    new-instance p0, Lq/h3;

    const-string p1, "TOKEN_REQUIRED"

    const-string p2, "授权凭证缺失"

    invoke-direct {p0, v1, p1, p2}, Lq/h3;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p0, v2, v3}, Lq/n3;->a(Lq/e4;Lq/h3;J)V

    return-void

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class p0, Lq/n3;

    monitor-enter p0

    :try_start_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget-object v0, Lq/n3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v9, 0x0

    if-nez v0, :cond_43

    sput-object p1, Lq/n3;->b:Ljava/lang/String;

    sput-boolean v1, Lq/n3;->c:Z

    sput-object v9, Lq/n3;->d:Lq/h3;

    sput-wide v7, Lq/n3;->e:J

    sput-wide v2, Lq/n3;->f:J

    sput v1, Lq/n3;->g:I

    const-string v0, ""

    sput-object v0, Lq/n3;->h:Ljava/lang/String;

    sput-wide v2, Lq/n3;->i:J

    sget-object v0, Lq/n3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_43
    sget-wide v10, Lq/n3;->e:J

    cmp-long v0, v10, v7

    if-eqz v0, :cond_67

    cmp-long v0, v5, v10

    if-gez v0, :cond_4e

    goto :goto_67

    :cond_4e
    sget-object v0, Lq/n3;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-wide/32 v7, 0x493e0

    goto :goto_5d

    :cond_5a
    const-wide/32 v7, 0x1b7740

    :goto_5d
    sget-wide v10, Lq/n3;->e:J

    sub-long v10, v5, v10

    sub-long/2addr v7, v10

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_68

    :cond_67
    :goto_67
    move-wide v7, v2

    :goto_68
    if-nez p2, :cond_77

    sget-object p2, Lq/n3;->d:Lq/h3;

    if-eqz p2, :cond_77

    cmp-long v0, v7, v2

    if-lez v0, :cond_77

    move-object v9, p2

    move-wide v2, v7

    goto :goto_9c

    :catchall_75
    move-exception p1

    goto :goto_b5

    :cond_77
    sget-boolean p2, Lq/n3;->c:Z

    if-eqz p2, :cond_82

    sget-object p1, Lq/n3;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_82
    sget-wide v7, Lq/n3;->f:J

    cmp-long p2, v5, v7

    if-gez p2, :cond_94

    new-instance v9, Lq/h3;

    const-string p2, "NETWORK_ERROR"

    const-string v0, "授权服务暂时不可达，正在重试"

    invoke-direct {v9, v1, p2, v0}, Lq/h3;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sub-long v2, v7, v5

    goto :goto_9c

    :cond_94
    sget-object p2, Lq/n3;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    sput-boolean v1, Lq/n3;->c:Z

    :goto_9c
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_1d .. :try_end_9d} :catchall_75

    if-eqz v9, :cond_a3

    invoke-static {p3, v9, v2, v3}, Lq/n3;->a(Lq/e4;Lq/h3;J)V

    return-void

    :cond_a3
    if-eqz v1, :cond_b4

    new-instance v9, Lq/l3;

    const/4 p0, 0x0

    invoke-direct {v9, p0, p1}, Lq/l3;-><init>(ILjava/lang/Object;)V

    const-string v5, "verify"

    const-string v6, ""

    const/4 v8, 0x1

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lq/i3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLq/g3;)V

    :cond_b4
    return-void

    :goto_b5
    :try_start_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_75

    throw p1
.end method
