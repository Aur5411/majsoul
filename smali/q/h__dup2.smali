.class public Lq/h;
.super Lq/i;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lq/h;->d:I

    .line 2
    const-string v0, "IMPLEMENTATION_ONLY_FEATURE"

    invoke-direct {p0, v0, p1}, Lq/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput p2, p0, Lq/h;->d:I

    invoke-direct {p0, p1, p3}, Lq/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget v0, p0, Lq/h;->d:I

    packed-switch v0, :pswitch_data_2e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :pswitch_f  #0x6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    :pswitch_19  #0x5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    :pswitch_23  #0x4
    const/4 v0, 0x1

    return v0

    :pswitch_25  #0x3
    const/4 v0, 0x0

    return v0

    :pswitch_27  #0x2
    const/4 v0, 0x0

    return v0

    :pswitch_29  #0x1
    const/4 v0, 0x1

    return v0

    :pswitch_2b  #0x0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_29  #00000001
        :pswitch_27  #00000002
        :pswitch_25  #00000003
        :pswitch_23  #00000004
        :pswitch_19  #00000005
        :pswitch_f  #00000006
    .end packed-switch
.end method
