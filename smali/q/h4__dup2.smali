.class public final synthetic Lq/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/OverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/OverlayService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/h4;->a:Lcom/qiuhui/mahjong/OverlayService;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 5

    sget-boolean p1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    iget-object p1, p0, Lq/h4;->a:Lcom/qiuhui/mahjong/OverlayService;

    const-string v0, "overlay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "overlay_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p1}, Lcom/qiuhui/mahjong/OverlayService;->i()V

    const/4 p1, 0x1

    return p1
.end method
