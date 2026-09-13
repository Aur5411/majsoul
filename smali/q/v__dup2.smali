.class public final Lq/v;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/MainActivity;)V
    .registers 13

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lq/v;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const/16 v2, 0xf1

    const/16 v3, 0xed

    const/16 v4, 0xf5

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sget v3, Lq/Q4;->a:I

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, -0x1

    filled-new-array {v5, v2}, [I

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v2, 0x41e00000  # 28.0f

    invoke-static {p1, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setElevation(F)V

    const/16 v3, 0xf

    const/16 v4, 0x18

    const/16 v6, 0x3c

    const/16 v7, 0x34

    invoke-static {v3, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const-string v4, "秋"

    const/high16 v6, 0x42f80000  # 124.0f

    invoke-static {p1, v4, v6, v3, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x43160000  # 150.0f

    invoke-static {p1, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x432a0000  # 170.0f

    invoke-static {p1, v8}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800015

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x41800000  # 16.0f

    invoke-static {p1, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    neg-int v7, v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x41b00000  # 22.0f

    invoke-static {p1, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p1, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41200000  # 10.0f

    invoke-static {p1, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v3, v7, v2, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    sget v2, Lq/Q4;->a:I

    const-string v7, "雀魂麻将"

    invoke-static {p1, v7, v6, v2, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "牌局纷繁，取舍有据"

    const/high16 v7, 0x41a80000  # 21.0f

    invoke-static {p1, v6, v7, v2, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41a00000  # 20.0f

    invoke-static {p1, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40800000  # 4.0f

    invoke-static {p1, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v2, v0, v6, v0, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lq/Q4;->d:I

    const-string v6, "Mortal · 三麻 / 四麻"

    const/high16 v7, 0x41400000  # 12.0f

    invoke-static {p1, v6, v7, v2, v0}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {p1, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41000000  # 8.0f

    invoke-static {p1, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p1, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p1, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v4, v9, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    const/16 v4, 0xeb

    const/16 v6, 0xe6

    const/16 v9, 0xf0

    invoke-static {v6, v9, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/high16 v6, 0x41500000  # 13.0f

    invoke-static {v4, v6, p1}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x5b

    const/16 v6, 0xf4

    const/16 v9, 0xb8

    invoke-static {v6, v9, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const-string v6, "●"

    const/high16 v9, 0x41100000  # 9.0f

    invoke-static {p1, v6, v9, v4, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v4, Lq/r;->c:I

    invoke-static {v4}, Lq/I1;->c(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lq/Q4;->b:I

    invoke-static {p1, v4, v7, v6, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lq/v;->b:Landroid/widget/TextView;

    const/high16 v4, 0x40e00000  # 7.0f

    invoke-static {p1, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;FFF)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p4, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance p4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000  # 5.0f

    invoke-static {v0, v1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41500000  # 13.0f

    invoke-static {v2, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p3, v1

    invoke-direct {p4, v0, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lq/v;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lq/v;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v1, 0x3c

    const/16 v2, 0x34

    const/16 v3, 0x16

    const/16 v4, 0x18

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000  # 24.0f

    invoke-static {v2, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42080000  # 34.0f

    invoke-static {v4, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42ac0000  # 86.0f

    invoke-static {v6, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v2, v4, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42e80000  # 116.0f

    invoke-static {v4, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0x9a

    const/16 v3, 0x3d

    const/16 v4, 0x32

    const/16 v5, 0xd7

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42900000  # 72.0f

    invoke-static {v0, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42780000  # 62.0f

    invoke-static {v2, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x3e000000  # -32.0f

    invoke-virtual {p0, p1, v0, v2, v3}, Lq/v;->a(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x420c0000  # 35.0f

    invoke-static {v0, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42e00000  # 112.0f

    invoke-static {v2, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x41900000  # 18.0f

    invoke-virtual {p0, p1, v0, v2, v4}, Lq/v;->a(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x43110000  # 145.0f

    invoke-static {v0, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, -0x3f000000  # -8.0f

    invoke-virtual {p0, p1, v1, v0, v2}, Lq/v;->a(Landroid/graphics/Canvas;FFF)V

    return-void
.end method
