.class public final Lcom/qiuhui/mahjong/BrowserDisplaySettings;
.super Ljava/lang/Object;
.source "BrowserDisplaySettings.java"


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x438

.field private static final DEFAULT_RATE:I = 0x5a

.field private static final DEFAULT_WIDTH:I = 0x780

.field private static final HEIGHTS:[I

.field private static final KEY_EXPANDED:Ljava/lang/String; = "home_expanded"

.field private static final KEY_HEIGHT:Ljava/lang/String; = "render_height"

.field private static final KEY_RATE:Ljava/lang/String; = "content_hz"

.field private static final KEY_WIDTH:Ljava/lang/String; = "render_width"

.field private static final PREFS:Ljava/lang/String; = "browser_display"

.field private static final QUALITY_LABELS:[Ljava/lang/String;

.field private static final RATES:[I

.field private static final WIDTHS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xa00

    const/16 v1, 0xf00

    const/16 v2, 0x500

    const/16 v3, 0x780

    .line 29
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    const/16 v0, 0x5a0

    const/16 v1, 0x870

    const/16 v2, 0x2d0

    const/16 v3, 0x438

    .line 30
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->HEIGHTS:[I

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "720P"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1080P"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2K"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4K"

    aput-object v2, v0, v1

    sput-object v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->QUALITY_LABELS:[Ljava/lang/String;

    const/16 v0, 0x5a

    const/16 v1, 0x78

    const/16 v2, 0x1e

    const/16 v3, 0x3c

    .line 32
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->RATES:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOption(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;I)V
    .registers 8

    .line 221
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez p3, :cond_13

    const/high16 p3, 0x40e00000  # 7.0f

    .line 223
    invoke-static {p0, p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 224
    :cond_13
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static addToHome(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_17a

    if-nez v1, :cond_a

    goto/16 :goto_17a

    .line 68
    :cond_a
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41900000  # 18.0f

    .line 70
    invoke-static {v0, v4}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41800000  # 16.0f

    invoke-static {v0, v6}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 71
    invoke-static {v0, v4}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v8, 0x41880000  # 17.0f

    invoke-static {v0, v8}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 70
    invoke-virtual {v2, v5, v7, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v4, 0xe8

    const/16 v5, 0xe4

    const/16 v7, 0xe1

    .line 72
    invoke-static {v7, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/high16 v5, 0x41b00000  # 22.0f

    const/4 v7, -0x1

    invoke-static {v7, v4, v5, v0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->background(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0x17

    const/16 v8, 0x2a

    const/16 v9, 0xf

    .line 76
    invoke-static {v9, v5, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const-string v8, "浏览器画质 / 帧率"

    invoke-static {v0, v8, v6, v5, v3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 77
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const-string v5, ""

    const/16 v6, 0x47

    const/16 v8, 0x55

    const/16 v11, 0x69

    invoke-static {v6, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/high16 v13, 0x41400000  # 12.0f

    invoke-static {v0, v5, v13, v12, v3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    const v12, 0x800015

    .line 80
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v12, 0x41200000  # 10.0f

    .line 81
    invoke-static {v0, v12}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v14, 0x40800000  # 4.0f

    invoke-static {v0, v14}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v14}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v5, v12, v15, v9, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v15, 0x41600000  # 14.0f

    .line 89
    invoke-static {v0, v15}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 90
    invoke-virtual {v2, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const-string v9, "画质"

    invoke-static {v6, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-static {v0, v9, v13, v14, v3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    sget-object v9, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->QUALITY_LABELS:[Ljava/lang/String;

    array-length v9, v9

    new-array v9, v9, [Landroid/widget/TextView;

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->optionRow(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v14

    const/4 v15, 0x0

    .line 95
    :goto_c6
    sget-object v7, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->QUALITY_LABELS:[Ljava/lang/String;

    array-length v10, v7

    if-ge v15, v10, :cond_e4

    .line 97
    aget-object v7, v7, v15

    invoke-static {v0, v7}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->option(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v9, v15

    .line 98
    new-instance v10, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda2;

    invoke-direct {v10, v15, v0, v5, v9}, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda2;-><init>(ILandroid/app/Activity;Landroid/widget/TextView;[Landroid/widget/TextView;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    aget-object v7, v9, v15

    invoke-static {v0, v14, v7, v15}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->addOption(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;I)V

    add-int/lit8 v15, v15, 0x1

    const/4 v10, -0x2

    goto :goto_c6

    .line 121
    :cond_e4
    invoke-static/range {p0 .. p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->rowParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v12, v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const-string v7, "帧率"

    invoke-static {v6, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v0, v7, v13, v6, v3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 124
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41600000  # 14.0f

    .line 126
    invoke-static {v0, v7}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    invoke-virtual {v12, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    sget-object v3, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->RATES:[I

    array-length v3, v3

    new-array v3, v3, [Landroid/widget/TextView;

    .line 129
    invoke-static/range {p0 .. p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->optionRow(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x0

    .line 130
    :goto_111
    sget-object v8, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->RATES:[I

    array-length v10, v8

    if-ge v7, v10, :cond_141

    .line 131
    aget v8, v8, v7

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Hz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->option(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    aput-object v10, v3, v7

    .line 133
    new-instance v11, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v8, v5, v3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;ILandroid/widget/TextView;[Landroid/widget/TextView;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    aget-object v8, v3, v7

    invoke-static {v0, v6, v8, v7}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->addOption(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_111

    .line 139
    :cond_141
    invoke-static/range {p0 .. p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->rowParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v12, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-static/range {p0 .. p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "home_expanded"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_157

    move v7, v8

    goto :goto_159

    :cond_157
    const/16 v7, 0x8

    .line 142
    :goto_159
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    invoke-static {v5, v9, v3, v0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->refresh(Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 144
    invoke-static {v5, v0, v6}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->updateSummary(Landroid/widget/TextView;Landroid/content/Context;Z)V

    .line 145
    new-instance v3, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;

    invoke-direct {v3, v12, v0, v5}, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda4;-><init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-static {v0, v13}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17a
    :goto_17a
    return-void
.end method

.method public static applyQuality(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 5

    if-eqz p0, :cond_30

    if-nez p1, :cond_5

    goto :goto_30

    .line 56
    :cond_5
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->renderWidth(Landroid/content/Context;)I

    move-result v0

    .line 57
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->renderHeight(Landroid/content/Context;)I

    move-result p0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.__qiuhuiSetQualityProfile&&window.__qiuhuiSetQualityProfile("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ");"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_30
    :goto_30
    return-void
.end method

.method private static background(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 248
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 249
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 250
    invoke-static {p3, p2}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 p0, 0x3f800000  # 1.0f

    .line 251
    invoke-static {p3, p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private static contains([II)Z
    .registers 6

    .line 196
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private static dp(Landroid/content/Context;F)I
    .registers 2

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static frameRate(Landroid/content/Context;)F
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "content_hz"

    const/16 v1, 0x5a

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 51
    sget-object v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->RATES:[I

    invoke-static {v0, p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_16

    int-to-float p0, p0

    goto :goto_18

    :cond_16
    const/high16 p0, 0x42b40000  # 90.0f

    :goto_18
    return p0
.end method

.method static synthetic lambda$addToHome$0(Landroid/app/Activity;ILandroid/widget/TextView;[Landroid/widget/TextView;)V
    .registers 7

    .line 102
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    aget v1, v1, p1

    .line 103
    const-string v2, "render_width"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->HEIGHTS:[I

    aget p1, v1, p1

    .line 104
    const-string v1, "render_height"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 106
    invoke-static {p2, p3, p1, p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->refresh(Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$addToHome$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 113
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$addToHome$2(ILandroid/app/Activity;Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/view/View;)V
    .registers 6

    .line 99
    sget-object p4, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    aget p4, p4, p0

    .line 100
    invoke-static {p1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->renderWidth(Landroid/content/Context;)I

    move-result v0

    if-ne p4, v0, :cond_b

    return-void

    .line 101
    :cond_b
    new-instance v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;ILandroid/widget/TextView;[Landroid/widget/TextView;)V

    const/16 p0, 0x780

    if-le p4, p0, :cond_3b

    .line 109
    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "高画质提示"

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "因为软件本身需要大量的计算，开启高画质可能会导致手机发烫，声音链路受阻，建议性能强大的手机选择！"

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "取消"

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 113
    const-string p2, "确认"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3e

    .line 116
    :cond_3b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_3e
    return-void
.end method

.method static synthetic lambda$addToHome$3(Landroid/app/Activity;ILandroid/widget/TextView;[Landroid/widget/TextView;Landroid/view/View;)V
    .registers 6

    .line 134
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "content_hz"

    invoke-interface {p4, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 135
    invoke-static {p2, p1, p3, p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->refresh(Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$addToHome$4(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 5

    .line 146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    goto :goto_a

    :cond_9
    move p3, v0

    :goto_a
    if-eqz p3, :cond_d

    goto :goto_f

    :cond_d
    const/16 v0, 0x8

    .line 147
    :goto_f
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    invoke-static {p1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "home_expanded"

    invoke-interface {p0, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    invoke-static {p2, p1, p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->updateSummary(Landroid/widget/TextView;Landroid/content/Context;Z)V

    return-void
.end method

.method private static option(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    const/16 v0, 0x55

    const/16 v1, 0x69

    const/16 v2, 0x47

    .line 214
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/high16 v1, 0x41500000  # 13.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x11

    .line 215
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    return-object p0
.end method

.method private static optionRow(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 201
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 202
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private static preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 192
    const-string v0, "browser_display"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static qualityLabel(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 185
    :goto_1
    sget-object v1, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 186
    aget v1, v1, v0

    if-ne v1, p0, :cond_f

    sget-object p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->QUALITY_LABELS:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_12
    const-string p0, "1080P"

    return-object p0
.end method

.method private static refresh(Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;Landroid/app/Activity;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 164
    invoke-static {p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->renderWidth(Landroid/content/Context;)I

    move-result v2

    move v3, v1

    .line 165
    :goto_9
    array-length v4, p1

    if-ge v3, v4, :cond_1d

    .line 166
    aget-object v4, p1, v3

    sget-object v5, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    aget v5, v5, v3

    if-ne v5, v2, :cond_16

    move v5, v0

    goto :goto_17

    :cond_16
    move v5, v1

    :goto_17
    invoke-static {v4, v5, p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->styleOption(Landroid/widget/TextView;ZLandroid/content/Context;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1d
    if-eqz p2, :cond_3c

    .line 170
    invoke-static {p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->frameRate(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v2, v1

    .line 171
    :goto_28
    array-length v3, p2

    if-ge v2, v3, :cond_3c

    .line 172
    aget-object v3, p2, v2

    sget-object v4, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->RATES:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_35

    move v4, v0

    goto :goto_36

    :cond_35
    move v4, v1

    :goto_36
    invoke-static {v3, v4, p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->styleOption(Landroid/widget/TextView;ZLandroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 176
    :cond_3c
    invoke-static {p3}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "home_expanded"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 175
    invoke-static {p0, p3, p1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->updateSummary(Landroid/widget/TextView;Landroid/content/Context;Z)V

    return-void
.end method

.method public static renderHeight(Landroid/content/Context;)I
    .registers 4

    .line 42
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->renderWidth(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    .line 43
    :goto_5
    sget-object v1, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 44
    aget v1, v1, v0

    if-ne v1, p0, :cond_13

    sget-object p0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->HEIGHTS:[I

    aget p0, p0, v0

    return p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/16 p0, 0x438

    return p0
.end method

.method public static renderWidth(Landroid/content/Context;)I
    .registers 3

    .line 37
    invoke-static {p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "render_width"

    const/16 v1, 0x780

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 38
    sget-object v0, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->WIDTHS:[I

    invoke-static {v0, p0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_15

    move v1, p0

    :cond_15
    return v1
.end method

.method private static rowParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x422c0000  # 43.0f

    .line 208
    invoke-static {p0, v1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40e00000  # 7.0f

    .line 209
    invoke-static {p0, v1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private static styleOption(Landroid/widget/TextView;ZLandroid/content/Context;)V
    .registers 9

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_e

    :cond_4
    const/16 v0, 0x55

    const/16 v1, 0x69

    const/16 v2, 0x47

    .line 228
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x2a

    const/16 v1, 0x17

    const/16 v2, 0xf

    if-eqz p1, :cond_1e

    .line 230
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    goto :goto_28

    :cond_1e
    const/16 v3, 0xf5

    const/16 v4, 0xf9

    const/16 v5, 0xf1

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    :goto_28
    if-eqz p1, :cond_2f

    .line 231
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    goto :goto_39

    :cond_2f
    const/16 p1, 0xe8

    const/16 v0, 0xf0

    const/16 v1, 0xe2

    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    :goto_39
    const/high16 v0, 0x41500000  # 13.0f

    .line 229
    invoke-static {v3, p1, v0, p2}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->background(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 6

    .line 238
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    const-string p0, "sans-serif"

    invoke-static {p0, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method private static updateSummary(Landroid/widget/TextView;Landroid/content/Context;Z)V
    .registers 5

    .line 180
    invoke-static {p1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->renderWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->qualityLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p1}, Lcom/qiuhui/mahjong/BrowserDisplaySettings;->frameRate(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p2, :cond_15

    const-string p2, "收起"

    goto :goto_17

    :cond_15
    const-string p2, "展开"

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " · "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Hz  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
