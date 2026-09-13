.class public Lai/onnxruntime/OrtSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtSession$Result;,
        Lai/onnxruntime/OrtSession$RunOptions;,
        Lai/onnxruntime/OrtSession$SessionOptions;
    }
.end annotation


# instance fields
.field private final allocator:Lai/onnxruntime/OrtAllocator;

.field private closed:Z

.field private final inputNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lai/onnxruntime/OnnxModelMetadata;

.field private final nativeHandle:J

.field private final numInputs:J

.field private final numOutputs:J

.field private final outputNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(JLai/onnxruntime/OrtAllocator;)V
    .registers 12

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    .line 11
    iput-wide p1, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    .line 12
    iput-object p3, p0, Lai/onnxruntime/OrtSession;->allocator:Lai/onnxruntime/OrtAllocator;

    .line 13
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lai/onnxruntime/OrtSession;->getNumInputs(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lai/onnxruntime/OrtSession;->numInputs:J

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, p3, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v1, p0

    move-wide v4, p1

    .line 15
    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession;->getInputNames(JJJ)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lai/onnxruntime/OrtSession;->inputNames:Ljava/util/Set;

    .line 16
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lai/onnxruntime/OrtSession;->getNumOutputs(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lai/onnxruntime/OrtSession;->numOutputs:J

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, p3, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v1, p0

    .line 18
    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession;->getOutputNames(JJJ)[Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lai/onnxruntime/OrtEnvironment;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V
    .registers 12

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    invoke-virtual {p1}, Lai/onnxruntime/OrtEnvironment;->getNativeHandle()J

    move-result-wide v2

    invoke-virtual {p4}, Lai/onnxruntime/OrtSession$SessionOptions;->getNativeHandle()J

    move-result-wide v5

    move-object v4, p2

    .line 3
    invoke-static/range {v0 .. v6}, Lai/onnxruntime/OrtSession;->createSession(JJLjava/lang/String;J)J

    move-result-wide p1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(JLai/onnxruntime/OrtAllocator;)V

    return-void
.end method

.method public constructor <init>(Lai/onnxruntime/OrtEnvironment;[BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V
    .registers 12

    .line 5
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 6
    invoke-virtual {p1}, Lai/onnxruntime/OrtEnvironment;->getNativeHandle()J

    move-result-wide v2

    invoke-virtual {p4}, Lai/onnxruntime/OrtSession$SessionOptions;->getNativeHandle()J

    move-result-wide v5

    move-object v4, p2

    .line 7
    invoke-static/range {v0 .. v6}, Lai/onnxruntime/OrtSession;->createSession(JJ[BJ)J

    move-result-wide p1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(JLai/onnxruntime/OrtAllocator;)V

    return-void
.end method

.method private native closeSession(JJ)V
.end method

.method private native constructMetadata(JJJ)Lai/onnxruntime/OnnxModelMetadata;
.end method

.method private static native createSession(JJLjava/lang/String;J)J
.end method

.method private static native createSession(JJ[BJ)J
.end method

.method private native endProfiling(JJJ)Ljava/lang/String;
.end method

.method public static getHandle(Lai/onnxruntime/OnnxValue;)J
    .registers 4

    instance-of v0, p0, Lai/onnxruntime/OnnxTensorLike;

    if-eqz v0, :cond_9

    check-cast p0, Lai/onnxruntime/OnnxTensorLike;

    iget-wide v0, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    return-wide v0

    :cond_9
    instance-of v0, p0, Lai/onnxruntime/OnnxSequence;

    if-eqz v0, :cond_12

    check-cast p0, Lai/onnxruntime/OnnxSequence;

    iget-wide v0, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    return-wide v0

    :cond_12
    instance-of v0, p0, Lai/onnxruntime/OnnxMap;

    if-eqz v0, :cond_1b

    check-cast p0, Lai/onnxruntime/OnnxMap;

    iget-wide v0, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    return-wide v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected OnnxValue subclass, should be {OnnxTensorLike, OnnxSequence, OnnxMap}, found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native getInputInfo(JJJ)[Lai/onnxruntime/NodeInfo;
.end method

.method private native getInputNames(JJJ)[Ljava/lang/String;
.end method

.method private native getNumInputs(JJ)J
.end method

.method private native getNumOutputs(JJ)J
.end method

.method private native getOutputInfo(JJJ)[Lai/onnxruntime/NodeInfo;
.end method

.method private native getOutputNames(JJJ)[Ljava/lang/String;
.end method

.method private native getProfilingStartTimeInNs(JJ)J
.end method

.method private native run(JJJ[Ljava/lang/String;[JJ[Ljava/lang/String;J[Lai/onnxruntime/OnnxValue;[JJ)[Z
.end method

.method private static wrapInMap([Lai/onnxruntime/NodeInfo;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lai/onnxruntime/NodeInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/NodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, p0

    invoke-static {v1}, Lai/onnxruntime/OrtUtil;->capacityFromSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lai/onnxruntime/NodeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_f

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession;->closeSession(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close an already closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endProfiling()Ljava/lang/String;
    .registers 8

    .line 1
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OrtSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v5, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtSession;->endProfiling(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputInfo()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/NodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_16

    .line 2
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OrtSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v6, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession;->getInputInfo(JJJ)[Lai/onnxruntime/NodeInfo;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/OrtSession;->wrapInMap([Lai/onnxruntime/NodeInfo;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 3
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for inputs from a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lai/onnxruntime/OrtSession;->inputNames:Ljava/util/Set;

    return-object v0

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for inputs from a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMetadata()Lai/onnxruntime/OnnxModelMetadata;
    .registers 9

    iget-object v0, p0, Lai/onnxruntime/OrtSession;->metadata:Lai/onnxruntime/OnnxModelMetadata;

    if-nez v0, :cond_13

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OrtSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v6, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession;->constructMetadata(JJJ)Lai/onnxruntime/OnnxModelMetadata;

    move-result-object v0

    iput-object v0, p0, Lai/onnxruntime/OrtSession;->metadata:Lai/onnxruntime/OnnxModelMetadata;

    :cond_13
    iget-object v0, p0, Lai/onnxruntime/OrtSession;->metadata:Lai/onnxruntime/OnnxModelMetadata;

    return-object v0
.end method

.method public getNumInputs()J
    .registers 3

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_7

    .line 2
    iget-wide v0, p0, Lai/onnxruntime/OrtSession;->numInputs:J

    return-wide v0

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for inputs from a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumOutputs()J
    .registers 3

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_7

    .line 2
    iget-wide v0, p0, Lai/onnxruntime/OrtSession;->numOutputs:J

    return-wide v0

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for outputs from a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputInfo()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/NodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_16

    .line 2
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OrtSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v6, v0, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession;->getOutputInfo(JJJ)[Lai/onnxruntime/NodeInfo;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/OrtSession;->wrapInMap([Lai/onnxruntime/NodeInfo;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 3
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for outputs from a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    return-object v0

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for outputs from a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProfilingStartTimeInNs()J
    .registers 5

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession;->getProfilingStartTimeInNs(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, p2}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/Map;Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/Map;Ljava/util/Set;)Lai/onnxruntime/OrtSession$Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/Map;Ljava/util/Set;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;",
            "Lai/onnxruntime/OrtSession$RunOptions;",
            ")",
            "Lai/onnxruntime/OrtSession$Result;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 7
    iget-boolean v0, v15, Lai/onnxruntime/OrtSession;->closed:Z

    if-nez v0, :cond_1dd

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, ") found "

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1a

    iget-wide v4, v15, Lai/onnxruntime/OrtSession;->numInputs:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    move-object v3, v15

    goto/16 :goto_1bd

    :cond_1a
    :goto_1a
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v4, v0

    iget-wide v6, v15, Lai/onnxruntime/OrtSession;->numInputs:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_17

    .line 9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, v0

    if-eqz v4, :cond_19f

    int-to-long v5, v4

    .line 10
    iget-wide v7, v15, Lai/onnxruntime/OrtSession;->numOutputs:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_19f

    .line 11
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v8, v1, [J

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, ", expected one of "

    if-eqz v6, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 14
    iget-object v10, v15, Lai/onnxruntime/OrtSession;->inputNames:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 15
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v5

    .line 16
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lai/onnxruntime/OnnxTensorLike;

    invoke-virtual {v6}, Lai/onnxruntime/OnnxTensorLike;->getNativeHandle()J

    move-result-wide v9

    aput-wide v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 17
    :cond_7e
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown input name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lai/onnxruntime/OrtSession;->inputNames:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_a4
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v5

    add-int v11, v5, v1

    new-array v14, v11, [Ljava/lang/String;

    .line 20
    new-array v12, v11, [Lai/onnxruntime/OnnxValue;

    .line 21
    new-array v13, v11, [J

    .line 22
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Unknown output name "

    if-eqz v5, :cond_11b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 23
    iget-object v10, v15, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 24
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v4

    .line 25
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lai/onnxruntime/OnnxValue;

    aput-object v2, v12, v4

    .line 26
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lai/onnxruntime/OnnxValue;

    invoke-static {v2}, Lai/onnxruntime/OrtSession;->getHandle(Lai/onnxruntime/OnnxValue;)J

    move-result-wide v2

    aput-wide v2, v13, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v2, 0x0

    goto :goto_bc

    .line 27
    :cond_f7
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_11b
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    iget-object v3, v15, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    move-object/from16 v3, p3

    .line 31
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_140

    .line 32
    aput-object v2, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11f

    .line 33
    :cond_140
    new-instance v0, Lai/onnxruntime/OrtException;

    const-string v1, "Output \'"

    const-string v3, "\' was found in both the requested outputs and the pinned outputs"

    .line 34
    invoke-static {v1, v2, v3}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_14e
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lai/onnxruntime/OrtSession;->outputNames:Ljava/util/Set;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16c
    if-nez p4, :cond_171

    const-wide/16 v16, 0x0

    goto :goto_177

    .line 38
    :cond_171
    invoke-virtual/range {p4 .. p4}, Lai/onnxruntime/OrtSession$RunOptions;->getNativeHandle()J

    move-result-wide v1

    move-wide/from16 v16, v1

    .line 39
    :goto_177
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, v15, Lai/onnxruntime/OrtSession;->nativeHandle:J

    iget-object v5, v15, Lai/onnxruntime/OrtSession;->allocator:Lai/onnxruntime/OrtAllocator;

    iget-wide v5, v5, Lai/onnxruntime/OrtAllocator;->handle:J

    int-to-long v9, v0

    move-object v0, v12

    int-to-long v11, v11

    move-object/from16 v18, v13

    move-wide v12, v11

    move-object v11, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v11

    move-object v11, v14

    move-object/from16 v19, v14

    move-object/from16 v14, p1

    move-object/from16 v15, v18

    .line 40
    invoke-direct/range {v0 .. v17}, Lai/onnxruntime/OrtSession;->run(JJJ[Ljava/lang/String;[JJ[Ljava/lang/String;J[Lai/onnxruntime/OnnxValue;[JJ)[Z

    move-result-object v0

    .line 41
    new-instance v1, Lai/onnxruntime/OrtSession$Result;

    move-object/from16 v3, p1

    move-object/from16 v2, v19

    invoke-direct {v1, v2, v3, v0}, Lai/onnxruntime/OrtSession$Result;-><init>([Ljava/lang/String;[Lai/onnxruntime/OnnxValue;[Z)V

    return-object v1

    .line 42
    :cond_19f
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected number of requestedOutputs & pinnedOutputs, expected [1,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-wide v5, v3, Lai/onnxruntime/OrtSession;->numOutputs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :goto_1bd
    new-instance v0, Lai/onnxruntime/OrtException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected number of inputs, expected [1,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v3, Lai/onnxruntime/OrtSession;->numInputs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1dd
    move-object v3, v15

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to score a closed OrtSession."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrtSession(numInputs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lai/onnxruntime/OrtSession;->numInputs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",numOutputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lai/onnxruntime/OrtSession;->numOutputs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
