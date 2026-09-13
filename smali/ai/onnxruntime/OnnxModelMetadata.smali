.class public final Lai/onnxruntime/OnnxModelMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final customMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final domain:Ljava/lang/String;

.field private final graphDescription:Ljava/lang/String;

.field private final graphName:Ljava/lang/String;

.field private final producerName:Ljava/lang/String;

.field private final version:J


# direct methods
.method public constructor <init>(Lai/onnxruntime/OnnxModelMetadata;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    .line 29
    iget-wide v0, p1, Lai/onnxruntime/OnnxModelMetadata;->version:J

    iput-wide v0, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    .line 30
    iget-object p1, p1, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_31

    .line 32
    :cond_28
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lai/onnxruntime/OnnxModelMetadata;->getCustomMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_31
    iput-object p1, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    if-nez p2, :cond_d

    move-object p2, v0

    .line 17
    :cond_d
    iput-object p2, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    if-nez p3, :cond_12

    move-object p3, v0

    .line 18
    :cond_12
    iput-object p3, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    if-nez p4, :cond_17

    move-object p4, v0

    .line 19
    :cond_17
    iput-object p4, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    if-nez p5, :cond_1c

    move-object p5, v0

    .line 20
    :cond_1c
    iput-object p5, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    .line 21
    iput-wide p6, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    if-nez p8, :cond_26

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p8

    :cond_26
    iput-object p8, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    if-nez p2, :cond_d

    move-object p2, v0

    .line 3
    :cond_d
    iput-object p2, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    if-nez p3, :cond_12

    move-object p3, v0

    .line 4
    :cond_12
    iput-object p3, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    if-nez p4, :cond_17

    move-object p4, v0

    .line 5
    :cond_17
    iput-object p4, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    if-nez p5, :cond_1c

    move-object p5, v0

    .line 6
    :cond_1c
    iput-object p5, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    if-eqz p8, :cond_4c

    .line 8
    array-length p1, p8

    if-lez p1, :cond_4c

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    .line 10
    array-length p1, p8

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_44

    const/4 p1, 0x0

    .line 11
    :goto_33
    array-length p2, p8

    if-ge p1, p2, :cond_52

    .line 12
    iget-object p2, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    aget-object p3, p8, p1

    add-int/lit8 p4, p1, 0x1

    aget-object p4, p8, p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    goto :goto_33

    .line 13
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Asked for keys and values, but received an odd number of elements."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    :cond_52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lai/onnxruntime/OnnxModelMetadata;

    if-eq v3, v2, :cond_10

    goto :goto_59

    :cond_10
    check-cast p1, Lai/onnxruntime/OnnxModelMetadata;

    iget-wide v2, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    iget-wide v4, p1, Lai/onnxruntime/OnnxModelMetadata;->version:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_57

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    iget-object v3, p1, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    iget-object v3, p1, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    iget-object v3, p1, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    iget-object v3, p1, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    iget-object v3, p1, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    iget-object p1, p1, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    move v0, v1

    :goto_58
    return v0

    :cond_59
    :goto_59
    return v1
.end method

.method public getCustomMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomMetadataValue(Ljava/lang/String;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    return-object v0
.end method

.method public getProducerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    iget-wide v0, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    iget-object v0, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    iget-object v2, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    iget-object v3, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    iget-object v4, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    iget-wide v5, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnnxModelMetadata{producerName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->producerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', graphName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->graphName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', graphDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->graphDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', domain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lai/onnxruntime/OnnxModelMetadata;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", customMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lai/onnxruntime/OnnxModelMetadata;->customMetadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
