.class final Lai/onnxruntime/OnnxRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ONNXRUNTIME_JNI_LIBRARY_NAME:Ljava/lang/String; = "onnxruntime4j_jni"

.field static final ONNXRUNTIME_LIBRARY_CUDA_NAME:Ljava/lang/String; = "onnxruntime_providers_cuda"

.field static final ONNXRUNTIME_LIBRARY_DNNL_NAME:Ljava/lang/String; = "onnxruntime_providers_dnnl"

.field static final ONNXRUNTIME_LIBRARY_NAME:Ljava/lang/String; = "onnxruntime"

.field static final ONNXRUNTIME_LIBRARY_OPENVINO_NAME:Ljava/lang/String; = "onnxruntime_providers_openvino"

.field static final ONNXRUNTIME_LIBRARY_ROCM_NAME:Ljava/lang/String; = "onnxruntime_providers_rocm"

.field static final ONNXRUNTIME_LIBRARY_SHARED_NAME:Ljava/lang/String; = "onnxruntime_providers_shared"

.field static final ONNXRUNTIME_LIBRARY_TENSORRT_NAME:Ljava/lang/String; = "onnxruntime_providers_tensorrt"

.field static final ONNXRUNTIME_NATIVE_PATH:Ljava/lang/String; = "onnxruntime.native.path"

.field private static final ORT_API_VERSION_1:I = 0x1

.field private static final ORT_API_VERSION_11:I = 0xb

.field private static final ORT_API_VERSION_13:I = 0xd

.field private static final ORT_API_VERSION_14:I = 0xe

.field private static final ORT_API_VERSION_2:I = 0x2

.field private static final ORT_API_VERSION_3:I = 0x3

.field private static final ORT_API_VERSION_7:I = 0x7

.field private static final ORT_API_VERSION_8:I = 0x8

.field private static final ORT_TRAINING_API_VERSION_1:I = 0x1

.field private static final OS_ARCH_STR:Ljava/lang/String;

.field private static final extractedSharedProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static libraryDirPathProperty:Ljava/lang/String;

.field private static loaded:Z

.field private static final logger:Ljava/util/logging/Logger;

.field static ortApiHandle:J

.field static ortTrainingApiHandle:J

.field static providers:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static tempDirectory:Ljava/nio/file/Path;

