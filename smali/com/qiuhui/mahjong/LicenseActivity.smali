.class public Lcom/qiuhui/mahjong/LicenseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ProgressBar;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq/h3;)V
    .registers 6

    iget-object v0, p1, Lq/h3;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iget-wide v2, p1, Lq/h3;->f:J

    :try_start_5
    iget-object p1, p1, Lq/h3;->e:Ljava/lang/String;

    invoke-static {p0, v0, p1, v2, v3}, Lq/j3;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0, v0, v2, v3}, Lq/k3;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-boolean p1, p0, Lcom/qiuhui/mahjong/LicenseActivity;->h:Z

    if-nez p1, :cond_2b

    iput-boolean v1, p0, Lcom/qiuhui/mahjong/LicenseActivity;->h:Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qiuhui/mahjong/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    const-string p1, "无法安全保存授权"

    invoke-virtual {p0, p1, v1}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/qiuhui/mahjong/LicenseActivity;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    move v2, v1

    goto :goto_9

    :cond_7
    const/16 v2, 0x8

    :goto_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_21

    invoke-virtual {p0, p1, v1}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    :cond_21
    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/qiuhui/mahjong/LicenseActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/LicenseActivity;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_c

    sget p2, Lq/Q4;->e:I

    goto :goto_e

    :cond_c
    sget p2, Lq/Q4;->d:I

    :goto_e
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static/range {p0 .. p0}, Lq/k3;->n(Landroid/app/Activity;)V

    new-instance v8, Lq/l2;

    const/4 v0, 0x1

    invoke-direct {v8, v0, v7}, Lq/l2;-><init>(ILjava/lang/Object;)V

    const-string v0, "usage_notice"

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accepted_version"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    invoke-virtual {v8}, Lq/l2;->run()V

    goto/16 :goto_185

    :cond_23
    new-instance v10, Landroid/app/Dialog;

    invoke-direct {v10, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v10, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lq/E3;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lq/E3;-><init>(I)V

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41b00000  # 22.0f

    invoke-static {v7, v0}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41a00000  # 20.0f

    invoke-static {v7, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v7, v0}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    const/high16 v5, 0x41900000  # 18.0f

    invoke-static {v7, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v11, v2, v4, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0xe2

    const/16 v2, 0xe8

    const/16 v4, 0xe4

    invoke-static {v0, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/high16 v2, 0x41c00000  # 24.0f

    const/4 v4, -0x1

    invoke-static {v4, v0, v2, v7}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "使用须知"

    sget v2, Lq/Q4;->a:I

    invoke-static {v7, v0, v3, v2, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x48

    const/16 v2, 0x52

    const/16 v3, 0x4d

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const-string v2, ""

    const/high16 v3, 0x41500000  # 13.0f

    invoke-static {v7, v2, v3, v0, v9}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lq/y;->z()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v7, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v2, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41600000  # 14.0f

    invoke-static {v7, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v7, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "拒绝"

    invoke-static {v7, v2, v9}, Lq/y;->q(Lcom/qiuhui/mahjong/LicenseActivity;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, "同意（10s）"

    invoke-static {v7, v4, v1}, Lq/y;->q(Lcom/qiuhui/mahjong/LicenseActivity;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    const v4, 0x3ed70a3d  # 0.42f

    invoke-virtual {v13, v4}, Landroid/view/View;->setAlpha(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000  # 46.0f

    invoke-static {v7, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v9, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v7, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v9, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v3, 0x41200000  # 10.0f

    invoke-static {v7, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lq/c5;

    const/4 v3, 0x0

    invoke-direct {v0, v10, v7, v3}, Lq/c5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    new-instance v14, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-array v15, v1, [Ljava/lang/Runnable;

    new-instance v16, Lq/d5;

    move-object/from16 v0, v16

    move-wide v1, v2

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lq/d5;-><init>(JLandroid/widget/TextView;Landroid/os/Handler;[Ljava/lang/Runnable;Lcom/qiuhui/mahjong/LicenseActivity;)V

    aput-object v16, v15, v9

    new-instance v0, Lq/e5;

    invoke-direct {v0, v14, v15}, Lq/e5;-><init>(Landroid/os/Handler;[Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lq/f5;

    invoke-direct {v0, v13, v7, v10, v8}, Lq/f5;-><init>(Landroid/widget/TextView;Lcom/qiuhui/mahjong/LicenseActivity;Landroid/app/Dialog;Lq/l2;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_180

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x3ec28f5c  # 0.38f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x41e00000  # 28.0f

    invoke-static {v7, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x44020000  # 520.0f

    invoke-static {v7, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1, v12}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_180
    aget-object v0, v15, v9

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_185
    return-void
.end method

.method public final onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lq/y;->d(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qiuhui/mahjong/LicenseActivity;->h:Z

    return-void
.end method
