.class public final synthetic Lq/G5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/G5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput p2, p0, Lq/G5;->b:F

    iput p3, p0, Lq/G5;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/G5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget v1, p0, Lq/G5;->b:F

    iget v2, p0, Lq/G5;->c:F

    invoke-virtual {v0, v1, v2}, Lcom/qiuhui/mahjong/WebGameActivity;->m(FF)V

    return-void
.end method
