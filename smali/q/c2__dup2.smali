.class public abstract Lq/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-class v0, Lq/b2;

    sget-object v1, Lq/b2;->e:Lq/b2;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    sput-object v0, Lq/c2;->a:Ljava/lang/Class;

    return-void
.end method
