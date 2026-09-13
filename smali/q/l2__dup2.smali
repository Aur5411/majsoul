.class public final synthetic Lq/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lq/l2;->a:I

    iput-object p2, p0, Lq/l2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .registers 4

    .line 2
    iput p3, p0, Lq/l2;->a:I

    iput-object p1, p0, Lq/l2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lq/a6;I)V
    .registers 4

    .line 3
    iput p3, p0, Lq/l2;->a:I

    iput-object p2, p0, Lq/l2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, v0, Lq/l2;->a:I

    packed-switch v4, :pswitch_data_396

    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Lq/d6;

    invoke-static {v1}, Lq/L2;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_12  #0x7
    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Lq/Y5;

    invoke-static {v1}, Lq/L2;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_1a  #0x6
    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Lq/L2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lq/U5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :pswitch_27  #0x5
    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Lq/L5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/qiuhui/mahjong/WebGameActivity;

    iget-object v1, v1, Lq/L5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_46  #0x4
    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lq/k3;->f(Landroid/view/View;)V

    return-void

    :pswitch_4e  #0x3
    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    return-void

    :pswitch_56  #0x2
    iget-object v2, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v2, Lq/z3;

    :try_start_5a
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4}, Ljava/net/ServerSocket;-><init>()V

    iput-object v4, v2, Lq/z3;->d:Ljava/net/ServerSocket;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x223d

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    :goto_70
    iget-boolean v4, v2, Lq/z3;->c:Z

    if-eqz v4, :cond_87

    iget-object v4, v2, Lq/z3;->d:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iget-object v5, v2, Lq/z3;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lq/m2;

    invoke-direct {v6, v2, v4, v1}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_84} :catch_85

    goto :goto_70

    :catch_85
    iput-boolean v3, v2, Lq/z3;->c:Z

    :cond_87
    return-void

    :pswitch_88  #0x1
    iget-object v4, v0, Lq/l2;->b:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/qiuhui/mahjong/LicenseActivity;

    iget-boolean v4, v5, Lcom/qiuhui/mahjong/LicenseActivity;->i:Z

    if-nez v4, :cond_387

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_99

    goto/16 :goto_387

    :cond_99
    iput-boolean v2, v5, Lcom/qiuhui/mahjong/LicenseActivity;->i:Z

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "renew"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c1

    invoke-static {v5}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qiuhui/mahjong/MainActivity;

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_387

    :cond_c1
    invoke-static {v5}, Lq/V3;->c(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x2010

    invoke-virtual {v6, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {v5}, Lq/y;->d(Landroid/app/Activity;)V

    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/16 v8, 0xf8

    const/16 v9, 0xf7

    const/16 v10, 0xf9

    invoke-static {v9, v10, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v10, 0x41c00000  # 24.0f

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41e00000  # 28.0f

    invoke-static {v5, v12}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v5, v12}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v8, v11, v13, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x41d00000  # 26.0f

    invoke-static {v5, v13}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    const/16 v12, 0xe4

    const/16 v13, 0xe1

    const/16 v14, 0xe8

    invoke-static {v13, v14, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-static {v7, v12, v10, v5}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v11, v10}, Landroid/view/View;->setElevation(F)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v10, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v8, Lq/Q4;->b:I

    const-string v10, "‹  返回"

    const/high16 v13, 0x41600000  # 14.0f

    invoke-static {v5, v10, v13, v8, v2}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    const/high16 v10, 0x41500000  # 13.0f

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x41000000  # 8.0f

    invoke-static {v5, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v5, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v9, v14, v1, v2, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    const/16 v2, 0xd4

    const/16 v9, 0xcd

    const/16 v14, 0xdc

    invoke-static {v9, v14, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v7, v2, v13, v5}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    new-instance v9, Lq/e3;

    invoke-direct {v9, v5, v3}, Lq/e3;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41800000  # 16.0f

    invoke-static {v5, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v14, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v11, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "雀魂麻将"

    const/4 v14, 0x1

    invoke-static {v5, v1, v10, v8, v14}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const v15, 0x3da3d70a  # 0.08f

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v1, Lq/Q4;->a:I

    const-string v15, "激活授权"

    const/high16 v13, 0x41c80000  # 25.0f

    invoke-static {v5, v15, v13, v1, v14}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    iput-object v13, v5, Lcom/qiuhui/mahjong/LicenseActivity;->b:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v15, v2

    invoke-static {v5, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v13, Lq/Q4;->d:I

    const-string v14, "输入十位卡密"

    invoke-static {v5, v14, v10, v13, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->c:Landroid/widget/TextView;

    const/high16 v13, 0x40a00000  # 5.0f

    invoke-static {v5, v13}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x41700000  # 15.0f

    invoke-static {v5, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v10, v3, v13, v3, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    const-string v13, "卡密"

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    const/high16 v13, 0x41880000  # 17.0f

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v10, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    const/16 v10, 0x98

    const/16 v13, 0x96

    const/16 v15, 0x9c

    invoke-static {v13, v15, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    const/16 v10, 0x1001

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0xa

    invoke-direct {v10, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v13, 0x1

    new-array v15, v13, [Landroid/text/InputFilter;

    aput-object v10, v15, v3

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    invoke-static {v5, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    const/high16 v13, 0x41400000  # 12.0f

    invoke-static {v5, v13}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v5, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v5, v13}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v1, v10, v15, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    const/16 v9, 0xfa

    const/16 v10, 0xfb

    invoke-static {v9, v10, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    const/16 v10, 0xdb

    const/16 v13, 0xd8

    const/16 v15, 0xe0

    invoke-static {v13, v15, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    const/high16 v13, 0x41600000  # 14.0f

    invoke-static {v9, v10, v13, v5}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42500000  # 52.0f

    invoke-static {v5, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41b00000  # 22.0f

    invoke-static {v5, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v5, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {v5, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v9, v5, Lcom/qiuhui/mahjong/LicenseActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "激活"

    invoke-static {v5, v1, v8, v7}, Lq/Q4;->d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    new-instance v8, Lq/e3;

    invoke-direct {v8, v5, v2}, Lq/e3;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xf

    int-to-float v9, v8

    invoke-static {v5, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    if-eqz v4, :cond_2f6

    invoke-static {v5}, Lq/j3;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f6

    const/4 v14, 0x1

    goto :goto_2f7

    :cond_2f6
    move v14, v3

    :goto_2f7
    iput-boolean v14, v5, Lcom/qiuhui/mahjong/LicenseActivity;->g:Z

    if-eqz v14, :cond_357

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->b:Landroid/widget/TextView;

    const-string v2, "续费授权"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    const-string v2, "确认续费"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    const/16 v2, 0x17

    const/16 v3, 0x2a

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/high16 v3, 0x41600000  # 14.0f

    invoke-static {v4, v2, v3, v5}, Lq/Q4;->c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v5}, Lq/j3;->e(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_387

    iget-object v3, v5, Lcom/qiuhui/mahjong/LicenseActivity;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "有效期至 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_387

    :cond_357
    invoke-static {v5}, Lq/k;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_369

    const-string v1, "安装包签名校验失败"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    iget-object v1, v5, Lcom/qiuhui/mahjong/LicenseActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_387

    :cond_369
    const/4 v2, 0x1

    invoke-static {v5}, Lq/j3;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_375

    goto :goto_387

    :cond_375
    const-string v1, "正在验证授权"

    invoke-virtual {v5, v1, v2}, Lcom/qiuhui/mahjong/LicenseActivity;->b(Ljava/lang/String;Z)V

    new-instance v10, Lq/d3;

    invoke-direct {v10, v5, v3}, Lq/d3;-><init>(Lcom/qiuhui/mahjong/LicenseActivity;I)V

    const-string v6, "verify"

    const-string v7, ""

    const/4 v9, 0x1

    invoke-static/range {v5 .. v10}, Lq/i3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLq/g3;)V

    :cond_387
    :goto_387
    return-void

    :pswitch_388  #0x0
    iget-object v1, v0, Lq/l2;->b:Ljava/lang/Object;

    check-cast v1, Lq/r2;

    iget-object v2, v1, Lq/r2;->a:Lq/W3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ""

    iput-object v2, v1, Lq/r2;->g:Ljava/lang/String;

    return-void

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_388  #00000000
        :pswitch_88  #00000001
        :pswitch_56  #00000002
        :pswitch_4e  #00000003
        :pswitch_46  #00000004
        :pswitch_27  #00000005
        :pswitch_1a  #00000006
        :pswitch_12  #00000007
    .end packed-switch
.end method
