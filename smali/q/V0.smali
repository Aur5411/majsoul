.class public final enum Lq/V0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final enum b:Lq/V0;

.field public static final enum c:Lq/V0;

.field public static final enum d:Lq/V0;

.field public static final synthetic e:[Lq/V0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lq/V0;

    const-string v1, "SPEED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lq/V0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/V0;->b:Lq/V0;

    new-instance v1, Lq/V0;

    const-string v2, "CODE_SIZE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lq/V0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq/V0;->c:Lq/V0;

    new-instance v2, Lq/V0;

    const-string v3, "LITE_RUNTIME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lq/V0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq/V0;->d:Lq/V0;

    filled-new-array {v0, v1, v2}, [Lq/V0;

    move-result-object v0

    sput-object v0, Lq/V0;->e:[Lq/V0;

    invoke-static {}, Lq/V0;->values()[Lq/V0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq/V0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/V0;
    .registers 2

    const-class v0, Lq/V0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/V0;

    return-object p0
.end method

.method public static values()[Lq/V0;
    .registers 1

    sget-object v0, Lq/V0;->e:[Lq/V0;

    invoke-virtual {v0}, [Lq/V0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/V0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lq/V0;->a:I

    return v0
.end method
