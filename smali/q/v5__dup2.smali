.class public final synthetic Lq/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/v5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    sget-boolean p1, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object p1, p0, Lq/v5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {p1}, Lcom/qiuhui/mahjong/WebGameActivity;->A()V

    return-void
.end method
