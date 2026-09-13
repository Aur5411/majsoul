.class public Lai/onnxruntime/TensorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/ValueInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/TensorInfo$OnnxTensorType;
    }
.end annotation


# static fields
.field public static final MAX_DIMENSIONS:I = 0x8


# instance fields
.field final dimensionNames:[Ljava/lang/String;

.field private final hasNames:Z

.field final numElements:J

.field public final onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field final shape:[J

.field public final type:Lai/onnxruntime/OnnxJavaType;


# direct methods
.method public constructor <init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 3
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    .line 4
    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    .line 6
    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 7
    iput-object p3, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 8
    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->elementCount([J)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-void
.end method

.method public constructor <init>([J[Ljava/lang/String;I)V
    .registers 8

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 11
    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    .line 12
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p2, v2

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v1, 0x1

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 14
    :cond_19
    :goto_19
    iput-boolean v1, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    .line 15
    invoke-static {p3}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p2

    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 16
    invoke-static {p2}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p2

    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 17
    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->elementCount([J)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lai/onnxruntime/TensorInfo;->lambda$toString$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructFromBuffer(Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo;
    .registers 9

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq p2, v0, :cond_5b

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    if-eq p2, v0, :cond_5b

    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4c

    iget p0, p2, Lai/onnxruntime/OnnxJavaType;->size:I

    int-to-long v4, p0

    div-long v4, v2, v4

    cmp-long p0, v0, v4

    if-nez p0, :cond_1f

    goto :goto_4c

    :cond_1f
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "Shape "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requires "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " elements but the buffer has "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    :goto_4c
    new-instance p0, Lai/onnxruntime/TensorInfo;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-static {p2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object p0

    :cond_5b
    new-instance p0, Lai/onnxruntime/OrtException;

    const-string p1, "Cannot create a tensor from a string or unknown buffer."

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constructFromJavaArray(Ljava/lang/Object;)Lai/onnxruntime/TensorInfo;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_38

    invoke-static {v0}, Lai/onnxruntime/OnnxJavaType;->mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p0

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    if-eq p0, v1, :cond_1f

    new-instance v0, Lai/onnxruntime/TensorInfo;

    new-array v1, v2, [J

    invoke-static {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object v0

    :cond_1f
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to a OnnxTensor."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    move v1, v2

    :goto_39
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_46
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_69

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_69

    :cond_55
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create an OnnxTensor from a base type of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    :goto_69
    const/16 v3, 0x8

    if-gt v1, v3, :cond_80

    invoke-static {v0}, Lai/onnxruntime/OnnxJavaType;->mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    new-array v1, v1, [J

    invoke-static {v1, v2, p0}, Lai/onnxruntime/TensorInfo;->extractShape([JILjava/lang/Object;)V

    new-instance p0, Lai/onnxruntime/TensorInfo;

    invoke-static {v0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object p0

    :cond_80
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create an OnnxTensor with more than 8 dimensions. Found "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dimensions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constructFromSparseTensor(Lai/onnxruntime/OnnxSparseTensor$SparseTensor;)Lai/onnxruntime/TensorInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
            "TT;>;)",
            "Lai/onnxruntime/TensorInfo;"
        }
    .end annotation

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getDenseShape()[J

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getValues()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2c

    new-instance v1, Lai/onnxruntime/TensorInfo;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getType()Lai/onnxruntime/OnnxJavaType;

    move-result-object v2

    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getType()Lai/onnxruntime/OnnxJavaType;

    move-result-object p0

    invoke-static {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    return-object v1

    :cond_2c
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Shape "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", has at most "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " elements but the buffer has "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " elements."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static elementCount([J)J
    .registers 6

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_c

    aget-wide v3, p0, v2

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    return-wide v0
.end method

.method private static extractShape([JILjava/lang/Object;)V
    .registers 8

    array-length v0, p0

    if-eq v0, p1, :cond_60

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_47

    aget-wide v1, p0, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_15

    int-to-long v1, v0

    aput-wide v1, p0, p1

    goto :goto_1a

    :cond_15
    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-nez v1, :cond_29

    :goto_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_60

    add-int/lit8 v2, p1, 0x1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lai/onnxruntime/TensorInfo;->extractShape([JILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_29
    new-instance p2, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supplied array is ragged, expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v2, p0, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", found "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_47
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Supplied array has a zero dimension at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", all dimensions must be positive"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    return-void
.end method

.method private static synthetic lambda$toString$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "\"\""

    :cond_8
    return-object p0
.end method

.method private validateShape()Z
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->validateShape([J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDimensionNames()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNumElements()J
    .registers 3

    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-wide v0
.end method

.method public getShape()[J
    .registers 3

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public isScalar()Z
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public makeCarrier()Ljava/lang/Object;
    .registers 5

    invoke-direct {p0}, Lai/onnxruntime/TensorInfo;->validateShape()Z

    move-result v0

    if-nez v0, :cond_29

    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    goto :goto_29

    :cond_f
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This tensor is not representable in Java, it\'s too big - shape = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    sget-object v0, Lai/onnxruntime/TensorInfo$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_8b

    packed-switch v0, :pswitch_data_94

    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_50  #0x9
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :pswitch_5a  #0x8
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newBooleanArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_61  #0x7
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newLongArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_68  #0x6
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newIntArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_6f  #0x5
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newShortArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_76  #0x3, 0x4
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newByteArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_7d  #0x2
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newDoubleArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_84  #0x1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newFloatArray([J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8b
    new-instance v0, Lai/onnxruntime/OrtException;

    const-string v1, "Can\'t construct a carrier for an invalid type."

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_84  #00000001
        :pswitch_7d  #00000002
        :pswitch_76  #00000003
        :pswitch_76  #00000004
        :pswitch_6f  #00000005
        :pswitch_68  #00000006
        :pswitch_61  #00000007
        :pswitch_5a  #00000008
        :pswitch_50  #00000009
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TensorInfo(javaType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onnxType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    if-eqz v1, :cond_69

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",dimNames=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lq/p3;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lq/p3;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
