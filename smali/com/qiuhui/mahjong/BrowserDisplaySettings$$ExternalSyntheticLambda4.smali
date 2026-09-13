.class public final synthetic Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;->f$2:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->lambda$addToHome$4(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
