.class public final Lai/onnxruntime/OrtEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;,
        Lai/onnxruntime/OrtEnvironment$ThreadingOptions;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "ort-java"

.field private static volatile INSTANCE:Lai/onnxruntime/OrtEnvironment;

.field private static volatile curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

.field private static volatile curLoggingName:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final defaultAllocator:Lai/onnxruntime/OrtAllocator;

.field final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtEnvironment;->logger:Ljava/util/logging/Logger;

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

.method private constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    const-string v1, "java-default"

    invoke-direct {p0, v0, v1}, Lai/onnxruntime/OrtEnvironment;-><init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtEnvironment;->createHandle(JILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 4
    new-instance v0, Lai/onnxruntime/OrtAllocator;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v1, v2}, Lai/onnxruntime/OrtEnvironment;->getDefaultAllocator(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/OrtAllocator;-><init>(JZ)V

    iput-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-direct {v2, v3, v4, p1, p2}, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;-><init>(JJ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)V
    .registers 10

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 9
    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result v2

    invoke-static {p3}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->access$000(Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)J

    move-result-wide v4

    move-object v3, p2

    .line 10
    invoke-static/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment;->createHandle(JILjava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 11
    new-instance p3, Lai/onnxruntime/OrtAllocator;

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v0, v1}, Lai/onnxruntime/OrtEnvironment;->getDefaultAllocator(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p3, v0, v1, v2}, Lai/onnxruntime/OrtAllocator;-><init>(JZ)V

    iput-object p3, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-direct {v1, v2, v3, p1, p2}, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;-><init>(JJ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public static synthetic access$100(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OrtEnvironment;->close(JJ)V

    return-void
.end method

.method private static native close(JJ)V
.end method

.method private static native createHandle(JILjava/lang/String;)J
.end method

.method private static native createHandle(JILjava/lang/String;J)J
.end method

.method public static getAvailableProviders()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->providers:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method private static native getDefaultAllocator(J)J
.end method

.method public static declared-synchronized getEnvironment()Lai/onnxruntime/OrtEnvironment;
    .registers 3

    const-class v0, Lai/onnxruntime/OrtEnvironment;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;

    if-nez v1, :cond_13

    .line 2
    sget-object v1, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    const-string v2, "ort-java"

    invoke-static {v1, v2}, Lai/onnxruntime/OrtEnvironment;->getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    goto :goto_17

    .line 3
    :cond_13
    :try_start_13
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_11

    monitor-exit v0

    return-object v1

    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_11

    throw v1
.end method

.method public static getEnvironment(Lai/onnxruntime/OrtLoggingLevel;)Lai/onnxruntime/OrtEnvironment;
    .registers 2

    .line 5
    const-string v0, "ort-java"

    invoke-static {p0, v0}, Lai/onnxruntime/OrtEnvironment;->getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;
    .registers 4

    const-class v0, Lai/onnxruntime/OrtEnvironment;

    monitor-enter v0

    .line 6
    :try_start_3
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-nez v1, :cond_1e

    .line 7
    :try_start_7
    new-instance v1, Lai/onnxruntime/OrtEnvironment;

    invoke-direct {v1, p0, p1}, Lai/onnxruntime/OrtEnvironment;-><init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)V

    sput-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;

    .line 8
    sput-object p0, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    .line 9
    sput-object p1, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;
    :try_end_12
    .catch Lai/onnxruntime/OrtException; {:try_start_7 .. :try_end_12} :catch_15
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_39

    :catchall_13
    move-exception p0

    goto :goto_3d

    :catch_15
    move-exception p0

    .line 10
    :try_start_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create OrtEnvironment"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 11
    :cond_1e
    invoke-virtual {p0}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result p0

    sget-object v1, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    invoke-virtual {v1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_32

    sget-object p0, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    .line 12
    :cond_32
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->logger:Ljava/util/logging/Logger;

    const-string p1, "Tried to change OrtEnvironment\'s logging level or name while a reference exists."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 13
    :cond_39
    :goto_39
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_13

    monitor-exit v0

    return-object p0

    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_13

    throw p0
.end method

.method public static declared-synchronized getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)Lai/onnxruntime/OrtEnvironment;
    .registers 5

    const-class v0, Lai/onnxruntime/OrtEnvironment;

    monitor-enter v0

    .line 14
    :try_start_3
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-nez v1, :cond_21

    .line 15
    :try_start_7
    new-instance v1, Lai/onnxruntime/OrtEnvironment;

    invoke-direct {v1, p0, p1, p2}, Lai/onnxruntime/OrtEnvironment;-><init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)V

    sput-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;

    .line 16
    sput-object p0, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    .line 17
    sput-object p1, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;
    :try_end_12
    .catch Lai/onnxruntime/OrtException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    .line 18
    :try_start_12
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_29

    :catch_18
    move-exception p0

    .line 19
    :try_start_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to create OrtEnvironment"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to specify the thread pool when creating an OrtEnvironment, but one already exists."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_16

    throw p0
.end method

.method public static getEnvironment(Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;
    .registers 2

    .line 4
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    invoke-static {v0, p0}, Lai/onnxruntime/OrtEnvironment;->getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;

    move-result-object p0

    return-object p0
.end method

.method private static native setTelemetry(JJZ)V
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 1
    return-void
.end method

.method public createSession(Ljava/lang/String;)Lai/onnxruntime/OrtSession;
    .registers 3

    .line 1
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 5

    .line 3
    const-string v0, "model path must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lai/onnxruntime/OrtSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(Lai/onnxruntime/OrtEnvironment;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 4

    .line 2
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-virtual {p0, p1, v0, p2}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession([B)Lai/onnxruntime/OrtSession;
    .registers 3

    .line 6
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession([BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 5

    .line 7
    const-string v0, "model array must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lai/onnxruntime/OrtSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(Lai/onnxruntime/OrtEnvironment;[BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V

    return-object v0
.end method

.method public createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 4

    .line 5
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-virtual {p0, p1, v0, p2}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession;
    .registers 11

    .line 1
    new-instance v5, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v5}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment;->createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;

    move-result-object p1

    return-object p1
.end method

.method public createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;
    .registers 16

    .line 3
    sget-boolean v0, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    if-eqz v0, :cond_1a

    .line 4
    const-string v0, "train path must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->loadCheckpoint(Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    move-result-object v5

    .line 6
    new-instance p1, Lai/onnxruntime/OrtTrainingSession;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p5

    move-object v4, p6

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lai/onnxruntime/OrtTrainingSession;-><init>(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Training is not enabled in this build of ONNX Runtime."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;
    .registers 13

    .line 2
    iget-object v5, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lai/onnxruntime/OrtEnvironment;->createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;

    move-result-object p1

    return-object p1
.end method

.method public getNativeHandle()J
    .registers 3

    iget-wide v0, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTrainingEnabled()Z
    .registers 2

    sget-boolean v0, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    return v0
.end method

.method public setTelemetry(Z)V
    .registers 6

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    invoke-static {v0, v1, v2, v3, p1}, Lai/onnxruntime/OrtEnvironment;->setTelemetry(JJZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrtEnvironment(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lai/onnxruntime/OrtEnvironment;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
