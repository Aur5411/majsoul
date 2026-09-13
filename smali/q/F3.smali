.class public final synthetic Lq/F3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/F3;->a:Lcom/qiuhui/mahjong/MainActivity;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lq/F3;->a:Lcom/qiuhui/mahjong/MainActivity;

    iget-object v0, p1, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_16
    return-void
.end method
