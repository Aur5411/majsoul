.class public final enum Lai/onnxruntime/TensorInfo$OnnxTensorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/TensorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxTensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/TensorInfo$OnnxTensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field public static final enum ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field private static final values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v0, v1

    const-string v2, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED"

    const/4 v15, 0x0

    invoke-direct {v1, v2, v15, v15}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v1, v2

    const-string v3, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v2, v3

    const-string v4, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v3, v4

    const-string v5, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v5, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v4, v5

    const-string v6, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v5, v6

    const-string v7, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v7, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v6, v7

    const-string v8, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v8, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v7, v8

    const-string v9, "ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v9, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v8, v9

    const-string v10, "ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v10, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v9, v10

    const-string v11, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v11, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v10, v11

    const-string v12, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v12, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v11, v12

    const-string v13, "ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v12, v13

    const-string v14, "ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v14, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v13, v14

    const-string v15, "ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL"

    move-object/from16 v21, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object v14, v0

    const-string v15, "ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64"

    move-object/from16 v22, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const/16 v23, 0x0

    move-object v15, v0

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128"

    move-object/from16 v24, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object/from16 v16, v0

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object/from16 v17, v0

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object/from16 v18, v0

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object/from16 v19, v0

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    new-instance v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object/from16 v20, v0

    const-string v1, "ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    filled-new-array/range {v0 .. v20}, [Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->$VALUES:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const/16 v0, 0x15

    new-array v0, v0, [Lai/onnxruntime/TensorInfo$OnnxTensorType;

    sput-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values()[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v23

    :goto_11a
    if-ge v15, v1, :cond_127

    aget-object v2, v0, v15

    sget-object v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v4, v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    aput-object v2, v3, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_11a

    :cond_127
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

    iput p3, p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .registers 3

    if-lez p0, :cond_a

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->values:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object p0, v0, p0

    return-object p0

    :cond_a
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method public static mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .registers 2

    sget-object v0, Lai/onnxruntime/TensorInfo$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_30

    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_e  #0xb
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_11  #0xa
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_14  #0x9
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_17  #0x8
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_1a  #0x7
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_1d  #0x6
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_20  #0x5
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_23  #0x4
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_26  #0x3
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_29  #0x2
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    :pswitch_2c  #0x1
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
        :pswitch_17  #00000008
        :pswitch_14  #00000009
        :pswitch_11  #0000000a
        :pswitch_e  #0000000b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .registers 2

    const-class v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .registers 1

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->$VALUES:[Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-virtual {v0}, [Lai/onnxruntime/TensorInfo$OnnxTensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object v0
.end method
