.class public Lq/b2;
.super Lq/d2;
.source "SourceFile"


# static fields
.field public static final e:Lq/b2;


# instance fields
.field public final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq/b2;

    invoke-direct {v0}, Lq/b2;-><init>()V

    sput-object v0, Lq/b2;->e:Lq/b2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lq/d2;->c:Lq/d2;

    invoke-direct {p0, v0}, Lq/d2;-><init>(Lq/d2;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lq/b2;->d:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    return-void
.end method
