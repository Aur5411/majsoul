.class public final synthetic Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:[Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ILandroid/widget/TextView;[Landroid/widget/TextView;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput p2, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$3:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget v1, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;->f$3:[Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->lambda$addToHome$0(Landroid/app/Activity;ILandroid/widget/TextView;[Landroid/widget/TextView;)V

    return-void
.end method
