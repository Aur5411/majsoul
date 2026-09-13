.class public final synthetic Lq/A3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/A3;->a:Lcom/qiuhui/mahjong/MainActivity;

    return-void
.end method


# virtual methods
.method public final a(Lq/A4;)V
    .registers 5

    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object v0, p0, Lq/A3;->a:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lq/m2;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p1, v2}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
