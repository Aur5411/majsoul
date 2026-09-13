.class public final synthetic Lq/E5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lq/I5;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/E5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/E5;->b:J

    iput p4, p0, Lq/E5;->c:I

    iput-object p5, p0, Lq/E5;->d:Lq/I5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v2, p0, Lq/E5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Lq/E5;->b:J

    invoke-static {v3, v4}, Lcom/qiuhui/mahjong/WebGameActivity;->t(J)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "automation"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "enabled"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_41

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function(){try{return typeof window.__qiuhuiCanFallbackDecision===\'function\'&&window.__qiuhuiCanFallbackDecision(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\');}catch(_){return false;}})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v2, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    new-instance v8, Lq/F5;

    iget-object v6, p0, Lq/E5;->d:Lq/I5;

    iget v5, p0, Lq/E5;->c:I

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lq/F5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;)V

    invoke-virtual {v7, v0, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_41
    :goto_41
    return-void
.end method
