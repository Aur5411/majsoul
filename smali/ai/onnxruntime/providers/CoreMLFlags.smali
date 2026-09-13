.class public final enum Lai/onnxruntime/providers/CoreMLFlags;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/providers/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/providers/CoreMLFlags;",
        ">;",
        "Lai/onnxruntime/providers/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum CPU_ONLY:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum CREATE_MLPROGRAM:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ENABLE_ON_SUBGRAPH:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ONLY_ALLOW_STATIC_INPUT_SHAPES:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ONLY_ENABLE_DEVICE_WITH_ANE:Lai/onnxruntime/providers/CoreMLFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v1, "CPU_ONLY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/providers/CoreMLFlags;->CPU_ONLY:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v1, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v2, "ENABLE_ON_SUBGRAPH"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/providers/CoreMLFlags;->ENABLE_ON_SUBGRAPH:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v2, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v3, "ONLY_ENABLE_DEVICE_WITH_ANE"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/providers/CoreMLFlags;->ONLY_ENABLE_DEVICE_WITH_ANE:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v3, Lai/onnxruntime/providers/CoreMLFlags;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "ONLY_ALLOW_STATIC_INPUT_SHAPES"

    invoke-direct {v3, v7, v4, v6}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/providers/CoreMLFlags;->ONLY_ALLOW_STATIC_INPUT_SHAPES:Lai/onnxruntime/providers/CoreMLFlags;

    new-instance v4, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v6, "CREATE_MLPROGRAM"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v5, v7}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/providers/CoreMLFlags;->CREATE_MLPROGRAM:Lai/onnxruntime/providers/CoreMLFlags;

    filled-new-array {v0, v1, v2, v3, v4}, [Lai/onnxruntime/providers/CoreMLFlags;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/providers/CoreMLFlags;->$VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/providers/CoreMLFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/providers/CoreMLFlags;
    .registers 2

    const-class v0, Lai/onnxruntime/providers/CoreMLFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/providers/CoreMLFlags;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/providers/CoreMLFlags;
    .registers 1

    sget-object v0, Lai/onnxruntime/providers/CoreMLFlags;->$VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

    invoke-virtual {v0}, [Lai/onnxruntime/providers/CoreMLFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/providers/CoreMLFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lai/onnxruntime/providers/CoreMLFlags;->value:I

    return v0
.end method
