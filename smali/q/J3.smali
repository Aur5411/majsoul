.class public final Lq/J3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/SeekBar;

.field public final synthetic b:Landroid/widget/SeekBar;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/MainActivity;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/J3;->d:Lcom/qiuhui/mahjong/MainActivity;

    iput-object p2, p0, Lq/J3;->a:Landroid/widget/SeekBar;

    iput-object p3, p0, Lq/J3;->b:Landroid/widget/SeekBar;

    iput-object p4, p0, Lq/J3;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8

    if-nez p3, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lq/J3;->a:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p3

    const/16 v0, 0x2f

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    mul-int/lit8 p3, p3, 0x64

    add-int/lit16 p3, p3, 0x12c

    iget-object v2, p0, Lq/J3;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    add-int/lit16 v0, v0, 0x12c

    if-ne p1, p2, :cond_37

    if-le p3, v0, :cond_37

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    move v0, p3

    goto :goto_43

    :cond_37
    if-ne p1, v2, :cond_43

    if-ge v0, p3, :cond_43

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    move p3, v0

    :cond_43
    :goto_43
    invoke-static {p3}, Lq/y;->j(I)I

    move-result p1

    invoke-static {v0}, Lq/y;->j(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p0, Lq/J3;->d:Lcom/qiuhui/mahjong/MainActivity;

    invoke-static {v1}, Lq/y;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "discard_delay_min_ms"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "discard_delay_max_ms"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p3, v0}, Lq/y;->o(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lq/J3;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
