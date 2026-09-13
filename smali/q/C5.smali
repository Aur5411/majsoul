.class public final synthetic Lq/C5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/WebGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V
    .registers 3

    iput p2, p0, Lq/C5;->a:I

    iput-object p1, p0, Lq/C5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Lq/C5;->a:I

    check-cast p1, Ljava/lang/String;

    packed-switch v1, :pswitch_data_3c

    sget-boolean p1, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object p1, p0, Lq/C5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->D()V

    return-void

    :pswitch_10  #0x0
    iget-object v1, p0, Lq/C5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-object v2, v1, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_3a

    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_3a

    :cond_1f
    iput-boolean v0, v1, Lcom/qiuhui/mahjong/WebGameActivity;->x:Z

    :try_start_21
    iget-object p1, v1, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    const-string v2, "web/cat-hud.js"

    invoke-virtual {v1, v2}, Lcom/qiuhui/mahjong/WebGameActivity;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lq/C5;

    invoke-direct {v3, v1, v0}, Lq/C5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception p1

    const-string v0, "QiuHuiWeb"

    const-string v1, "Cat HUD fallback injection failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_10  #00000000
    .end packed-switch
.end method
