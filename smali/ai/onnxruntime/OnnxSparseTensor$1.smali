.class synthetic Lai/onnxruntime/OnnxSparseTensor$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ai$onnxruntime$OnnxJavaType:[I

.field static final synthetic $SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    invoke-static {}, Lai/onnxruntime/OnnxJavaType;->values()[Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v3, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v4, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xa

    aput v6, v4, v5
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xb

    aput v6, v4, v5
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v5, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xc

    aput v6, v4, v5
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    invoke-static {}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->values()[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType:[I

    :try_start_99
    sget-object v5, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a1
    sget-object v1, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType:[I

    sget-object v4, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ab
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType:[I

    sget-object v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b5
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$1;->$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType:[I

    sget-object v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_bf

    :catch_bf
    return-void
.end method
