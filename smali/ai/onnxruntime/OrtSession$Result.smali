.class public Lai/onnxruntime/OrtSession$Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lai/onnxruntime/OnnxValue;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private closed:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lai/onnxruntime/OnnxValue;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OnnxValue;",
            ">;"
        }
    .end annotation
.end field

.field private final ownedByResult:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lai/onnxruntime/OrtSession$Result;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtSession$Result;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lai/onnxruntime/OnnxValue;[Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_38

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_38

    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, p1

    invoke-static {v1}, Lai/onnxruntime/OrtUtil;->capacityFromSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lai/onnxruntime/OrtSession$Result;->map:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lai/onnxruntime/OrtSession$Result;->list:Ljava/util/List;

    iput-object p3, p0, Lai/onnxruntime/OrtSession$Result;->ownedByResult:[Z

    const/4 p3, 0x0

    move v0, p3

    :goto_26
    array-length v1, p1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lai/onnxruntime/OrtSession$Result;->map:Ljava/util/Map;

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_35
    iput-boolean p3, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    return-void

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected same number of names, values and ownedByResult, found names.length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", values.length = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ownedByResult.length = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lai/onnxruntime/OrtSession$Result;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lai/onnxruntime/OrtSession$Result;->ownedByResult:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_21

    iget-object v1, p0, Lai/onnxruntime/OrtSession$Result;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/OnnxValue;

    invoke-interface {v1}, Lai/onnxruntime/OnnxValue;->close()V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    sget-object v0, Lai/onnxruntime/OrtSession$Result;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed Result"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public get(I)Lai/onnxruntime/OnnxValue;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lai/onnxruntime/OrtSession$Result;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lai/onnxruntime/OnnxValue;

    return-object p1

    .line 3
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Result is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lai/onnxruntime/OnnxValue;",
            ">;"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lai/onnxruntime/OrtSession$Result;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lai/onnxruntime/OnnxValue;

    if-eqz p1, :cond_13

    .line 6
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 7
    :cond_13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 8
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Result is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isResultOwner(I)Z
    .registers 3

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lai/onnxruntime/OrtSession$Result;->ownedByResult:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Result is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OnnxValue;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$Result;->closed:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lai/onnxruntime/OrtSession$Result;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lai/onnxruntime/OrtSession$Result;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
