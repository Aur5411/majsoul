.class public final Lq/Y4;
.super Lq/a5;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .registers 3

    iput p2, p0, Lq/Y4;->b:I

    invoke-direct {p0, p1}, Lq/a5;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;J)B
    .registers 10

    iget v0, p0, Lq/Y4;->b:I

    packed-switch v0, :pswitch_data_4a

    sget-boolean v0, Lq/b5;->f:Z

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-wide/16 v4, -0x4

    if-eqz v0, :cond_1e

    and-long/2addr v4, p2

    sget-object v0, Lq/b5;->b:Lq/a5;

    invoke-virtual {v0, p1, v4, v5}, Lq/a5;->d(Ljava/lang/Object;J)I

    move-result p1

    not-long p2, p2

    :goto_16
    and-long/2addr p2, v2

    shl-long/2addr p2, v1

    long-to-int p2, p2

    ushr-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    goto :goto_26

    :cond_1e
    and-long/2addr v4, p2

    sget-object v0, Lq/b5;->b:Lq/a5;

    invoke-virtual {v0, p1, v4, v5}, Lq/a5;->d(Ljava/lang/Object;J)I

    move-result p1

    goto :goto_16

    :goto_26
    return p1

    :pswitch_27  #0x0
    sget-boolean v0, Lq/b5;->f:Z

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-wide/16 v4, -0x4

    if-eqz v0, :cond_40

    and-long/2addr v4, p2

    sget-object v0, Lq/b5;->b:Lq/a5;

    invoke-virtual {v0, p1, v4, v5}, Lq/a5;->d(Ljava/lang/Object;J)I

    move-result p1

    not-long p2, p2

    :goto_38
    and-long/2addr p2, v2

    shl-long/2addr p2, v1

    long-to-int p2, p2

    ushr-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    goto :goto_48

    :cond_40
    and-long/2addr v4, p2

    sget-object v0, Lq/b5;->b:Lq/a5;

    invoke-virtual {v0, p1, v4, v5}, Lq/a5;->d(Ljava/lang/Object;J)I

    move-result p1

    goto :goto_38

    :goto_48
    return p1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_27  #00000000
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;JB)V
    .registers 6

    iget v0, p0, Lq/Y4;->b:I

    packed-switch v0, :pswitch_data_1e

    sget-boolean v0, Lq/b5;->f:Z

    if-eqz v0, :cond_d

    invoke-static {p1, p2, p3, p4}, Lq/b5;->b(Ljava/lang/Object;JB)V

    goto :goto_10

    :cond_d
    invoke-static {p1, p2, p3, p4}, Lq/b5;->c(Ljava/lang/Object;JB)V

    :goto_10
    return-void

    :pswitch_11  #0x0
    sget-boolean v0, Lq/b5;->f:Z

    if-eqz v0, :cond_19

    invoke-static {p1, p2, p3, p4}, Lq/b5;->b(Ljava/lang/Object;JB)V

    goto :goto_1c

    :cond_19
    invoke-static {p1, p2, p3, p4}, Lq/b5;->c(Ljava/lang/Object;JB)V

    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method

.method public final j()Z
    .registers 2

    iget v0, p0, Lq/Y4;->b:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7  #0x0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method
