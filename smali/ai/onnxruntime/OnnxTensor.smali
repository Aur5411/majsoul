.class public Lai/onnxruntime/OnnxTensor;
.super Lai/onnxruntime/OnnxTensorLike;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final buffer:Ljava/nio/Buffer;

.field private final ownsBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lai/onnxruntime/OnnxTensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxTensor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JJLai/onnxruntime/TensorInfo;)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-void
.end method

.method public constructor <init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V
    .registers 8

    .line 2
    invoke-direct/range {p0 .. p5}, Lai/onnxruntime/OnnxTensorLike;-><init>(JJLai/onnxruntime/TensorInfo;)V

    .line 3
    iput-object p6, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    .line 4
    iput-boolean p7, p0, Lai/onnxruntime/OnnxTensor;->ownsBuffer:Z

    return-void
.end method

.method private native close(JJ)V
.end method

.method private static native createString(JJLjava/lang/String;)J
.end method

.method private static native createStringTensor(JJ[Ljava/lang/Object;[J)J
.end method

.method private static native createTensor(JJLjava/lang/Object;[JI)J
.end method

.method private static createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 54
    invoke-static {v2, p0}, Lai/onnxruntime/OrtUtil;->prepareBuffer(Ljava/nio/Buffer;Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OrtUtil$BufferTuple;

    move-result-object v2

    .line 55
    iget-object v3, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    move-object/from16 v12, p3

    invoke-static {v3, v12, p0}, Lai/onnxruntime/TensorInfo;->constructFromBuffer(Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo;

    move-result-object v0

    .line 56
    new-instance v3, Lai/onnxruntime/OnnxTensor;

    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, v1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v8, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iget v9, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->pos:I

    iget-wide v10, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->byteSize:J

    iget-object v13, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v13, v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    .line 57
    invoke-static/range {v4 .. v13}, Lai/onnxruntime/OnnxTensor;->createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J

    move-result-wide v5

    iget-wide v7, v1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v10, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iget-boolean v11, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->isCopy:Z

    move-object v4, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v11}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-object v3
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;
    .registers 16

    .line 2
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_81

    .line 3
    invoke-static {p2}, Lai/onnxruntime/TensorInfo;->constructFromJavaArray(Ljava/lang/Object;)Lai/onnxruntime/TensorInfo;

    move-result-object v5

    .line 4
    iget-object p0, v5, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-ne p0, v0, :cond_3f

    .line 5
    iget-object p0, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length p0, p0

    if-nez p0, :cond_28

    .line 6
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-static {v0, v1, v2, v3, p2}, Lai/onnxruntime/OnnxTensor;->createString(JJLjava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 8
    :cond_28
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 9
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->flattenString(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 10
    invoke-static/range {v6 .. v11}, Lai/onnxruntime/OnnxTensor;->createStringTensor(JJ[Ljava/lang/Object;[J)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 11
    :cond_3f
    iget-object v0, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v0, v0

    if-nez v0, :cond_4a

    .line 12
    invoke-static {p0, p2}, Lai/onnxruntime/OrtUtil;->convertBoxedPrimitiveToArray(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4c

    :cond_4a
    move-object v10, p2

    goto :goto_6a

    .line 13
    :cond_4c
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to convert a boxed primitive to an array, this is an error with the ORT Java API, please report this message & stack trace. JavaType = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", object = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :goto_6a
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v11, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    iget-object p2, v5, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v12, p2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    .line 15
    invoke-static/range {v6 .. v12}, Lai/onnxruntime/OnnxTensor;->createTensor(JJLjava/lang/Object;[JI)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 16
    :cond_81
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor with a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 5

    .line 34
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3, v0}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .registers 5

    .line 36
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_b

    .line 37
    invoke-static {p4, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 38
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 29
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_d

    .line 30
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 31
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 32
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 24
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_d

    .line 25
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 26
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 27
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 45
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_d

    .line 46
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 47
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 48
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 50
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_d

    .line 51
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 52
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 53
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 40
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_d

    .line 41
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 42
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 43
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;
    .registers 16

    .line 18
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_22

    .line 19
    new-instance v5, Lai/onnxruntime/TensorInfo;

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-direct {v5, p3, p0, v0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    .line 20
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v10, p2

    move-object v11, p3

    .line 21
    invoke-static/range {v6 .. v11}, Lai/onnxruntime/OnnxTensor;->createStringTensor(JJ[Ljava/lang/Object;[J)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 22
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;
    .registers 3

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 33
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .registers 5

    .line 35
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 28
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 23
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 44
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 49
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 39
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;
    .registers 4

    .line 17
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method private static native createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J
.end method

.method private native getArray(JJLjava/lang/Object;)V
.end method

.method private native getBool(JJ)Z
.end method

.method private getBuffer()Ljava/nio/ByteBuffer;
    .registers 5

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private native getBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native getByte(JJI)B
.end method

.method private native getDouble(JJ)D
.end method

.method private native getFloat(JJI)F
.end method

.method private native getInt(JJI)I
.end method

.method private native getLong(JJI)J
.end method

.method private native getShort(JJI)S
.end method

.method private native getString(JJ)Ljava/lang/String;
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    if-nez v0, :cond_12

    .line 2
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->close(JJ)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    goto :goto_19

    :catchall_10
    move-exception v0

    goto :goto_1b

    .line 4
    :cond_12
    sget-object v0, Lai/onnxruntime/OnnxTensor;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed tensor."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_10

    .line 5
    :goto_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_10

    throw v0
.end method

.method public getBufferRef()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_22

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 3

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/DoubleBuffer;->allocate(I)Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 3

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_22
    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_33

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    :cond_33
    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_44

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    :cond_44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntBuffer()Ljava/nio/IntBuffer;
    .registers 3

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongBuffer()Ljava/nio/LongBuffer;
    .registers 3

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/LongBuffer;->allocate(I)Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortBuffer()Ljava/nio/ShortBuffer;
    .registers 3

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_16

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_16

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    return-object v0

    :cond_16
    :goto_16
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
    .registers 2

    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 9

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_d9

    sget-object v0, Lai/onnxruntime/OnnxTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10a

    new-instance v0, Lai/onnxruntime/OrtException;

    const-string v1, "Extracting the value of an invalid Tensor."

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0xb
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v7, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->bf16ToFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_3a  #0xa
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->fp16ToFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_52  #0x9
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5b  #0x8
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBool(JJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_68  #0x7
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getLong(JJI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_7c  #0x6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getInt(JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_90  #0x5
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :pswitch_a4  #0x3, 0x4
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getByte(JJI)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_b8  #0x2
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getDouble(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_c5  #0x1
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getFloat(JJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_d9
    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo;->makeCarrier()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getNumElements()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_f4

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getArray(JJLjava/lang/Object;)V

    :cond_f4
    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    iget-object v2, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v3, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-ne v2, v3, :cond_108

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_108

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, v1}, Lai/onnxruntime/OrtUtil;->reshape([Ljava/lang/String;[J)Ljava/lang/Object;

    move-result-object v0

    :cond_108
    return-object v0

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_c5  #00000001
        :pswitch_b8  #00000002
        :pswitch_a4  #00000003
        :pswitch_a4  #00000004
        :pswitch_90  #00000005
        :pswitch_7c  #00000006
        :pswitch_68  #00000007
        :pswitch_5b  #00000008
        :pswitch_52  #00000009
        :pswitch_3a  #0000000a
        :pswitch_22  #0000000b
    .end packed-switch
.end method

.method public ownsBuffer()Z
    .registers 2

    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensor;->ownsBuffer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnnxTensor(info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
