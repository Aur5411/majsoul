.class public final synthetic Lq/A5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lq/I5;

.field public final synthetic e:D


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;DLorg/json/JSONObject;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/A5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/A5;->b:J

    iput p4, p0, Lq/A5;->c:I

    iput-object p5, p0, Lq/A5;->d:Lq/I5;

    iput-wide p6, p0, Lq/A5;->e:D

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 12

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v2, p0, Lq/A5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_4d

    :cond_12
    iget-object v5, p0, Lq/A5;->d:Lq/I5;

    const/4 p1, 0x0

    iget-wide v3, p0, Lq/A5;->b:J

    iget v0, p0, Lq/A5;->c:I

    if-ge v0, p1, :cond_4a

    invoke-static {v3, v4}, Lcom/qiuhui/mahjong/WebGameActivity;->t(J)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "automation"

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v6, "enabled"

    invoke-interface {p1, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, v2, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v9, Lq/B5;

    iget-wide v6, p0, Lq/A5;->e:D

    move-object v1, v9

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lq/B5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JLq/I5;DI)V

    sget-object v1, Lcom/qiuhui/mahjong/WebGameActivity;->I:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-wide v0, v1, v0

    invoke-virtual {p1, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4d

    :cond_4a
    invoke-virtual {v2, v3, v4, v5}, Lcom/qiuhui/mahjong/WebGameActivity;->n(JLq/I5;)V

    :goto_4d
    return-void
.end method
