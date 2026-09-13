.class public final synthetic Lq/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lq/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    iget v0, p0, Lq/j2;->a:I

    packed-switch v0, :pswitch_data_36

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lq/k2;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lq/k2;-><init>(Ljava/lang/Runnable;I)V

    const-string p1, "qiuhui-liqi-decoder"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0

    :pswitch_17  #0x1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "qiuhui-pc-link-control"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0

    :pswitch_23  #0x0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lq/k2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lq/k2;-><init>(Ljava/lang/Runnable;I)V

    const-string p1, "qiuhui-mortal-inference"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_17  #00000001
    .end packed-switch
.end method
