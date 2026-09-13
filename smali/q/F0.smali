.class public final enum Lq/F0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final enum b:Lq/F0;

.field public static final enum c:Lq/F0;

.field public static final enum d:Lq/F0;

.field public static final synthetic e:[Lq/F0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lq/F0;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lq/F0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/F0;->b:Lq/F0;

    new-instance v1, Lq/F0;

    const-string v2, "CORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lq/F0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq/F0;->c:Lq/F0;

    new-instance v2, Lq/F0;

    const-string v3, "STRING_PIECE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lq/F0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq/F0;->d:Lq/F0;

    filled-new-array {v0, v1, v2}, [Lq/F0;

    move-result-object v0

    sput-object v0, Lq/F0;->e:[Lq/F0;

    invoke-static {}, Lq/F0;->values()[Lq/F0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq/F0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/F0;
    .registers 2

    const-class v0, Lq/F0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/F0;

    return-object p0
.end method

.method public static values()[Lq/F0;
    .registers 1

    sget-object v0, Lq/F0;->e:[Lq/F0;

    invoke-virtual {v0}, [Lq/F0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/F0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lq/F0;->a:I

    return v0
.end method
