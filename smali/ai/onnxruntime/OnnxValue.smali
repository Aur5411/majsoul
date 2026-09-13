.class public interface abstract Lai/onnxruntime/OnnxValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OnnxValue$OnnxValueType;
    }
.end annotation


# direct methods
.method public static close(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OnnxValue;

    .line 2
    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->close()V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static close(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OnnxValue;

    .line 4
    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->close()V

    goto :goto_8

    :cond_18
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInfo()Lai/onnxruntime/ValueInfo;
.end method

.method public abstract getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract isClosed()Z
.end method
