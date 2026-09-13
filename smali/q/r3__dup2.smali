.class public final synthetic Lq/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lq/r3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq/L2;)V
    .registers 2

    .line 2
    const/4 p1, 0x1

    iput p1, p0, Lq/r3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lq/r3;->a:I

    packed-switch v0, :pswitch_data_1c

    :try_start_5
    const-string v0, "game.maj-soul.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    sget-object v0, Lq/U5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_11
    return-void

    :pswitch_12  #0x1
    new-instance v0, Lq/N5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lq/L2;->a(Ljava/lang/Object;)V

    :pswitch_1a  #0x0
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_12  #00000001
    .end packed-switch
.end method
