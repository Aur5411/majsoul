.class public final synthetic Lq/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JJLorg/json/JSONObject;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/u5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/u5;->b:J

    iput-wide p4, p0, Lq/u5;->c:J

    iput-object p6, p0, Lq/u5;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lq/u5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-wide v1, p0, Lq/u5;->b:J

    iget-wide v3, p0, Lq/u5;->c:J

    iget-object v5, p0, Lq/u5;->d:Lorg/json/JSONObject;

    iget-wide v6, v0, Lcom/qiuhui/mahjong/WebGameActivity;->v:J

    cmp-long v1, v6, v1

    if-nez v1, :cond_59

    sget-object v1, Lq/r;->j:Lq/m;

    iget-wide v1, v1, Lq/m;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_59

    sget v1, Lq/r;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_59

    sget-object v1, Lq/r;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_59

    :cond_24
    iget-object v1, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_59

    const-string v1, "markers"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_37

    goto :goto_56

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(function(){try{if(window.AyakaCatHUD&&window.AyakaCatHUD.showImmediate){window.AyakaCatHUD.showImmediate("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");return true;}return false;}catch(_){return false;}})();"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lq/C5;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lq/C5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;I)V

    iget-object v0, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_59

    :cond_56
    :goto_56
    invoke-virtual {v0}, Lcom/qiuhui/mahjong/WebGameActivity;->h()V

    :cond_59
    :goto_59
    return-void
.end method
