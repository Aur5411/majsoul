.class final Lcom/qiuhui/mahjong/SkinUpdateConfirmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final activity:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method constructor <init>(Lcom/qiuhui/mahjong/MainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiuhui/mahjong/SkinUpdateConfirmListener;->activity:Lcom/qiuhui/mahjong/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    new-instance p1, Lq/C3;

    iget-object p2, p0, Lcom/qiuhui/mahjong/SkinUpdateConfirmListener;->activity:Lcom/qiuhui/mahjong/MainActivity;

    const/4 p0, 0x4

    invoke-direct {p1, p2, p0}, Lq/C3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lq/C3;->onClick(Landroid/view/View;)V

    return-void
.end method
