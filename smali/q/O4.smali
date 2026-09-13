.class public abstract Lq/O4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/P4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq/P4;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lq/P4;-><init>(Ljava/util/Map;)V

    sput-object v0, Lq/O4;->a:Lq/P4;

    return-void
.end method
