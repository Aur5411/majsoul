.class public final synthetic Lq/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lq/c4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq/L2;)V
    .registers 2

    .line 2
    const/4 p1, 0x2

    iput p1, p0, Lq/c4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()J
    .registers 3

    iget v0, p0, Lq/c4;->a:I

    packed-switch v0, :pswitch_data_10

    invoke-static {}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->b()J

    move-result-wide v0

    return-wide v0

    :pswitch_a  #0x0
    invoke-static {}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->b()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method
