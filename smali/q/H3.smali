.class public final synthetic Lq/H3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/MainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/H3;->a:Lcom/qiuhui/mahjong/MainActivity;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 2

    sget-boolean v0, Lcom/qiuhui/mahjong/MainActivity;->r:Z

    iget-object v0, p0, Lq/H3;->a:Lcom/qiuhui/mahjong/MainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lq/U5;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
