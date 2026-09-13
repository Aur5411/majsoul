.class public final synthetic Lq/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lq/p3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lq/p3;->a:I

    packed-switch v1, :pswitch_data_30

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    return-object p1

    :pswitch_b  #0x3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_12  #0x2
    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_1a  #0x1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :pswitch_25  #0x0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_1a  #00000001
        :pswitch_12  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method
