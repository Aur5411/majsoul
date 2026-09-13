.class public Lcom/qiuhui/mahjong/OverlayService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lq/o;
.implements Lq/M2;


# static fields
.field public static volatile G:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public final a:Landroid/os/Handler;

.field public final b:Lq/d4;

.field public final c:Lq/d4;

.field public final d:Lq/d4;

.field public final e:Lq/d4;

.field public final f:Lq/d4;

.field public final g:Lq/d4;

.field public h:Landroid/view/WindowManager;

.field public i:Landroid/view/WindowManager$LayoutParams;

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public final n:[Landroid/widget/TextView;

.field public final o:Ljava/util/ArrayList;

.field public p:Lq/r2;

.field public q:Lq/z3;

.field public r:Lq/y3;

.field public s:Landroid/content/SharedPreferences;

.field public t:Lq/j4;

.field public u:Landroid/content/SharedPreferences;

.field public v:Lq/j4;

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    new-instance v0, Lq/d4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->b:Lq/d4;

    new-instance v0, Lq/d4;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    new-instance v0, Lq/d4;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    new-instance v0, Lq/d4;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->e:Lq/d4;

    new-instance v0, Lq/d4;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->f:Lq/d4;

    new-instance v0, Lq/d4;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->g:Lq/d4;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->n:[Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    sget v0, Lq/r;->c:I

    iput v0, p0, Lcom/qiuhui/mahjong/OverlayService;->E:I

    sget v0, Lq/r;->c:I

    iput v0, p0, Lcom/qiuhui/mahjong/OverlayService;->F:I

    return-void
.end method

.method public static j()Z
    .registers 1

    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    new-instance v1, Lq/d4;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .registers 7

    sget v0, Lq/r;->c:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d

    iget v4, p0, Lcom/qiuhui/mahjong/OverlayService;->F:I

    if-eq v4, v1, :cond_d

    move v4, v3

    goto :goto_e

    :cond_d
    move v4, v2

    :goto_e
    if-eq v0, v1, :cond_15

    iget v5, p0, Lcom/qiuhui/mahjong/OverlayService;->F:I

    if-ne v5, v1, :cond_15

    move v2, v3

    :cond_15
    iput v0, p0, Lcom/qiuhui/mahjong/OverlayService;->F:I

    if-eqz v4, :cond_35

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->b:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_40

    :cond_35
    if-eqz v2, :cond_40

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/OverlayService;->m()V

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->f:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->g:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->g:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .registers 10

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto/16 :goto_e3

    :cond_a
    sget-object v0, Lq/r;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_19

    move v5, v3

    goto :goto_1a

    :cond_19
    move v5, v4

    :goto_1a
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->l:Landroid/widget/TextView;

    const-string v5, ""

    if-nez v1, :cond_25

    move-object v6, v5

    goto :goto_59

    :cond_25
    sget v6, Lq/r;->c:I

    invoke-static {v6}, Lq/I1;->f(I)I

    move-result v6

    if-eqz v6, :cond_57

    const/4 v7, 0x1

    if-eq v6, v7, :cond_54

    const/4 v7, 0x2

    if-eq v6, v7, :cond_51

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4b

    sget-boolean v6, Lq/r;->h:Z

    if-eqz v6, :cond_3d

    const-string v6, "分析中"

    goto :goto_59

    :cond_3d
    sget-object v6, Lq/r;->f:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_48

    const-string v6, "对局中"

    goto :goto_59

    :cond_48
    sget-object v6, Lq/r;->f:Ljava/lang/String;

    goto :goto_59

    :cond_4b
    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    :cond_51
    const-string v6, "等待对局"

    goto :goto_59

    :cond_54
    const-string v6, "等待登录"

    goto :goto_59

    :cond_57
    const-string v6, "就绪"

    :goto_59
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    const/4 v6, 0x0

    if-nez v1, :cond_61

    goto :goto_79

    :cond_61
    sget v1, Lq/r;->c:I

    if-eq v1, v2, :cond_66

    goto :goto_79

    :cond_66
    sget-boolean v1, Lq/r;->h:Z

    if-eqz v1, :cond_75

    sget-object v1, Lq/r;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    sget-object v6, Lq/r;->f:Ljava/lang/String;

    goto :goto_79

    :cond_75
    sget-object v1, Lq/r;->b:Lq/n;

    iget-object v6, v1, Lq/n;->a:Ljava/lang/String;

    :goto_79
    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    if-nez v6, :cond_7f

    move v7, v3

    goto :goto_80

    :cond_7f
    move v7, v4

    :goto_80
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    if-nez v6, :cond_88

    move-object v6, v5

    :cond_88
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    sget v6, Lq/r;->c:I

    if-ne v6, v2, :cond_94

    sget v2, Lq/Q4;->b:I

    goto :goto_96

    :cond_94
    sget v2, Lq/Q4;->d:I

    :goto_96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move v1, v4

    :goto_9a
    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->n:[Landroid/widget/TextView;

    array-length v6, v2

    if-ge v1, v6, :cond_e3

    aget-object v2, v2, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_ae

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e0

    :cond_ae
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/p4;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Lq/p4;->i(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v8, :cond_cc

    const-string v8, "\n"

    goto :goto_ce

    :cond_cc
    const-string v8, " "

    :goto_ce
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lq/p4;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    :cond_e3
    :goto_e3
    return-void
.end method

.method public final d(ZZ)V
    .registers 11

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_a

    goto/16 :goto_c5

    :cond_a
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v4, :cond_29

    goto :goto_39

    :cond_29
    iget-boolean v4, p0, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    if-eqz v4, :cond_30

    const/high16 v4, 0x43780000  # 248.0f

    goto :goto_35

    :cond_30
    invoke-virtual {p0}, Lcom/qiuhui/mahjong/OverlayService;->f()I

    move-result v4

    int-to-float v4, v4

    :goto_35
    invoke-static {p0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    :goto_39
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5, v6}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    iget v2, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    sub-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    iget-object v3, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_9e

    if-nez p2, :cond_95

    iget p2, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    if-ne v1, p2, :cond_95

    iget p2, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    if-eq v0, p2, :cond_9e

    :cond_95
    iget-object p2, p0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9e
    if-eqz p1, :cond_c5

    iget p1, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    if-ne v1, p1, :cond_a8

    iget p1, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    if-eq v0, p1, :cond_c5

    :cond_a8
    const-string p1, "overlay"

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "x"

    iget v0, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "y"

    iget v0, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public final e()I
    .registers 6

    sget-object v0, Lq/r;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v2, p0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    const/16 v3, 0x2c

    const/4 v4, 0x2

    if-eqz v2, :cond_1d

    if-eq v0, v4, :cond_1a

    if-eq v0, v1, :cond_17

    goto :goto_1c

    :cond_17
    const/16 v3, 0x6c

    goto :goto_1c

    :cond_1a
    const/16 v3, 0x48

    :goto_1c
    return v3

    :cond_1d
    if-eq v0, v4, :cond_25

    if-eq v0, v1, :cond_22

    goto :goto_27

    :cond_22
    const/16 v3, 0x42

    goto :goto_27

    :cond_25
    const/16 v3, 0x34

    :goto_27
    return v3
.end method

.method public final f()I
    .registers 2

    iget-boolean v0, p0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x44

    goto :goto_9

    :cond_7
    const/16 v0, 0x6c

    :goto_9
    return v0
.end method

.method public final g(I)V
    .registers 4

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    move p1, v1

    :goto_f
    invoke-virtual {p0, v1, p1}, Lcom/qiuhui/mahjong/OverlayService;->d(ZZ)V

    iget-object p1, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    new-instance v0, Lq/d4;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Ljava/lang/String;ILjava/lang/String;)Landroid/widget/TextView;
    .registers 6

    const/high16 v0, 0x41a00000  # 20.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    if-eqz v1, :cond_b

    :try_start_8
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->l:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    return-void
.end method

.method public final k()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_10

    :cond_e
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_10
    iget-boolean v3, v0, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    if-nez v3, :cond_55

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-ne v3, v4, :cond_55

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->c()V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/qiuhui/mahjong/OverlayService;->g(I)V

    return-void

    :cond_55
    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean v3, v0, Lcom/qiuhui/mahjong/OverlayService;->w:Z

    const/4 v4, 0x1

    const/high16 v12, 0x3f800000  # 1.0f

    const/16 v13, 0x10

    const/4 v14, 0x0

    const/high16 v15, 0x41200000  # 10.0f

    const/4 v6, -0x2

    const/4 v5, -0x1

    if-eqz v3, :cond_32f

    iget-object v3, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v0, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41000000  # 8.0f

    invoke-static {v0, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v15}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v15

    const/high16 v10, 0x41100000  # 9.0f

    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v8, v9, v15, v11}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v8, 0x41a80000  # 21.0f

    invoke-static {v5, v8, v0}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setElevation(F)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v11, Lq/Q4;->a:I

    const-string v14, "切牌推荐"

    const/high16 v15, 0x41800000  # 16.0f

    invoke-static {v0, v14, v15, v11, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v14, Lq/r;->b:Lq/n;

    iget-object v14, v14, Lq/n;->a:Ljava/lang/String;

    sget v15, Lq/Q4;->d:I

    invoke-static {v0, v14, v10, v15, v2}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v2, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, v0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v9, :cond_db

    const-string v14, "横"

    goto :goto_dd

    :cond_db
    const-string v14, "竖"

    :goto_dd
    if-eqz v9, :cond_e4

    const-string v16, "横向显示"

    :goto_e1
    move-object/from16 v5, v16

    goto :goto_e7

    :cond_e4
    const-string v16, "竖向显示"

    goto :goto_e1

    :goto_e7
    if-eqz v9, :cond_ec

    sget v9, Lq/Q4;->b:I

    goto :goto_ed

    :cond_ec
    move v9, v15

    :goto_ed
    invoke-virtual {v0, v14, v9, v5}, Lcom/qiuhui/mahjong/OverlayService;->h(Ljava/lang/String;ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v9, Lq/g4;

    const/4 v14, 0x1

    invoke-direct {v9, v0, v14}, Lq/g4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x41d80000  # 27.0f

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    const/high16 v6, 0x41f00000  # 30.0f

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "≡"

    const-string v9, "拖动"

    invoke-virtual {v0, v5, v15, v9}, Lcom/qiuhui/mahjong/OverlayService;->h(Ljava/lang/String;ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v9, Lq/k4;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lq/k4;-><init>(Lcom/qiuhui/mahjong/OverlayService;Lq/l2;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "−"

    const-string v9, "收起"

    invoke-virtual {v0, v5, v15, v9}, Lcom/qiuhui/mahjong/OverlayService;->h(Ljava/lang/String;ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v9, Lq/g4;

    const/4 v10, 0x2

    invoke-direct {v9, v0, v10}, Lq/g4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lq/Q4;->e:I

    const-string v9, "×"

    const-string v10, "关闭"

    invoke-virtual {v0, v9, v5, v10}, Lcom/qiuhui/mahjong/OverlayService;->h(Ljava/lang/String;ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v9, Lq/g4;

    const/4 v10, 0x3

    invoke-direct {v9, v0, v10}, Lq/g4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lq/h4;

    invoke-direct {v9, v0}, Lq/h4;-><init>(Lcom/qiuhui/mahjong/OverlayService;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v9, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x40a00000  # 5.0f

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const-string v6, "自动打牌"

    const/high16 v8, 0x41500000  # 13.0f

    invoke-static {v0, v6, v8, v11, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v14, -0x2

    invoke-direct {v10, v2, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/Switch;

    invoke-direct {v9, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v6, "automation"

    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "enabled"

    invoke-interface {v6, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v6, Lq/i4;

    const/4 v10, 0x0

    invoke-direct {v6, v0, v10}, Lq/i4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v9, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const-string v6, "小猫推荐"

    invoke-static {v0, v6, v8, v11, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v11, -0x2

    invoke-direct {v9, v2, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v6, "overlay"

    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "cat_recommendation_enabled"

    invoke-interface {v6, v9, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v8, v6}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v6, Lq/i4;

    const/4 v9, 0x1

    invoke-direct {v6, v0, v9}, Lq/i4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v8, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v5, Lq/r;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27f

    sget v5, Lq/r;->c:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_232

    sget-boolean v5, Lq/r;->h:Z

    if-eqz v5, :cond_224

    const-string v5, "分析中"

    goto :goto_238

    :cond_224
    sget-object v5, Lq/r;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22f

    const-string v5, "对局中"

    goto :goto_238

    :cond_22f
    sget-object v5, Lq/r;->f:Ljava/lang/String;

    goto :goto_238

    :cond_232
    sget v5, Lq/r;->c:I

    invoke-static {v5}, Lq/I1;->c(I)Ljava/lang/String;

    move-result-object v5

    :goto_238
    sget v6, Lq/r;->c:I

    invoke-static {v6}, Lq/I1;->f(I)I

    move-result v6

    if-eqz v6, :cond_25f

    if-eq v6, v4, :cond_254

    const/4 v8, 0x2

    if-eq v6, v8, :cond_24f

    const/4 v8, 0x3

    if-ne v6, v8, :cond_249

    goto :goto_24f

    :cond_249
    new-instance v1, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v1

    :cond_24f
    :goto_24f
    sget v6, Lq/Q4;->b:I

    :goto_251
    const/high16 v8, 0x41600000  # 14.0f

    goto :goto_262

    :cond_254
    const/16 v6, 0xb2

    const/16 v8, 0x4c

    const/16 v9, 0x7e

    invoke-static {v8, v9, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_251

    :cond_25f
    sget v6, Lq/Q4;->c:I

    goto :goto_251

    :goto_262
    invoke-static {v0, v5, v8, v6, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41400000  # 12.0f

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41100000  # 9.0f

    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v2, v5, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_319

    :cond_27f
    const/high16 v6, 0x41100000  # 9.0f

    move v8, v2

    :goto_282
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_319

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq/p4;

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez v8, :cond_29a

    move v11, v6

    goto :goto_29c

    :cond_29a
    const/high16 v11, 0x40800000  # 4.0f

    :goto_29c
    invoke-static {v0, v11}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v10, v2, v11, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v9, v8}, Lq/p4;->i(I)Ljava/lang/String;

    move-result-object v11

    if-nez v8, :cond_2ae

    sget v12, Lq/Q4;->b:I

    :goto_2ab
    const/high16 v14, 0x41300000  # 11.0f

    goto :goto_2b1

    :cond_2ae
    sget v12, Lq/Q4;->d:I

    goto :goto_2ab

    :goto_2b1
    invoke-static {v0, v11, v14, v12, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v0, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x42340000  # 45.0f

    invoke-static {v0, v14}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v14

    const/4 v15, -0x2

    invoke-direct {v12, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v9, Lq/p4;->b:Ljava/lang/String;

    if-nez v8, :cond_2d0

    const/high16 v12, 0x41b00000  # 22.0f

    goto :goto_2d2

    :cond_2d0
    const/high16 v12, 0x41880000  # 17.0f

    :goto_2d2
    sget v14, Lq/Q4;->a:I

    invoke-static {v0, v11, v12, v14, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v0, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000  # 1.0f

    const/4 v15, -0x2

    invoke-direct {v12, v2, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v9, Lq/p4;->e:F

    const/high16 v12, 0x42c80000  # 100.0f

    mul-float/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Lq/Q4;->d:I

    const/high16 v12, 0x41300000  # 11.0f

    invoke-static {v0, v9, v12, v11, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    iget-object v11, v0, Lcom/qiuhui/mahjong/OverlayService;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_282

    :cond_319
    :goto_319
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x43780000  # 248.0f

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_459

    :cond_32f
    const/high16 v5, 0x41400000  # 12.0f

    const/high16 v6, 0x40a00000  # 5.0f

    const/4 v8, 0x2

    const/high16 v12, 0x41300000  # 11.0f

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->e()I

    move-result v3

    iget-object v7, v0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    iget-boolean v10, v0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v10, :cond_34f

    const/high16 v10, 0x40800000  # 4.0f

    goto :goto_350

    :cond_34f
    move v10, v6

    :goto_350
    invoke-static {v0, v10}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x40800000  # 4.0f

    invoke-static {v0, v11}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v13

    iget-boolean v5, v0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v5, :cond_35f

    move v6, v11

    :cond_35f
    invoke-static {v0, v6}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v11}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v9, v10, v13, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    const/high16 v6, 0x41a00000  # 20.0f

    const/4 v9, -0x1

    invoke-static {v9, v6, v0}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/view/View;->setElevation(F)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-static {v0, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v5, v10, v2, v13, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v9, Lq/Q4;->a:I

    const-string v10, ""

    const/high16 v13, 0x41600000  # 14.0f

    invoke-static {v0, v10, v13, v9, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v0, Lcom/qiuhui/mahjong/OverlayService;->l:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v0, Lcom/qiuhui/mahjong/OverlayService;->l:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v9, Lq/Q4;->d:I

    invoke-static {v0, v10, v15, v9, v2}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lcom/qiuhui/mahjong/OverlayService;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v6, v2

    :goto_3ba
    iget-object v9, v0, Lcom/qiuhui/mahjong/OverlayService;->n:[Landroid/widget/TextView;

    array-length v13, v9

    if-ge v6, v13, :cond_406

    if-nez v6, :cond_3c4

    const/high16 v14, 0x41400000  # 12.0f

    goto :goto_3c5

    :cond_3c4
    move v14, v12

    :goto_3c5
    if-nez v6, :cond_3ca

    sget v13, Lq/Q4;->b:I

    goto :goto_3cc

    :cond_3ca
    sget v13, Lq/Q4;->a:I

    :goto_3cc
    invoke-static {v0, v10, v14, v13, v4}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v15, v0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    xor-int/2addr v15, v4

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-boolean v15, v0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v15, :cond_3e1

    move v15, v8

    goto :goto_3e2

    :cond_3e1
    move v15, v4

    :goto_3e2
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v8, -0x1

    invoke-direct {v15, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v6, :cond_3fc

    iget-boolean v4, v0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    if-eqz v4, :cond_3f4

    move v4, v11

    goto :goto_3f6

    :cond_3f4
    const/high16 v4, 0x40400000  # 3.0f

    :goto_3f6
    invoke-static {v0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    iput v4, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_3fc
    aput-object v13, v9, v6

    invoke-virtual {v5, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x2

    goto :goto_3ba

    :cond_406
    iget-object v4, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, -0x2

    invoke-direct {v6, v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    new-instance v4, Lq/g4;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lq/g4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    new-instance v4, Lq/k4;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lq/l2;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v2}, Lq/l2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v4, v0, v5}, Lq/k4;-><init>(Lcom/qiuhui/mahjong/OverlayService;Lq/l2;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->c()V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->k:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->f()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v5

    int-to-float v3, v3

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/qiuhui/mahjong/OverlayService;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_459
    invoke-virtual {v0, v1}, Lcom/qiuhui/mahjong/OverlayService;->g(I)V

    return-void
.end method

.method public final l()V
    .registers 7

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lq/r;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qiuhui/mahjong/OverlayService;->f:Lq/d4;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x10

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/qiuhui/mahjong/OverlayService;->k()V

    return-void
.end method

.method public final m()V
    .registers 5

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_15
    sget v0, Lq/r;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    const-wide/32 v0, 0x493e0

    goto :goto_21

    :cond_1e
    const-wide/32 v0, 0x927c0

    :goto_21
    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final n()Z
    .registers 4

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v0, "overlay"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "overlay_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public final o()V
    .registers 8

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42d80000  # 108.0f

    invoke-static {p0, v1}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p0, v0}, Lq/y;->f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/OverlayService;->k()V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-ge v1, v2, :cond_4c

    goto :goto_4f

    :cond_4c
    :try_start_4c
    invoke-static {v0}, Lq/i2;->a(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    new-instance v1, Lq/d4;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/qiuhui/mahjong/OverlayService;->A:I

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    iput p1, p0, Lcom/qiuhui/mahjong/OverlayService;->A:I

    return-void
.end method

.method public final onCreate()V
    .registers 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lq/j3;->j()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    new-instance v1, Landroid/app/NotificationChannel;

    const/high16 v2, 0x7f090000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "qiuhui_overlay_v4"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 v3, 0x7f040000

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v3, Lq/Q4;->b:I

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "悬浮窗已开启"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x7f5

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sget-object v1, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    const-string v1, "overlay"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/high16 v4, 0x41900000  # 18.0f

    invoke-static {p0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    const-string v5, "x"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qiuhui/mahjong/OverlayService;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/high16 v4, 0x43020000  # 130.0f

    invoke-static {p0, v4}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v4

    const-string v5, "y"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qiuhui/mahjong/OverlayService;->z:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "vertical_compact"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qiuhui/mahjong/OverlayService;->x:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/qiuhui/mahjong/OverlayService;->A:I

    const-string v3, "automation"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/qiuhui/mahjong/OverlayService;->s:Landroid/content/SharedPreferences;

    new-instance v4, Lq/j4;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lq/j4;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v4, p0, Lcom/qiuhui/mahjong/OverlayService;->t:Lq/j4;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->u:Landroid/content/SharedPreferences;

    new-instance v2, Lq/j4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lq/j4;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->v:Lq/j4;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    new-instance v1, Lq/r2;

    invoke-direct {v1, p0}, Lq/r2;-><init>(Lcom/qiuhui/mahjong/OverlayService;)V

    iput-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->p:Lq/r2;

    new-instance v2, Lq/z3;

    new-instance v3, Lq/s2;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lq/s2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Lq/z3;-><init>(Lq/s2;)V

    iput-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->q:Lq/z3;

    iget-boolean v1, v2, Lq/z3;->c:Z

    if-eqz v1, :cond_ea

    goto :goto_f7

    :cond_ea
    iput-boolean v0, v2, Lq/z3;->c:Z

    iget-object v0, v2, Lq/z3;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lq/l2;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lq/l2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_f7
    :try_start_f7
    new-instance v0, Lq/y3;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->p:Lq/r2;

    invoke-direct {v0, p0, v1}, Lq/y3;-><init>(Lcom/qiuhui/mahjong/OverlayService;Lq/r2;)V

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->r:Lq/y3;

    invoke-static {v0}, Lq/p5;->a(Lq/y3;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_103} :catch_104

    goto :goto_107

    :catch_104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->r:Lq/y3;

    :goto_107
    invoke-virtual {p0}, Lcom/qiuhui/mahjong/OverlayService;->n()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Lcom/qiuhui/mahjong/OverlayService;->o()V

    :cond_110
    invoke-static {}, Lcom/qiuhui/mahjong/OverlayService;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiuhui/mahjong/OverlayService;->B:Z

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11f
    return-void
.end method

.method public final onDestroy()V
    .registers 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->b:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->c:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->d:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->e:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->f:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->g:Lq/d4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lq/r;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->s:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->t:Lq/j4;

    if-eqz v1, :cond_3d

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_3d
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->u:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->v:Lq/j4;

    if-eqz v1, :cond_48

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_48
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    iget-object v2, p0, Lcom/qiuhui/mahjong/OverlayService;->h:Landroid/view/WindowManager;

    if-eqz v2, :cond_56

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->j:Landroid/widget/FrameLayout;

    :cond_56
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->q:Lq/z3;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lq/z3;->close()V

    :cond_5d
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->r:Lq/y3;

    if-eqz v0, :cond_78

    sget-object v2, Lq/p5;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_64
    sget-object v3, Lq/p5;->a:Lq/y3;

    if-ne v3, v0, :cond_6d

    sput-object v1, Lq/p5;->a:Lq/y3;

    goto :goto_6d

    :catchall_6b
    move-exception v0

    goto :goto_76

    :cond_6d
    :goto_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_6b

    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->r:Lq/y3;

    invoke-virtual {v0}, Lq/y3;->close()V

    iput-object v1, p0, Lcom/qiuhui/mahjong/OverlayService;->r:Lq/y3;

    goto :goto_78

    :goto_76
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_6b

    throw v0

    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/qiuhui/mahjong/OverlayService;->p:Lq/r2;

    if-eqz v0, :cond_7f

    :try_start_7c
    invoke-virtual {v0}, Lq/r2;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_7f

    :catch_7f
    :cond_7f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_92

    const/16 v1, 0x7f5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    invoke-static {p0}, Lq/k3;->i(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_11

    invoke-static {}, Lq/j3;->j()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p1, 0x2

    return p1

    :cond_11
    iget-object p2, p0, Lcom/qiuhui/mahjong/OverlayService;->a:Landroid/os/Handler;

    new-instance p3, Lq/d4;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lq/d4;-><init>(Lcom/qiuhui/mahjong/OverlayService;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_34

    const-string p3, "com.qiuhui.mahjong.action.APP_VISIBILITY_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/qiuhui/mahjong/OverlayService;->e:Lq/d4;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_34
    const/4 p1, 0x1

    return p1
.end method

.method public final p(Z)V
    .registers 2

    return-void
.end method
