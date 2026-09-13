.class public Lcom/qiuhui/mahjong/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lq/o;
.implements Lq/M2;


# static fields
.field public static volatile r:Z


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Switch;

.field public e:Landroid/widget/Switch;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/app/AlertDialog;

.field public i:Landroid/widget/ProgressBar;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Z

.field public m:Z

.field public n:Lq/v;

.field public o:Z

.field public final p:Lq/A3;

.field public final q:Lq/j4;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lq/A3;

    invoke-direct {v0, p0}, Lq/A3;-><init>(Lcom/qiuhui/mahjong/MainActivity;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->p:Lq/A3;

    new-instance v0, Lq/j4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq/j4;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->q:Lq/j4;

    return-void
.end method

.method public static g(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V
    .registers 4

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_e

    const-string p0, "收起 ▲"

    goto :goto_10

    :cond_e
    const-string p0, "展开 ▼"

    :goto_10
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_18

    const-string p0, "收起配置"

    goto :goto_1a

    :cond_18
    const-string p0, "展开配置"

    :goto_1a
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Lq/G3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .registers 3

    new-instance v0, Lq/G3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Landroid/widget/LinearLayout;
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41900000  # 18.0f

    invoke-static {p0, v1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41800000  # 16.0f

    invoke-static {p0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41880000  # 17.0f

    invoke-static {p0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0xe8

    const/16 v2, 0xe4

    const/16 v3, 0xe1

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/high16 v2, 0x41b00000  # 22.0f

    const/4 v3, -0x1

    invoke-static {v3, v1, v2, p0}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    return-object v0
.end method

.method public final d()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {p0, v1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public final e()V
    .registers 3

    sget-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.qiuhui.mahjong.action.APP_VISIBILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public final f()V
    .registers 9

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->b:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "overlay"

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "overlay_enabled"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    iget-object v5, p0, Lcom/qiuhui/mahjong/MainActivity;->b:Landroid/widget/TextView;

    if-nez v0, :cond_25

    const-string v6, "需要悬浮窗权限"

    goto :goto_2c

    :cond_25
    if-eqz v4, :cond_2a

    const-string v6, "已开启"

    goto :goto_2c

    :cond_2a
    const-string v6, "已关闭"

    :goto_2c
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/qiuhui/mahjong/MainActivity;->b:Landroid/widget/TextView;

    if-nez v0, :cond_36

    sget v0, Lq/Q4;->c:I

    goto :goto_3d

    :cond_36
    if-eqz v4, :cond_3b

    sget v0, Lq/Q4;->b:I

    goto :goto_3d

    :cond_3b
    sget v0, Lq/Q4;->d:I

    :goto_3d
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_47

    const-string v5, "关闭"

    goto :goto_49

    :cond_47
    const-string v5, "开启"

    :goto_49
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_5b

    const/16 v5, 0xe6

    const/16 v6, 0xf4

    const/16 v7, 0xe8

    invoke-static {v6, v7, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    goto :goto_5d

    :cond_5b
    sget v5, Lq/Q4;->b:I

    :goto_5d
    const/high16 v6, 0x41600000  # 14.0f

    invoke-static {v5, v6, p0}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_6d

    sget v4, Lq/Q4;->e:I

    goto :goto_6e

    :cond_6d
    const/4 v4, -0x1

    :goto_6e
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->d:Landroid/widget/Switch;

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "cat_recommendation_enabled"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v0, v4, :cond_92

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->d:Landroid/widget/Switch;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_92
    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "full_skin_enabled"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_bb

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_bb
    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->n:Lq/v;

    sget v1, Lq/r;->c:I

    invoke-static {v1}, Lq/I1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lq/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->f:Landroid/widget/TextView;

    if-eqz p4, :cond_e

    sget v0, Lq/Q4;->c:I

    goto :goto_10

    :cond_e
    sget v0, Lq/Q4;->d:I

    :goto_10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_56

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    if-eqz p3, :cond_26

    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_29

    :cond_26
    const p2, 0x3f0ccccd  # 0.55f

    :goto_29
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    if-eqz p4, :cond_32

    const/4 p2, -0x1

    goto :goto_34

    :cond_32
    sget p2, Lq/Q4;->a:I

    :goto_34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    if-eqz p4, :cond_46

    const/16 p2, 0x16

    const/16 p3, 0x14

    const/16 p4, 0x18

    :goto_41
    invoke-static {p3, p4, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    goto :goto_4d

    :cond_46
    const/16 p2, 0xed

    const/16 p3, 0xeb

    const/16 p4, 0xef

    goto :goto_41

    :goto_4d
    const/high16 p3, 0x41400000  # 12.0f

    invoke-static {p2, p3, p0}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_56
    return-void
.end method

.method public final i(Lq/A4;Z)V
    .registers 7

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_65

    :cond_b
    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget v2, p1, Lq/A4;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :cond_15
    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    iget-object v0, p1, Lq/A4;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    iget-object v3, p1, Lq/A4;->d:Ljava/lang/String;

    if-eqz v2, :cond_24

    goto :goto_38

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_38
    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->j:Landroid/widget/TextView;

    const/16 v2, 0x9

    iget p1, p1, Lq/A4;->a:I

    if-ne p1, v2, :cond_48

    sget p1, Lq/Q4;->e:I

    goto :goto_4a

    :cond_48
    sget p1, Lq/Q4;->d:I

    :goto_4a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4d
    if-eqz p2, :cond_5c

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_5c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5c
    if-eqz p2, :cond_65

    iget-object p1, p0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    if-eqz p1, :cond_65

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_65
    :goto_65
    return-void
.end method

.method public final j(Landroid/view/View;I)V
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float p2, p2

    invoke-static {p0, p2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static/range {p0 .. p0}, Lq/k3;->n(Landroid/app/Activity;)V

    invoke-static/range {p0 .. p0}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x2010

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static/range {p0 .. p0}, Lq/y;->d(Landroid/app/Activity;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/16 v4, 0xf7

    const/16 v5, 0xf9

    const/16 v6, 0xf8

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41900000  # 18.0f

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x42000000  # 32.0f

    invoke-static {v0, v8}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance v1, Lq/v;

    invoke-direct {v1, v0}, Lq/v;-><init>(Lcom/qiuhui/mahjong/MainActivity;)V

    iput-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->n:Lq/v;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x434c0000  # 204.0f

    invoke-static {v0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41600000  # 14.0f

    invoke-static {v0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/qiuhui/mahjong/MainActivity;->n:Lq/v;

    invoke-virtual {v5, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v8, Lq/Q4;->a:I

    const-string v9, "授权"

    const/high16 v10, 0x41800000  # 16.0f

    invoke-static {v0, v9, v10, v8, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v9, "已授权（永久）"

    goto :goto_c1

    :goto_c1
    sget v11, Lq/Q4;->d:I

    const/high16 v12, 0x41500000  # 13.0f

    const/4 v13, 0x0

    invoke-static {v0, v9, v12, v11, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    const v14, 0x800015

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-direct {v15, v13, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v5, 0xf

    const/16 v9, 0x17

    const/16 v15, 0x2a

    invoke-static {v5, v9, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const-string v9, "续费"

    invoke-static {v0, v9, v5, v2}, Lq/Q4;->d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    new-instance v9, Lq/C3;

    const/4 v15, 0x2

    invoke-direct {v9, v0, v15}, Lq/C3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v9, 0xc

    invoke-virtual {v0, v5, v9}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v9, Lq/Q4;->b:I

    const-string v15, "网页端"

    const/high16 v12, 0x41400000  # 12.0f

    invoke-static {v0, v15, v12, v9, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v15

    const v6, 0x3d75c28f  # 0.06f

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v15, "雀魂"

    const/high16 v10, 0x41980000  # 19.0f

    invoke-static {v0, v15, v10, v8, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    invoke-static {v0, v12}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v10, v15, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "进入游戏"

    invoke-static {v0, v5, v9, v2}, Lq/Q4;->d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    new-instance v10, Lq/C3;

    const/4 v15, 0x3

    invoke-direct {v10, v0, v15}, Lq/C3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v10, 0xe

    invoke-virtual {v0, v5, v10}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v10, "悬浮窗"

    invoke-static {v0, v10, v12, v9, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v6, ""

    invoke-static {v0, v6, v4, v8, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lcom/qiuhui/mahjong/MainActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, v0, Lcom/qiuhui/mahjong/MainActivity;->b:Landroid/widget/TextView;

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v14, -0x2

    invoke-direct {v15, v13, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "开启"

    invoke-static {v0, v5, v9, v2}, Lq/Q4;->d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->c:Landroid/widget/TextView;

    new-instance v10, Lq/C3;

    const/4 v12, 0x5

    invoke-direct {v10, v0, v12}, Lq/C3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->c:Landroid/widget/TextView;

    const/16 v10, 0xd

    invoke-virtual {v0, v5, v10}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v10, 0x41500000  # 13.0f

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    const/high16 v10, 0x41000000  # 8.0f

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x41200000  # 10.0f

    invoke-static {v0, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v12, v14, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0xfa

    const/16 v7, 0xfc

    const/16 v12, 0xfb

    invoke-static {v2, v7, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    const/16 v2, 0xda

    const/16 v7, 0xe4

    const/16 v12, 0xdf

    invoke-static {v2, v7, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    const/high16 v2, 0x41700000  # 15.0f

    invoke-static {v14, v15, v2, v0}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v14, "小猫推荐"

    invoke-static {v0, v14, v4, v8, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v15

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v4, v13, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/qiuhui/mahjong/MainActivity;->d:Landroid/widget/Switch;

    invoke-virtual {v2, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/MainActivity;->d:Landroid/widget/Switch;

    const-string v4, "overlay"

    invoke-virtual {v0, v4, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v14, "cat_recommendation_enabled"

    invoke-interface {v7, v14, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/MainActivity;->d:Landroid/widget/Switch;

    new-instance v7, Lq/B3;

    const/4 v14, 0x1

    invoke-direct {v7, v0, v14}, Lq/B3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/MainActivity;->d:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v2}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41500000  # 13.0f

    invoke-static {v0, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    const/high16 v15, 0x41200000  # 10.0f

    invoke-static {v0, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v14, v7, v2, v10}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0xfa

    const/16 v7, 0xfc

    const/16 v10, 0xfb

    invoke-static {v2, v7, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v7, 0xda

    const/16 v10, 0xe4

    invoke-static {v7, v10, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/high16 v10, 0x41700000  # 15.0f

    invoke-static {v2, v7, v10, v0}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v7, "全皮肤"

    const/high16 v10, 0x41600000  # 14.0f

    invoke-static {v0, v7, v10, v8, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000  # 1.0f

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/Switch;

    invoke-direct {v10, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v10, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v4, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v10, "full_skin_enabled"

    invoke-interface {v4, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    new-instance v7, Lq/B3;

    const/4 v10, 0x0

    invoke-direct {v7, v0, v10}, Lq/B3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v4, "正在检查更新"

    const/high16 v7, 0x41300000  # 11.0f

    invoke-static {v0, v4, v7, v11, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->f:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v10, v13, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xef

    const/16 v10, 0xed

    const/16 v12, 0xeb

    invoke-static {v12, v4, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const-string v10, "检查"

    invoke-static {v0, v10, v4, v8}, Lq/Q4;->d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    const/high16 v10, 0x41400000  # 12.0f

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    const/high16 v14, 0x40e00000  # 7.0f

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v4, v12, v15, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    new-instance v7, Lq/C3;

    const/4 v10, 0x0

    invoke-direct {v7, v0, v10}, Lq/C3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x40a00000  # 5.0f

    invoke-static {v0, v12}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, ""

    const/high16 v4, 0x41200000  # 10.0f

    invoke-static {v0, v2, v4, v11, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x40400000  # 3.0f

    invoke-static {v0, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v2}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "开启/关闭悬浮窗不影响小猫推荐"

    const/high16 v4, 0x41400000  # 12.0f

    invoke-static {v0, v2, v4, v11, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x9

    invoke-virtual {v0, v2, v4}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->addToHome(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->c()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v5, "自动打牌配置"

    const/high16 v7, 0x41800000  # 16.0f

    invoke-static {v0, v5, v7, v8, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-direct {v7, v13, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x41400000  # 12.0f

    invoke-static {v0, v6, v5, v9, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    const v10, 0x800015

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    const/high16 v5, 0x40800000  # 4.0f

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v7, v10, v12, v13, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v10, "automation"

    invoke-virtual {v0, v10, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v12, "moral"

    const/4 v14, 0x6

    invoke-interface {v10, v12, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Moral "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/high16 v14, 0x41500000  # 13.0f

    invoke-static {v0, v12, v14, v9, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    const/16 v14, 0xa

    invoke-virtual {v0, v12, v14}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/widget/SeekBar;

    invoke-direct {v15, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v14}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v15, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lq/I3;

    invoke-direct {v10, v0, v12}, Lq/I3;-><init>(Lcom/qiuhui/mahjong/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v15, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static/range {p0 .. p0}, Lq/y;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v12, "discard_delay_min_ms"

    const/16 v14, 0x258

    invoke-interface {v10, v12, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lq/y;->j(I)I

    move-result v10

    invoke-static/range {p0 .. p0}, Lq/y;->p(Landroid/app/Activity;)I

    move-result v12

    invoke-static {v10, v12}, Lq/y;->o(II)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, 0x41500000  # 13.0f

    invoke-static {v0, v14, v15, v9, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    const/16 v14, 0x8

    invoke-virtual {v0, v9, v14}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v15, "最短"

    const/high16 v14, 0x41400000  # 12.0f

    invoke-static {v0, v15, v14, v11, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v15

    const/4 v14, 0x4

    invoke-virtual {v0, v15, v14}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/SeekBar;

    invoke-direct {v14, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-static {v10}, Lq/y;->j(I)I

    move-result v10

    add-int/lit16 v10, v10, -0x12c

    div-int/lit8 v10, v10, 0x64

    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v10, "最长"

    const/high16 v3, 0x41400000  # 12.0f

    invoke-static {v0, v10, v3, v11, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v15}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-static {v12}, Lq/y;->j(I)I

    move-result v10

    add-int/lit16 v10, v10, -0x12c

    div-int/lit8 v10, v10, 0x64

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lq/J3;

    invoke-direct {v10, v0, v14, v3, v9}, Lq/J3;-><init>(Lcom/qiuhui/mahjong/MainActivity;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v14, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v3, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "home_layout"

    invoke-virtual {v0, v3, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v9, "automation_settings_expanded"

    invoke-interface {v3, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v5, v7, v3}, Lcom/qiuhui/mahjong/MainActivity;->g(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V

    new-instance v3, Lq/D3;

    invoke-direct {v3, v0, v5, v7}, Lq/D3;-><init>(Lcom/qiuhui/mahjong/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->c()Landroid/widget/LinearLayout;

    move-result-object v2

    const-string v3, "使用须知"

    const/4 v4, 0x1

    const/high16 v5, 0x41700000  # 15.0f

    invoke-static {v0, v3, v5, v8, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v3, 0x65

    const/16 v4, 0x60

    const/16 v5, 0x5b

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/high16 v4, 0x41300000  # 11.0f

    invoke-static {v0, v6, v4, v3, v13}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lq/y;->z()Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v4, 0x800003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/MainActivity;->f()V

    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lq/G3;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    const-wide/16 v3, 0x708

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_4f8

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4f8

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4f8
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lq/H3;

    invoke-direct {v2, v0}, Lq/H3;-><init>(Lcom/qiuhui/mahjong/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public final onPause()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/MainActivity;->e()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/MainActivity;->e()V

    invoke-static {p0}, Lq/y;->d(Landroid/app/Activity;)V

    invoke-static {p0}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_20
    :try_start_20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.qiuhui.mahjong.action.RESTORE_OVERLAY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-boolean v1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    if-nez v1, :cond_35

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_38

    :cond_35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_38
    iget-object v0, p0, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_47

    new-instance v1, Lq/G3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    invoke-virtual {p0}, Lcom/qiuhui/mahjong/MainActivity;->f()V

    return-void
.end method

.method public final onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/qiuhui/mahjong/MainActivity;->o:Z

    if-nez v0, :cond_1b

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    const-string v0, "overlay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/qiuhui/mahjong/MainActivity;->q:Lq/j4;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qiuhui/mahjong/MainActivity;->o:Z

    :cond_1b
    return-void
.end method

.method public final onStop()V
    .registers 4

    iget-boolean v0, p0, Lcom/qiuhui/mahjong/MainActivity;->o:Z

    if-eqz v0, :cond_17

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "overlay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/qiuhui/mahjong/MainActivity;->q:Lq/j4;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput-boolean v1, p0, Lcom/qiuhui/mahjong/MainActivity;->o:Z

    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 3

    sget-object v0, Lq/U5;->a:Landroid/os/Handler;

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method
