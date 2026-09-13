.class public final enum Lai/onnxruntime/OnnxJavaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxJavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxJavaType;

.field public static final enum BFLOAT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum BOOL:Lai/onnxruntime/OnnxJavaType;

.field public static final enum DOUBLE:Lai/onnxruntime/OnnxJavaType;

.field public static final enum FLOAT:Lai/onnxruntime/OnnxJavaType;

.field public static final enum FLOAT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT32:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT64:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT8:Lai/onnxruntime/OnnxJavaType;

.field public static final enum STRING:Lai/onnxruntime/OnnxJavaType;

.field public static final enum UINT8:Lai/onnxruntime/OnnxJavaType;

.field public static final enum UNKNOWN:Lai/onnxruntime/OnnxJavaType;

.field private static final values:[Lai/onnxruntime/OnnxJavaType;


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final size:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 32

    new-instance v6, Lai/onnxruntime/OnnxJavaType;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v6, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    new-instance v1, Lai/onnxruntime/OnnxJavaType;

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x8

    const-string v8, "DOUBLE"

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    new-instance v2, Lai/onnxruntime/OnnxJavaType;

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    const-string v14, "INT8"

    const/4 v15, 0x2

    const/16 v16, 0x3

    move-object v13, v2

    move-object/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v2, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    new-instance v3, Lai/onnxruntime/OnnxJavaType;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x2

    const-string v20, "INT16"

    const/16 v21, 0x3

    const/16 v22, 0x4

    move-object/from16 v19, v3

    move-object/from16 v23, v0

    invoke-direct/range {v19 .. v24}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v3, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    new-instance v4, Lai/onnxruntime/OnnxJavaType;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    const-string v13, "INT32"

    const/4 v14, 0x4

    const/4 v15, 0x5

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v4, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    new-instance v5, Lai/onnxruntime/OnnxJavaType;

    sget-object v22, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x8

    const-string v19, "INT64"

    const/16 v20, 0x5

    const/16 v21, 0x6

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v23}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v5, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    new-instance v18, Lai/onnxruntime/OnnxJavaType;

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    const-string v13, "BOOL"

    const/4 v14, 0x6

    const/4 v15, 0x7

    move-object/from16 v12, v18

    invoke-direct/range {v12 .. v17}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v18, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    new-instance v25, Lai/onnxruntime/OnnxJavaType;

    const-class v23, Ljava/lang/String;

    const/16 v24, 0x4

    const-string v20, "STRING"

    const/16 v21, 0x7

    const/16 v22, 0x8

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v24}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v25, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    new-instance v19, Lai/onnxruntime/OnnxJavaType;

    const/16 v10, 0x9

    const/4 v12, 0x1

    const-string v8, "UINT8"

    const/16 v9, 0x8

    move-object/from16 v7, v19

    invoke-direct/range {v7 .. v12}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v19, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    new-instance v9, Lai/onnxruntime/OnnxJavaType;

    const/16 v15, 0xa

    const/16 v17, 0x2

    const-string v13, "FLOAT16"

    const/16 v14, 0x9

    move-object v12, v9

    move-object/from16 v16, v0

    invoke-direct/range {v12 .. v17}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v9, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    new-instance v10, Lai/onnxruntime/OnnxJavaType;

    const/16 v15, 0xb

    const-string v13, "BFLOAT16"

    const/16 v14, 0xa

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v10, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    new-instance v11, Lai/onnxruntime/OnnxJavaType;

    const-class v30, Ljava/lang/Object;

    const/16 v31, 0x0

    const-string v27, "UNKNOWN"

    const/16 v28, 0xb

    const/16 v29, 0x0

    move-object/from16 v26, v11

    invoke-direct/range {v26 .. v31}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v11, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    move-object v0, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v25

    move-object/from16 v8, v19

    filled-new-array/range {v0 .. v11}, [Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxJavaType;->$VALUES:[Lai/onnxruntime/OnnxJavaType;

    invoke-static {}, Lai/onnxruntime/OnnxJavaType;->values()[Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lai/onnxruntime/OnnxJavaType;

    sput-object v1, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e9
    if-ge v2, v1, :cond_f6

    aget-object v3, v0, v2

    sget-object v4, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    iget v5, v3, Lai/onnxruntime/OnnxJavaType;->value:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :cond_f6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OnnxJavaType;->value:I

    iput-object p4, p0, Lai/onnxruntime/OnnxJavaType;->clazz:Ljava/lang/Class;

    iput p5, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    return-void
.end method

.method public static mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lai/onnxruntime/OnnxJavaType;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_99

    :cond_12
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_96

    :cond_24
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_93

    :cond_35
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_90

    :cond_46
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_8d

    :cond_57
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto :goto_8a

    :cond_68
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    goto :goto_87

    :cond_79
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_84
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_87
    :goto_87
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_8a
    :goto_8a
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_8d
    :goto_8d
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_90
    :goto_90
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_93
    :goto_93
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_96
    :goto_96
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_99
    :goto_99
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    return-object p0
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxJavaType;
    .registers 3

    if-lez p0, :cond_a

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object p0, v0, p0

    return-object p0

    :cond_a
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    return-object p0
.end method

.method public static mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;
    .registers 2

    sget-object v0, Lai/onnxruntime/OnnxJavaType$1;->$SwitchMap$ai$onnxruntime$TensorInfo$OnnxTensorType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_30

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_e  #0xe
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_11  #0xd
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_14  #0xc
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_17  #0xb
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_1a  #0xa
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_1d  #0x9
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_20  #0x7, 0x8
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_23  #0x5, 0x6
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_26  #0x3, 0x4
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_29  #0x2
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_2c  #0x1
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_23  #00000006
        :pswitch_20  #00000007
        :pswitch_20  #00000008
        :pswitch_1d  #00000009
        :pswitch_1a  #0000000a
        :pswitch_17  #0000000b
        :pswitch_14  #0000000c
        :pswitch_11  #0000000d
        :pswitch_e  #0000000e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxJavaType;
    .registers 2

    const-class v0, Lai/onnxruntime/OnnxJavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OnnxJavaType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxJavaType;
    .registers 1

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->$VALUES:[Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v0}, [Lai/onnxruntime/OnnxJavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OnnxJavaType;

    return-object v0
.end method
