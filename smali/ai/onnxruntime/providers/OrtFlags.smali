.class public interface abstract Lai/onnxruntime/providers/OrtFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aggregateToInt(Ljava/util/EnumSet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lai/onnxruntime/providers/OrtFlags;",
            ">(",
            "Ljava/util/EnumSet<",
            "TE;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/providers/OrtFlags;

    invoke-interface {v1}, Lai/onnxruntime/providers/OrtFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_17
    return v0
.end method


# virtual methods
.method public abstract getValue()I
.end method