.field static trainingEnabled:Z

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->initOsArch()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->OS_ARCH_STR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lai/onnxruntime/OnnxRuntime;->loaded:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->extractedSharedProviders:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanUp(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    return-void
.end method

.method public static extractCUDA()Z
    .registers 1

    const-string v0, "onnxruntime_providers_cuda"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static extractDNNL()Z
    .registers 1

    const-string v0, "onnxruntime_providers_dnnl"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static extractFromResources(Ljava/lang/String;)Ljava/util/Optional;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "Attempting to load native library \'"

    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/ai/onnxruntime/native/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lai/onnxruntime/OnnxRuntime;->OS_ARCH_STR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    invoke-interface {v3, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    :try_start_28
    const-class v3, Lai/onnxruntime/OnnxRuntime;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_3d
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3a

    if-nez v3, :cond_46

    :try_start_30
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_44

    if-eqz v3, :cond_40

    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3d
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_40

    :catchall_3a
    move-exception p0

    goto/16 :goto_e4

    :catch_3d
    move-exception v0

    goto/16 :goto_bf

    :cond_40
    :goto_40
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object v0

    :catchall_44
    move-exception v0

    goto :goto_b4

    :cond_46
    :try_start_46
    sget-object v4, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' from resource path "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " copying to "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_44

    :goto_72
    :try_start_72
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_80

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_7e

    goto :goto_72

    :catchall_7e
    move-exception v0

    goto :goto_ab

    :cond_80
    :try_start_80
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracted native library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' from resource path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0
    :try_end_a4
    .catchall {:try_start_80 .. :try_end_a4} :catchall_44

    :try_start_a4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_3d
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_3a

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object v0

    :goto_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception v2

    :try_start_b0
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_44

    :goto_b4
    if-eqz v3, :cond_be

    :try_start_b6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception v2

    :try_start_bb
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_be
    :goto_be
    throw v0
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bf} :catch_3d
    .catchall {:try_start_bb .. :try_end_bf} :catchall_3a

    :goto_bf
    :try_start_bf
    sget-object v2, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' from the resources"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_e0
    .catchall {:try_start_bf .. :try_end_e0} :catchall_3a

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object p0

    :goto_e4
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    throw p0
.end method

.method public static extractOpenVINO()Z
    .registers 1

    const-string v0, "onnxruntime_providers_openvino"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized extractProviderLibrary(Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_26

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    monitor-exit v0

    return v2

    :cond_c
    :try_start_c
    sget-object v1, Lai/onnxruntime/OnnxRuntime;->extractedSharedProviders:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_26

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    monitor-exit v0

    return v4

    :cond_17
    :try_start_17
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->extractFromResources(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_26

    monitor-exit v0

    return v4

    :catchall_26
    move-exception p0

    goto :goto_4d

    :cond_28
    :try_start_28
    sget-object v3, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    if-eqz v3, :cond_4b

    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_26

    monitor-exit v0

    return v4

    :cond_49
    monitor-exit v0

    return v2

    :cond_4b
    monitor-exit v0

    return v2

    :goto_4d
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_26

    throw p0
.end method

.method public static extractROCM()Z
    .registers 1

    const-string v0, "onnxruntime_providers_rocm"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static extractTensorRT()Z
    .registers 1

    const-string v0, "onnxruntime_providers_tensorrt"

    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native getAvailableProviders(J)[Ljava/lang/String;
.end method

.method public static declared-synchronized init()V
    .registers 8

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lai/onnxruntime/OnnxRuntime;->loaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_6b

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_1a

    :cond_12
    const-string v1, "onnxruntime-java"

    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v1

    :goto_1a
    sput-object v1, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_6b

    :try_start_1c
    const-string v1, "onnxruntime.native.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const-string v1, "onnxruntime_providers_shared"

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    const-string v1, "onnxruntime"

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->load(Ljava/lang/String;)V

    const-string v1, "onnxruntime4j_jni"

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->load(Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->initialiseAPIBase(I)J

    move-result-wide v3

    sput-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_71

    invoke-static {v3, v4, v1}, Lai/onnxruntime/OnnxRuntime;->initialiseTrainingAPIBase(JI)J

    move-result-wide v3

    sput-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    if-eqz v1, :cond_4d

    move v2, v3

    :cond_4d
    sput-boolean v2, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v1, v2}, Lai/onnxruntime/OnnxRuntime;->initialiseProviders(J)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->providers:Ljava/util/EnumSet;

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->initialiseVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->version:Ljava/lang/String;

    sput-boolean v3, Lai/onnxruntime/OnnxRuntime;->loaded:Z
    :try_end_5f
    .catchall {:try_start_1c .. :try_end_5f} :catchall_6f

    :try_start_5f
    sget-object v1, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    if-eqz v1, :cond_6d

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6b

    goto :goto_6d

    :catchall_6b
    move-exception v1

    goto :goto_85

    :cond_6d
    :goto_6d
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception v1

    goto :goto_79

    :cond_71
    :try_start_71
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There is a mismatch between the ORT class files and the ORT native library, and the native library could not be loaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_6f

    :goto_79
    :try_start_79
    sget-object v2, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    if-eqz v2, :cond_84

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    :cond_84
    throw v1

    :goto_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_6b

    throw v1
.end method

.method private static initOsArch()Ljava/lang/String;
    .registers 5

    const-string v0, "os.name"

    const-string v1, "generic"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string v3, "darwin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_48

    :cond_1f
    const-string v3, "win"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_4a

    :cond_28
    const-string v3, "nux"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "linux"

    goto :goto_4a

    :cond_33
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "android"

    goto :goto_4a

    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported os:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    :goto_48
    const-string v3, "osx"

    :goto_4a
    const-string v0, "os.arch"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_94

    :cond_65
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    :goto_6d
    move-object v0, v1

    goto :goto_96

    :cond_6f
    const-string v1, "aarch64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_6d

    :cond_78
    const-string v1, "ppc64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    goto :goto_6d

    :cond_81
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_88

    goto :goto_96

    :cond_88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported arch:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_94
    :goto_94
    const-string v0, "x64"

    :goto_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native initialiseAPIBase(I)J
.end method

.method private static initialiseProviders(J)Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lai/onnxruntime/OnnxRuntime;->getAvailableProviders(J)[Ljava/lang/String;

    move-result-object p0

    const-class p1, Lai/onnxruntime/OrtProvider;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    invoke-static {v2}, Lai/onnxruntime/OrtProvider;->mapFromName(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-object p1
.end method

.method private static native initialiseTrainingAPIBase(JI)J
.end method

.method private static native initialiseVersion()Ljava/lang/String;
.end method

.method public static isAndroid()Z
    .registers 2

    const-string v0, "java.vendor"

    const-string v1, "generic"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Android Project"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static load(Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "onnxruntime4j_jni"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onnxruntime.native."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".skip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping load of native library \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_4a
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const-string v3, "\' from specified path"

    const-string v4, "\' not found at "

    const-string v5, "Native library \'"

    const-string v6, "\' from specified path: "

    const-string v7, "Attempting to load native library \'"

    const-string v8, "Loaded native library \'"

    if-eqz v2, :cond_bf

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v6, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_a7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12c

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_114

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_114
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12c
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->extractFromResources(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15c

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' from resource path"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_189

    :cond_15c
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from library path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_189
    return-void
.end method

.method private static mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jnilib"

    const-string v1, "dylib"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static version()Ljava/lang/String;
    .registers 1

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->version:Ljava/lang/String;

    return-object v0
.end method
