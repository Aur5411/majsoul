.class public final Lq/SkinAsyncUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/qiuhui/mahjong/WebGameActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/SkinAsyncUi;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-object p2, p0, Lq/SkinAsyncUi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lq/SkinAsyncUi;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-object v0, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    :try_start_6
    iget-object v1, p0, Lq/SkinAsyncUi;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method
