.class public final synthetic Lq/B5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:J

.field public final synthetic c:Lq/I5;

.field public final synthetic d:D

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JLq/I5;DI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/B5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/B5;->b:J

    iput-object p4, p0, Lq/B5;->c:Lq/I5;

    iput-wide p5, p0, Lq/B5;->d:D

    iput p7, p0, Lq/B5;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    const-wide/high16 v0, 0x3fd0000000000000L  # 0.25

    iget-wide v2, p0, Lq/B5;->d:D

    add-double v8, v2, v0

    iget v0, p0, Lq/B5;->e:I

    add-int/lit8 v10, v0, 0x1

    iget-object v4, p0, Lq/B5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-wide v5, p0, Lq/B5;->b:J

    iget-object v7, p0, Lq/B5;->c:Lq/I5;

    invoke-virtual/range {v4 .. v10}, Lcom/qiuhui/mahjong/WebGameActivity;->p(JLq/I5;DI)V

    return-void
.end method
