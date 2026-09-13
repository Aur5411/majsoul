.class public final synthetic Lq/D3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/MainActivity;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/D3;->a:Lcom/qiuhui/mahjong/MainActivity;

    iput-object p2, p0, Lq/D3;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lq/D3;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    sget-boolean p1, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object p1, p0, Lq/D3;->a:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lq/D3;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iget-object v3, p0, Lq/D3;->c:Landroid/widget/TextView;

    invoke-static {v0, v3, v1}, Lcom/qiuhui/mahjong/MainActivity;->g(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V

    const-string v0, "home_layout"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "automation_settings_expanded"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
