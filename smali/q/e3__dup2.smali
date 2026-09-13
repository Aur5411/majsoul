.class public final synthetic Lq/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    iput p2, p0, Lq/e3;->a:I

    iput-object p1, p0, Lq/e3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    const/4 p1, 0x1

    iget v0, p0, Lq/e3;->a:I

    packed-switch v0, :pswitch_data_90

    sget-boolean p1, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object p1, p0, Lq/e3;->b:Landroid/app/Activity;

    check-cast p1, Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->v()V

    return-void

    :pswitch_10  #0x1
    iget-object v0, p0, Lq/e3;->b:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/qiuhui/mahjong/LicenseActivity;

    iget-object v0, v1, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v0, "[A-HJ-NP-Z2-9]{10}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "请输入正确的十位卡密"

    invoke-virtual {v1, v0, p1}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    goto :goto_84

    :cond_3f
    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, v1, Lcom/qiuhui/mahjong/LicenseActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-boolean v0, v1, Lcom/qiuhui/mahjong/LicenseActivity;->g:Z

    if-eqz v0, :cond_5d

    const-string v0, "正在续费"

    goto :goto_5f

    :cond_5d
    const-string v0, "正在激活"

    :goto_5f
    invoke-virtual {v1, v0, p1}, Lcom/qiuhui/mahjong/LicenseActivity;->b(Ljava/lang/String;Z)V

    iget-boolean v0, v1, Lcom/qiuhui/mahjong/LicenseActivity;->g:Z

    if-eqz v0, :cond_76

    invoke-static {v1}, Lq/j3;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lq/d3;

    invoke-direct {v6, v1, p1}, Lq/d3;-><init>(Lcom/qiuhui/mahjong/LicenseActivity;I)V

    const-string v2, "renew"

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lq/i3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLq/g3;)V

    goto :goto_84

    :cond_76
    new-instance v6, Lq/d3;

    const/4 p1, 0x2

    invoke-direct {v6, v1, p1}, Lq/d3;-><init>(Lcom/qiuhui/mahjong/LicenseActivity;I)V

    const-string v2, "activate"

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lq/i3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLq/g3;)V

    :goto_84
    return-void

    :pswitch_85  #0x0
    sget p1, Lcom/qiuhui/mahjong/LicenseActivity;->j:I

    iget-object p1, p0, Lq/e3;->b:Landroid/app/Activity;

    check-cast p1, Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_85  #00000000
        :pswitch_10  #00000001
    .end packed-switch
.end method
