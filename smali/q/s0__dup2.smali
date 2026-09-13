.class public final enum Lq/s0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final enum b:Lq/s0;

.field public static final enum c:Lq/s0;

.field public static final enum d:Lq/s0;

.field public static final enum e:Lq/s0;

.field public static final synthetic f:[Lq/s0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lq/s0;

    const-string v1, "FIELD_PRESENCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lq/s0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/s0;->b:Lq/s0;

    new-instance v1, Lq/s0;

    const-string v2, "EXPLICIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lq/s0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq/s0;->c:Lq/s0;

    new-instance v2, Lq/s0;

    const-string v3, "IMPLICIT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lq/s0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq/s0;->d:Lq/s0;

    new-instance v3, Lq/s0;

    const-string v4, "LEGACY_REQUIRED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lq/s0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lq/s0;->e:Lq/s0;

    filled-new-array {v0, v1, v2, v3}, [Lq/s0;

    move-result-object v0

    sput-object v0, Lq/s0;->f:[Lq/s0;

    invoke-static {}, Lq/s0;->values()[Lq/s0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq/s0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/s0;
    .registers 2

    const-class v0, Lq/s0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/s0;

    return-object p0
.end method

.method public static values()[Lq/s0;
    .registers 1

    sget-object v0, Lq/s0;->f:[Lq/s0;

    invoke-virtual {v0}, [Lq/s0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/s0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lq/s0;->a:I

    return v0
.end method
