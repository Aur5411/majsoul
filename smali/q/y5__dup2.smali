.class public final synthetic Lq/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lq/I5;

.field public final synthetic f:J

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;IJJLq/I5;JI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/y5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput p2, p0, Lq/y5;->b:I

    iput-wide p3, p0, Lq/y5;->c:J

    iput-wide p5, p0, Lq/y5;->d:J

    iput-object p7, p0, Lq/y5;->e:Lq/I5;

    iput-wide p8, p0, Lq/y5;->f:J

    iput p10, p0, Lq/y5;->g:I

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v4, v0, Lq/y5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v8, v0, Lq/y5;->e:Lq/I5;

    iget v13, v0, Lq/y5;->b:I

    iget-wide v11, v0, Lq/y5;->c:J

    iget-wide v5, v0, Lq/y5;->d:J

    iget-wide v9, v0, Lq/y5;->f:J

    if-nez v1, :cond_27

    const/16 v1, 0x1e

    if-lt v13, v1, :cond_44

    :cond_27
    cmp-long v1, v15, v11

    if-ltz v1, :cond_44

    long-to-double v1, v9

    const-wide v9, 0x408f400000000000L  # 1000.0

    div-double/2addr v1, v9

    const-wide v9, 0x3fd3333333333333L  # 0.3

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const/4 v9, 0x0

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v8

    move-wide v7, v1

    invoke-virtual/range {v3 .. v9}, Lcom/qiuhui/mahjong/WebGameActivity;->p(JLq/I5;DI)V

    goto :goto_62

    :cond_44
    iget-object v1, v4, Lcom/qiuhui/mahjong/WebGameActivity;->o:Landroid/os/Handler;

    new-instance v2, Lq/z5;

    iget v7, v0, Lq/y5;->g:I

    const/4 v14, 0x1

    move-object v3, v2

    move-wide/from16 v17, v11

    invoke-direct/range {v3 .. v14}, Lq/z5;-><init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;JJII)V

    const-wide/16 v3, 0x1

    sub-long v11, v17, v15

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x78

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_62
    return-void
.end method
