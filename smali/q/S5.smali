.class public abstract Lq/S5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/W5;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    invoke-static {}, Lq/y;->l()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_14

    new-instance v1, Lq/s2;

    const-class v2, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-static {v2, v0}, Lq/y;->i(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lq/s2;-><init>(ILjava/lang/Object;)V

    goto :goto_1a

    :catch_14
    new-instance v1, Lq/L2;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lq/L2;-><init>(I)V

    :goto_1a
    sput-object v1, Lq/S5;->a:Lq/W5;

    return-void

    :catch_1d
    move-exception v0

    goto :goto_22

    :catch_1f
    move-exception v0

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
