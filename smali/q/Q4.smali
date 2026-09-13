.class public abstract Lq/Q4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x28

    const/16 v1, 0x24

    const/16 v2, 0x22

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lq/Q4;->a:I

    const/16 v0, 0x3c

    const/16 v1, 0x34

    const/16 v2, 0x18

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lq/Q4;->b:I

    const/16 v0, 0xeb

    const/16 v1, 0xe5

    const/16 v2, 0xe0

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    const/16 v0, 0x9a

    const/16 v1, 0x3d

    const/16 v2, 0xd7

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lq/Q4;->c:I

    const/16 v0, 0xf7

    const/16 v1, 0xf1

    const/16 v2, 0xfa

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    const/16 v0, 0x66

    const/16 v1, 0x6c

    invoke-static {v0, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lq/Q4;->d:I

    const/16 v0, 0x41

    const/16 v1, 0x3a

    const/16 v2, 0xb5

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lq/Q4;->e:I

    return-void
.end method

.method public static a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p2, p1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;F)I
    .registers 2

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

.method public static c(IIFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    invoke-static {p0, p2, p3}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p3, p2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 9

    const/high16 v0, 0x41500000  # 13.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p3, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p3, 0x41600000  # 14.0f

    invoke-static {p0, p3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {p0, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v2}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {p2, p3, p0}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    return-object p1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 6

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const-string p0, "kern"

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    if-eqz p4, :cond_24

    const-string p0, "sans"

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_24
    return-object v0
.end method
