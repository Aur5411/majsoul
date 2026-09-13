.class public final Lai/onnxruntime/platform/Fp16Conversions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lai/onnxruntime/platform/Fp16Conversions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/platform/Fp16Conversions;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bf16ToFloat(S)F
    .registers 1

    shl-int/lit8 p0, p0, 0x10

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;
    .registers 6

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_2d

    add-int v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->bf16ToFloat(S)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    return-object v2
.end method

.method public static convertFloatBufferToBf16Buffer(Ljava/nio/FloatBuffer;)Ljava/nio/ShortBuffer;
    .registers 6

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_2d

    add-int v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->floatToBf16(F)S

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    return-object v2
.end method

.method public static convertFloatBufferToFp16Buffer(Ljava/nio/FloatBuffer;)Ljava/nio/ShortBuffer;
    .registers 6

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_2d

    add-int v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->floatToFp16(F)S

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    return-object v2
.end method

.method public static convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;
    .registers 6

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_2d

    add-int v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->fp16ToFloat(S)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    return-object v2
.end method

.method public static floatToBf16(F)S
    .registers 2

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0x7fff

    add-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x10

    int-to-short p0, p0

    return p0
.end method

.method public static floatToFp16(F)S
    .registers 1

    invoke-static {p0}, Lai/onnxruntime/platform/Fp16Conversions;->mlasFloatToFp16(F)S

    move-result p0

    return p0
.end method

.method public static fp16ToFloat(S)F
    .registers 1

    invoke-static {p0}, Lai/onnxruntime/platform/Fp16Conversions;->mlasFp16ToFloat(S)F

    move-result p0

    return p0
.end method

.method public static mlasFloatToFp16(F)S
    .registers 4

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    xor-int/2addr p0, v1

    const/high16 v2, 0x47800000  # 65536.0f

    if-lt p0, v2, :cond_1a

    if-le p0, v0, :cond_17

    const/16 p0, 0x7e00

    goto :goto_3c

    :cond_17
    const/16 p0, 0x7c00

    goto :goto_3c

    :cond_1a
    const/high16 v0, 0x38800000

    if-ge p0, v0, :cond_30

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    sub-int/2addr p0, v0

    :goto_2e
    int-to-short p0, p0

    goto :goto_3c

    :cond_30
    shr-int/lit8 v0, p0, 0xd

    and-int/lit8 v0, v0, 0x1

    const v2, 0x37fff001

    sub-int/2addr p0, v2

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0xd

    goto :goto_2e

    :goto_3c
    shr-int/lit8 v0, v1, 0x10

    int-to-short v0, v0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static mlasFp16ToFloat(S)F
    .registers 5

    and-int/lit16 v0, p0, 0x7fff

    shl-int/lit8 v0, v0, 0xd

    const/high16 v1, 0xf800000

    and-int v2, v0, v1

    const/high16 v3, 0x38000000

    add-int/2addr v3, v0

    if-ne v2, v1, :cond_12

    const/high16 v1, 0x70000000

    add-int v3, v0, v1

    goto :goto_24

    :cond_12
    if-nez v2, :cond_24

    const/high16 v1, 0x38800000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_24
    :goto_24
    const v0, 0x8000

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
