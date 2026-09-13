.class public Lq/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lq/d2;

.field public static final c:Lq/d2;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq/d2;

    invoke-direct {v0}, Lq/d2;-><init>()V

    sput-object v0, Lq/d2;->c:Lq/d2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lq/d2;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lq/d2;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lq/d2;->c:Lq/d2;

    if-ne p1, v0, :cond_e

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lq/d2;->a:Ljava/util/Map;

    goto :goto_16

    .line 4
    :cond_e
    iget-object p1, p1, Lq/d2;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lq/d2;->a:Ljava/util/Map;

    :goto_16
    return-void
.end method

.method public static a()Lq/d2;
    .registers 4

    sget-object v0, Lq/d2;->b:Lq/d2;

    if-nez v0, :cond_2d

    const-class v1, Lq/d2;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lq/d2;->b:Lq/d2;

    if-nez v0, :cond_29

    const-string v0, "getEmptyRegistry"

    sget-object v2, Lq/c2;->a:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_27

    const/4 v3, 0x0

    if-nez v2, :cond_13

    goto :goto_1e

    :cond_13
    :try_start_13
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/d2;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_27

    move-object v3, v0

    :catch_1e
    :goto_1e
    if-eqz v3, :cond_21

    goto :goto_23

    :cond_21
    :try_start_21
    sget-object v3, Lq/d2;->c:Lq/d2;

    :goto_23
    sput-object v3, Lq/d2;->b:Lq/d2;

    move-object v0, v3

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_2b

    :cond_29
    :goto_29
    monitor-exit v1

    goto :goto_2d

    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_27

    throw v0

    :cond_2d
    :goto_2d
    return-object v0
.end method
