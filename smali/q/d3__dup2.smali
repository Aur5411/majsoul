.class public final synthetic Lq/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/g3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/LicenseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/LicenseActivity;I)V
    .registers 3

    iput p2, p0, Lq/d3;->a:I

    iput-object p1, p0, Lq/d3;->b:Lcom/qiuhui/mahjong/LicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq/h3;)V
    .registers 7

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lq/d3;->b:Lcom/qiuhui/mahjong/LicenseActivity;

    iget v4, p0, Lq/d3;->a:I

    packed-switch v4, :pswitch_data_48

    sget v4, Lcom/qiuhui/mahjong/LicenseActivity;->j:I

    invoke-virtual {v3, v1, v2}, Lcom/qiuhui/mahjong/LicenseActivity;->b(Ljava/lang/String;Z)V

    iget-boolean v1, p1, Lq/h3;->a:Z

    if-eqz v1, :cond_18

    invoke-virtual {v3, p1}, Lcom/qiuhui/mahjong/LicenseActivity;->a(Lq/h3;)V

    goto :goto_1d

    :cond_18
    iget-object p1, p1, Lq/h3;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    :goto_1d
    return-void

    :pswitch_1e  #0x1
    sget v4, Lcom/qiuhui/mahjong/LicenseActivity;->j:I

    invoke-virtual {v3, v1, v2}, Lcom/qiuhui/mahjong/LicenseActivity;->b(Ljava/lang/String;Z)V

    iget-boolean v1, p1, Lq/h3;->a:Z

    if-eqz v1, :cond_2b

    invoke-virtual {v3, p1}, Lcom/qiuhui/mahjong/LicenseActivity;->a(Lq/h3;)V

    goto :goto_30

    :cond_2b
    iget-object p1, p1, Lq/h3;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    :goto_30
    return-void

    :pswitch_31  #0x0
    sget v4, Lcom/qiuhui/mahjong/LicenseActivity;->j:I

    invoke-virtual {v3, v1, v2}, Lcom/qiuhui/mahjong/LicenseActivity;->b(Ljava/lang/String;Z)V

    iget-boolean v1, p1, Lq/h3;->a:Z

    if-eqz v1, :cond_3e

    invoke-virtual {v3, p1}, Lcom/qiuhui/mahjong/LicenseActivity;->a(Lq/h3;)V

    goto :goto_46

    :cond_3e
    invoke-static {v3}, Lq/j3;->a(Landroid/content/Context;)V

    iget-object p1, p1, Lq/h3;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Lcom/qiuhui/mahjong/LicenseActivity;->c(Ljava/lang/String;Z)V

    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_1e  #00000001
    .end packed-switch
.end method
