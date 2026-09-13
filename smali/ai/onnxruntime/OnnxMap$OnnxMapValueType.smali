.class public final enum Lai/onnxruntime/OnnxMap$OnnxMapValueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxMapValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxMap$OnnxMapValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field private static final values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    new-instance v1, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    new-instance v3, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    const-string v4, "LONG"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    new-instance v4, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    const-string v5, "FLOAT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    new-instance v5, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    const-string v6, "DOUBLE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    filled-new-array {v0, v1, v3, v4, v5}, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->$VALUES:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    const/4 v0, 0x5

    new-array v0, v0, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-static {}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    move-result-object v0

    array-length v1, v0

    :goto_42
    if-ge v2, v1, :cond_4f

    aget-object v3, v0, v2

    sget-object v4, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    iget v5, v3, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->value:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_4f
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

    iput p3, p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .registers 3

    if-lez p0, :cond_a

    sget-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object p0, v0, p0

    return-object p0

    :cond_a
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0
.end method

.method public static mapFromOnnxJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .registers 2

    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0

    :cond_17
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0

    :cond_1a
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0

    :cond_1d
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0

    :cond_20
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .registers 2

    const-class v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .registers 1

    sget-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->$VALUES:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v0}, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    return-object v0
.end method
