.class public final synthetic Lq/e5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;[Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/e5;->a:Landroid/os/Handler;

    iput-object p2, p0, Lq/e5;->b:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    const/4 p1, 0x0

    iget-object v0, p0, Lq/e5;->b:[Ljava/lang/Runnable;

    aget-object p1, v0, p1

    iget-object v0, p0, Lq/e5;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
