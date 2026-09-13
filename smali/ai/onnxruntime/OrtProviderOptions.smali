.class public abstract Lai/onnxruntime/OrtProviderOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected closed:Z

.field protected final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lai/onnxruntime/OrtProviderOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtProviderOptions;->logger:Ljava/util/logging/Logger;

    :try_start_c
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    return-void
.end method

.method public static getApiHandle()J
    .registers 2

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    return-wide v0
.end method

.method public static loadLibraryAndCreate(Lai/onnxruntime/OrtProvider;Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;)J
    .registers 3

    sget-object v0, Lai/onnxruntime/OrtProviderOptions$1;->$SwitchMap$ai$onnxruntime$OrtProvider:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_29

    const/4 v0, 0x5

    if-eq p0, v0, :cond_18

    goto :goto_62

    :cond_18
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_62

    :cond_1f
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find TensorRT shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_29
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractROCM()Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_62

    :cond_30
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find ROCm shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractOpenVINO()Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_62

    :cond_41
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find OpenVINO shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_4b
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractDNNL()Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_62

    :cond_52
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find DNNL shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_5c
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    move-result p0

    if-eqz p0, :cond_67

    :goto_62
    invoke-interface {p1}, Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;->create()J

    move-result-wide p0

    return-wide p0

    :cond_67
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find CUDA shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract applyToNative()V
.end method

.method public checkClosed()V
    .registers 3

    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OrtProviderOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    if-nez v0, :cond_f

    .line 2
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtProviderOptions;->close(JJ)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    goto :goto_16

    .line 4
    :cond_f
    sget-object v0, Lai/onnxruntime/OrtProviderOptions;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed tensor."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method public abstract close(JJ)V
.end method

.method public abstract getProvider()Lai/onnxruntime/OrtProvider;
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method
