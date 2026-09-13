.class public final synthetic Lq/V2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/V2;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lq/W2;

    iget-object v1, p0, Lq/V2;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    invoke-direct {v0, v1}, Lq/W2;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    return-object v0
.end method
