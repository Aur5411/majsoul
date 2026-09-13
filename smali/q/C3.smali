.class public final synthetic Lq/C3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;I)V
    .registers 3

    iput p2, p0, Lq/C3;->a:I

    iput-object p1, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    const/4 p1, 0x0

    const-class v0, Lcom/qiuhui/mahjong/OverlayService;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lq/C3;->a:I

    packed-switch v4, :pswitch_data_244

    sget-boolean p1, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object p1, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    const-string v4, "overlay"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "overlay_enabled"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-wide/16 v7, 0x96

    if-eqz v5, :cond_39

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p1, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lq/G3;

    invoke-direct {v2, p1, v1}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8f

    :cond_39
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6f

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.qiuhui.mahjong.action.RESTORE_OVERLAY"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-boolean v2, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    if-nez v2, :cond_61

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_64

    :cond_61
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_64
    iget-object v0, p1, Lcom/qiuhui/mahjong/MainActivity;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lq/G3;

    invoke-direct {v2, p1, v1}, Lq/G3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {v0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8f

    :cond_6f
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_8f
    return-void

    :pswitch_90  #0x3
    sget-boolean p1, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object p1, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_97
    sget-boolean v1, Lcom/qiuhui/mahjong/OverlayService;->G:Z

    if-eqz v1, :cond_9c

    goto :goto_a4

    :cond_9c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_a4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b3
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_b3} :catch_b4

    goto :goto_bd

    :catch_b4
    const-string v0, "网页启动失败"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_bd
    return-void

    :pswitch_be  #0x2
    sget-boolean p1, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object p1, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "renew"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_d5  #0x1
    iget-object v0, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    iget-boolean v1, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    if-eqz v1, :cond_dc

    goto :goto_eb

    :cond_dc
    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e5

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iput-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    :cond_e5
    iput-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->i:Landroid/widget/ProgressBar;

    iput-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->j:Landroid/widget/TextView;

    iput-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->k:Landroid/widget/TextView;

    :goto_eb
    return-void

    :pswitch_ec  #0x0
    iget-object v0, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    iget-boolean v1, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    if-eqz v1, :cond_f4

    goto/16 :goto_242

    :cond_f4
    iget-boolean v1, v0, Lcom/qiuhui/mahjong/MainActivity;->l:Z

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->p:Lq/A3;

    if-eqz v1, :cond_23f

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "更新全皮肤数据"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v5, "请关注官方更新动态，有新内容变化时再进行更新即可！"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v5, "取消"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v5, "确定更新"

    new-instance v6, Lcom/qiuhui/mahjong/SkinUpdateConfirmListener;

    invoke-direct {v6, v0}, Lcom/qiuhui/mahjong/SkinUpdateConfirmListener;-><init>(Lcom/qiuhui/mahjong/MainActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_242

    :pswitch_122  #0x4
    iget-object v0, p0, Lq/C3;->b:Lcom/qiuhui/mahjong/MainActivity;

    iget-object v4, v0, Lcom/qiuhui/mahjong/MainActivity;->p:Lq/A3;

    goto :goto_133

    iget-object v1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    if-eqz v1, :cond_133

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_133

    goto/16 :goto_20b

    :cond_133
    :goto_133
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41b00000  # 22.0f

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41a00000  # 20.0f

    invoke-static {v0, v7}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v5}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41900000  # 18.0f

    invoke-static {v0, v9}, Lq/Q4;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    const/4 v6, -0x1

    invoke-static {v6, v5, v0}, Lq/Q4;->a(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lq/Q4;->a:I

    const-string v7, "更新全皮肤数据"

    const/high16 v8, 0x41880000  # 17.0f

    invoke-static {v0, v7, v8, v5, v2}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v5, Lq/Q4;->d:I

    const-string v7, "正在准备更新"

    const/high16 v8, 0x41500000  # 13.0f

    invoke-static {v0, v7, v8, v5, v3}, Lq/Q4;->e(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->j:Landroid/widget/TextView;

    const/16 v7, 0xa

    invoke-virtual {v0, v5, v7}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ProgressBar;

    const v7, 0x1010078

    invoke-direct {v5, v0, p1, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, v0, Lcom/qiuhui/mahjong/MainActivity;->i:Landroid/widget/ProgressBar;

    const/16 p1, 0x64

    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->i:Landroid/widget/ProgressBar;

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->i:Landroid/widget/ProgressBar;

    const/16 v5, 0x10

    invoke-virtual {v0, p1, v5}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p1, 0x14

    const/16 v7, 0x18

    const/16 v8, 0x16

    invoke-static {p1, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const-string v7, "返回主页"

    invoke-static {v0, v7, p1, v6}, Lq/Q4;->d(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->k:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->k:Landroid/widget/TextView;

    new-instance v6, Lq/C3;

    invoke-direct {v6, v0, v2}, Lq/C3;-><init>(Lcom/qiuhui/mahjong/MainActivity;I)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v5}, Lcom/qiuhui/mahjong/MainActivity;->j(Landroid/view/View;I)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    new-instance v1, Lq/E3;

    invoke-direct {v1, v3}, Lq/E3;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    new-instance v1, Lq/F3;

    invoke-direct {v1, v0}, Lq/F3;-><init>(Lcom/qiuhui/mahjong/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, v0, Lcom/qiuhui/mahjong/MainActivity;->e:Landroid/widget/Switch;

    if-eqz p1, :cond_204

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_204
    const-string p1, "正在更新"

    const-string v1, "更新中"

    invoke-virtual {v0, p1, v1, v3, v3}, Lcom/qiuhui/mahjong/MainActivity;->h(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_20b
    sget-object p1, Lq/C4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lq/C4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_22b

    if-eqz v4, :cond_242

    new-instance p1, Lq/A4;

    const-string v0, "更新正在进行 请稍候"

    const-string v1, ""

    const/4 v2, 0x7

    const/16 v3, 0x5c

    invoke-direct {p1, v2, v1, v3, v0}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, p1}, Lq/A3;->a(Lq/A4;)V

    goto :goto_242

    :cond_22b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lq/m2;

    const/4 v3, 0x5

    invoke-direct {v1, v4, p1, v3}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p1, "qiuhui-majsouldata-install"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_242

    :cond_23f
    invoke-static {v0, v4}, Lq/C4;->b(Landroid/content/Context;Lq/A3;)V

    :cond_242
    :goto_242
    return-void

    nop

    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_ec  #00000000
        :pswitch_d5  #00000001
        :pswitch_be  #00000002
        :pswitch_90  #00000003
        :pswitch_122  #00000004
    .end packed-switch
.end method
