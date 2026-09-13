.class public final synthetic Lq/H5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:J

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/H5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/H5;->b:J

    iput p4, p0, Lq/H5;->c:F

    iput p5, p0, Lq/H5;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lq/H5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-object v1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    goto :goto_1f

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v9, 0x0

    iget-wide v2, p0, Lq/H5;->b:J

    iget v7, p0, Lq/H5;->c:F

    iget v8, p0, Lq/H5;->d:F

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :goto_1f
    return-void
.end method
