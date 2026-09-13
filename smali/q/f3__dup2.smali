.class public final synthetic Lq/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Lq/g3;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLq/g3;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/f3;->a:Landroid/content/Context;

    iput-object p2, p0, Lq/f3;->b:Ljava/lang/String;

    iput-object p3, p0, Lq/f3;->c:Ljava/lang/String;

    iput-object p4, p0, Lq/f3;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lq/f3;->e:Z

    iput-object p6, p0, Lq/f3;->f:Lq/g3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lq/f3;->a:Landroid/content/Context;

    iget-object v1, p0, Lq/f3;->b:Ljava/lang/String;

    iget-object v2, p0, Lq/f3;->c:Ljava/lang/String;

    iget-object v3, p0, Lq/f3;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lq/f3;->e:Z

    :try_start_a
    invoke-static {v0, v1, v2, v3, v4}, Lq/i3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lq/h3;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_19

    :catch_f
    new-instance v0, Lq/h3;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "无法连接授权服务，请检查网络后重试"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lq/h3;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_19
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lq/m2;

    iget-object v3, p0, Lq/f3;->f:Lq/g3;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lq/m2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
