.class public final Lai/onnxruntime/OrtUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtUtil$BufferTuple;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lai/onnxruntime/OrtUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtUtil;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capacityFromSize(I)I
    .registers 5

    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L  # 0.75

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static convertBoxedPrimitiveToArray(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_5c

    const/4 p0, 0x0

    return-object p0

    :pswitch_f  #0x8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-array p1, v1, [Z

    aput-boolean p0, p1, v0

    return-object p1

    :pswitch_1a  #0x7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    new-array v1, v1, [J

    aput-wide p0, v1, v0

    return-object v1

    :pswitch_25  #0x6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :pswitch_30  #0x5
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    new-array p1, v1, [S

    aput-short p0, p1, v0

    return-object p1

    :pswitch_3b  #0x3, 0x4
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    new-array p1, v1, [B

    aput-byte p0, p1, v0

    return-object p1

    :pswitch_46  #0x2
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    new-array v1, v1, [D

    aput-wide p0, v1, v0

    return-object v1

    :pswitch_51  #0x1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    new-array p1, v1, [F

    aput p0, p1, v0

    return-object p1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_46  #00000002
        :pswitch_3b  #00000003
        :pswitch_3b  #00000004
        :pswitch_30  #00000005
        :pswitch_25  #00000006
        :pswitch_1a  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method public static elementCount([J)J
    .registers 8

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_2f

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_12

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received negative value in shape "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-wide v0
.end method

.method private static flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_60

    aget-object v2, p0, v1

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 10
    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lai/onnxruntime/OrtUtil;->flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_35

    .line 11
    :cond_20
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 12
    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Found a non-String, non-array element type, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Found an element type where there should have been an array. Class = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    return-void
.end method

.method public static flattenString(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 2

    .line 1
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 3
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lai/onnxruntime/OrtUtil;->flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static newBooleanArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newByteArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newDoubleArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newFloatArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newIntArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newLongArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newShortArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newStringArray([J)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    const-class v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static prepareBuffer(Ljava/nio/Buffer;Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OrtUtil$BufferTuple;
    .registers 13

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq p1, v0, :cond_e0

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    if-eq p1, v0, :cond_e0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget v2, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    int-to-long v3, v2

    mul-long/2addr v0, v3

    mul-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    int-to-long v2, v3

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget p1, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    mul-int/2addr v1, p1

    move-object v4, p0

    move v5, v1

    goto/16 :goto_af

    :cond_35
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_fa

    :pswitch_50  #0x9, 0xa
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impossible to reach here, managed to cast a buffer as an incorrect type, found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_64  #0x7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/LongBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    move-result-object p1

    goto :goto_a7

    :pswitch_70  #0x6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object p1

    goto :goto_a7

    :pswitch_7c  #0x5, 0xb, 0xc
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object p1

    goto :goto_a7

    :pswitch_88  #0x3, 0x4, 0x8
    move-object p1, p0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_a7

    :pswitch_90  #0x2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/DoubleBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object p1

    goto :goto_a7

    :pswitch_9c  #0x1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_a7
    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-object v4, p1

    move v5, v2

    :goto_af
    new-instance p1, Lai/onnxruntime/OrtUtil$BufferTuple;

    int-to-long v6, v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v8, v0

    if-eq v4, p0, :cond_ba

    const/4 v2, 0x1

    :cond_ba
    move v10, v2

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lai/onnxruntime/OrtUtil$BufferTuple;-><init>(Ljava/nio/Buffer;IJJZ)V

    return-object p1

    :cond_c0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot allocate a direct buffer of the requested size and type, size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot create a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " tensor from a buffer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_9c  #00000001
        :pswitch_90  #00000002
        :pswitch_88  #00000003
        :pswitch_88  #00000004
        :pswitch_7c  #00000005
        :pswitch_70  #00000006
        :pswitch_64  #00000007
        :pswitch_88  #00000008
        :pswitch_50  #00000009
        :pswitch_50  #0000000a
        :pswitch_7c  #0000000b
        :pswitch_7c  #0000000c
    .end packed-switch
.end method

.method private static reshape(Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 10

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "Found element type when expecting an array. Class "

    if-eqz v0, :cond_52

    .line 18
    check-cast p1, [Ljava/lang/Object;

    .line 19
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v0, :cond_51

    aget-object v4, p1, v3

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 22
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_33

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_2e

    goto :goto_33

    .line 24
    :cond_2e
    invoke-static {p0, v4, p2}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p2

    goto :goto_3c

    .line 25
    :cond_33
    :goto_33
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 26
    invoke-static {p0, p2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, p2

    move p2, v5

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 27
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return p2

    .line 28
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reshape([B[J)Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newByteArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([D[J)Ljava/lang/Object;
    .registers 3

    .line 13
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newDoubleArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([F[J)Ljava/lang/Object;
    .registers 3

    .line 11
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newFloatArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([I[J)Ljava/lang/Object;
    .registers 3

    .line 7
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newIntArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([J[J)Ljava/lang/Object;
    .registers 3

    .line 9
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newLongArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([Ljava/lang/String;[J)Ljava/lang/Object;
    .registers 3

    .line 15
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newStringArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([S[J)Ljava/lang/Object;
    .registers 3

    .line 5
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newShortArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([Z[J)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newBooleanArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static transformShape([J)[I
    .registers 7

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_3d

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_3d

    .line 2
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 3
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_3c

    .line 4
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_24

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_24

    long-to-int v2, v2

    .line 5
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shape for a Java array, expected non-negative entries smaller than Integer.MAX_VALUE. Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    return-object v0

    .line 8
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arrays with less than 1 and greater than 8 dimensions are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transformShape([I)[J
    .registers 7

    .line 9
    array-length v0, p0

    if-eqz v0, :cond_36

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_36

    .line 10
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 11
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_35

    .line 12
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1d

    .line 13
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 14
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shape for a Java array, expected positive entries smaller than Integer.MAX_VALUE. Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    return-object v0

    .line 16
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arrays with less than 1 and greater than 8 dimensions are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateShape([J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    array-length v4, p0

    if-ge v2, v4, :cond_20

    aget-wide v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_11

    move v6, v0

    goto :goto_12

    :cond_11
    move v6, v1

    :goto_12
    and-int/2addr v3, v6

    long-to-int v6, v4

    int-to-long v6, v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_1b

    move v4, v0

    goto :goto_1c

    :cond_1b
    move v4, v1

    :goto_1c
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    if-eqz v3, :cond_28

    array-length p0, p0

    const/16 v2, 0x8

    if-gt p0, v2, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0
.end method
