.class public final synthetic Lq/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;I)V
    .registers 3

    iput p2, p0, Lq/X3;->a:I

    iput-object p1, p0, Lq/X3;->b:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x2

    iget-object v5, p0, Lq/X3;->b:Ljava/io/Serializable;

    iget v6, p0, Lq/X3;->a:I

    check-cast p1, Lq/n;

    packed-switch v6, :pswitch_data_3c

    check-cast v5, [Z

    array-length p1, v5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :pswitch_1e  #0x1
    check-cast v5, Lq/n;

    iget p1, v5, Lq/n;->c:I

    int-to-long v5, p1

    new-array p1, v4, [J

    aput-wide v2, p1, v1

    aput-wide v5, p1, v0

    return-object p1

    :pswitch_2a  #0x0
    check-cast v5, Lq/n;

    iget p1, v5, Lq/n;->b:I

    int-to-long v5, p1

    const/4 p1, 0x3

    new-array p1, p1, [J

    aput-wide v2, p1, v1

    aput-wide v5, p1, v0

    const-wide/16 v0, 0x22

    aput-wide v0, p1, v4

    return-object p1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_1e  #00000001
    .end packed-switch
.end method
