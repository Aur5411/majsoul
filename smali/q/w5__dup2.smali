.class public final synthetic Lq/w5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:Lq/m;

.field public final synthetic c:Lq/I5;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;Lq/m;Lq/I5;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/w5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-object p2, p0, Lq/w5;->b:Lq/m;

    iput-object p3, p0, Lq/w5;->c:Lq/I5;

    iput-wide p4, p0, Lq/w5;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v1, p0, Lq/w5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lq/w5;->b:Lq/m;

    iget-wide v2, v0, Lq/m;->a:J

    iget-wide v4, p0, Lq/w5;->d:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L  # 1000.0

    div-double/2addr v4, v6

    const-wide v6, 0x3fd3333333333333L  # 0.3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v4, p0, Lq/w5;->c:Lq/I5;

    invoke-virtual/range {v1 .. v7}, Lcom/qiuhui/mahjong/WebGameActivity;->p(JLq/I5;DI)V

    return-void
.end method
