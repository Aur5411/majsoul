.class public final synthetic Lq/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Lq/I5;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JILq/I5;JJII)V
    .registers 12

    iput p11, p0, Lq/z5;->a:I

    iput-object p1, p0, Lq/z5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/z5;->c:J

    iput p4, p0, Lq/z5;->d:I

    iput-object p5, p0, Lq/z5;->e:Lq/I5;

    iput-wide p6, p0, Lq/z5;->f:J

    iput-wide p8, p0, Lq/z5;->g:J

    iput p10, p0, Lq/z5;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget v0, p0, Lq/z5;->a:I

    packed-switch v0, :pswitch_data_32

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget v0, p0, Lq/z5;->h:I

    add-int/lit8 v10, v0, 0x1

    iget-object v1, p0, Lq/z5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-wide v2, p0, Lq/z5;->c:J

    iget v4, p0, Lq/z5;->d:I

    iget-object v5, p0, Lq/z5;->e:Lq/I5;

    iget-wide v6, p0, Lq/z5;->f:J

    iget-wide v8, p0, Lq/z5;->g:J

    invoke-virtual/range {v1 .. v10}, Lcom/qiuhui/mahjong/WebGameActivity;->H(JILq/I5;JJI)V

    return-void

    :pswitch_1b  #0x0
    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget v0, p0, Lq/z5;->h:I

    add-int/lit8 v10, v0, 0x1

    iget-object v1, p0, Lq/z5;->b:Lcom/qiuhui/mahjong/WebGameActivity;

    iget-wide v2, p0, Lq/z5;->c:J

    iget v4, p0, Lq/z5;->d:I

    iget-object v5, p0, Lq/z5;->e:Lq/I5;

    iget-wide v6, p0, Lq/z5;->f:J

    iget-wide v8, p0, Lq/z5;->g:J

    invoke-virtual/range {v1 .. v10}, Lcom/qiuhui/mahjong/WebGameActivity;->H(JILq/I5;JJI)V

    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b  #00000000
    .end packed-switch
.end method
