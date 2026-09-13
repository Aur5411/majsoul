.class public final synthetic Lq/E3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lq/E3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 p1, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x4

    iget v1, p0, Lq/E3;->a:I

    packed-switch v1, :pswitch_data_12

    if-ne p2, v0, :cond_b

    move p1, p3

    :cond_b
    return p1

    :pswitch_c  #0x0
    sget-boolean v1, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    if-ne p2, v0, :cond_11

    move p1, p3

    :cond_11
    return p1

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c  #00000000
    .end packed-switch
.end method
