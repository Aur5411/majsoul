.class public final synthetic Lq/D5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/qiuhui/mahjong/WebGameActivity;

.field public final synthetic b:J

.field public final synthetic c:Lq/I5;


# direct methods
.method public synthetic constructor <init>(Lcom/qiuhui/mahjong/WebGameActivity;JLq/I5;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/D5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    iput-wide p2, p0, Lq/D5;->b:J

    iput-object p4, p0, Lq/D5;->c:Lq/I5;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    iget-object v0, p0, Lq/D5;->a:Lcom/qiuhui/mahjong/WebGameActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-wide v1, p0, Lq/D5;->b:J

    invoke-static {v1, v2}, Lcom/qiuhui/mahjong/WebGameActivity;->t(J)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lq/D5;->c:Lq/I5;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/qiuhui/mahjong/WebGameActivity;->l(JLq/I5;I)V

    :cond_1f
    return-void
.end method
