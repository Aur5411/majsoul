.class public final synthetic Lq/M5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq/Z5;

.field public final synthetic b:Lq/L2;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lq/Z5;Lq/L2;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/M5;->a:Lq/Z5;

    iput-object p2, p0, Lq/M5;->b:Lq/L2;

    iput-object p3, p0, Lq/M5;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lq/y;->n()Ljava/lang/ClassLoader;

    sget-object v0, Lq/R5;->f:Lq/h;

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    iget-object v1, p0, Lq/M5;->a:Lq/Z5;

    iget-object v2, p0, Lq/M5;->b:Lq/L2;

    if-eqz v0, :cond_15

    sget-object v0, Lq/S5;->a:Lq/W5;

    invoke-interface {v0, v1, v2}, Lq/W5;->d(Lq/Z5;Lq/L2;)V

    goto :goto_42

    :cond_15
    sget-object v0, Lq/R5;->g:Lq/h;

    invoke-virtual {v0}, Lq/i;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lq/S5;->a:Lq/W5;

    new-instance v3, Lq/c4;

    invoke-direct {v3, v2}, Lq/c4;-><init>(Lq/L2;)V

    invoke-interface {v0, v1, v3}, Lq/W5;->k(Lq/Z5;Lq/c4;)V

    goto :goto_42

    :cond_28
    iget-object v0, p0, Lq/M5;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lq/r3;

    invoke-direct {v1, v2}, Lq/r3;-><init>(Lq/L2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_42
    return-void
.end method
