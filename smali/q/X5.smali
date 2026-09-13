.class public final synthetic Lq/X5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lq/X5;->a:I

    iput-object p2, p0, Lq/X5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lq/X5;->a:I

    packed-switch v0, :pswitch_data_7a

    check-cast p1, Ljava/util/function/BiConsumer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lq/X5;->b:Ljava/lang/Object;

    check-cast v1, Lq/Z5;

    iget-object v1, v1, Lq/Z5;->a:Lq/T5;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_16  #0x1
    check-cast p1, Ljava/util/function/Consumer;

    new-instance v0, Lq/c6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, v0, Lq/c6;->a:Ljava/lang/Integer;

    if-nez p1, :cond_2c

    new-instance p1, Lq/b6;

    iget-object v0, v0, Lq/c6;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_33

    :cond_2c
    new-instance p1, Lq/b6;

    iget-object v0, v0, Lq/c6;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lq/l2;

    iget-object v2, p0, Lq/X5;->b:Ljava/lang/Object;

    check-cast v2, Lq/L2;

    const/4 v3, 0x6

    invoke-direct {v1, v2, p1, v3}, Lq/l2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4a  #0x0
    check-cast p1, Ljava/util/function/Consumer;

    new-instance v0, Lq/d6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/d6;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/d6;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lq/l2;

    iget-object v2, p0, Lq/X5;->b:Ljava/lang/Object;

    check-cast v2, Lq/L2;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v0, v3}, Lq/l2;-><init>(Ljava/lang/Object;Lq/a6;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_16  #00000001
    .end packed-switch
.end method
