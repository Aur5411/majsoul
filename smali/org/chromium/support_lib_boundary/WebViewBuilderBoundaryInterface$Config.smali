.class public Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/LinkedHashMap;

.field public baseline:I

.field public final c:Ljava/util/ArrayList;

.field public profileName:Ljava/lang/String;

.field public restrictJavascriptInterface:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->baseline:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/function/BiConsumer;

    invoke-virtual {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->accept(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public accept(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->baseline:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->restrictJavascriptInterface:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4
    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->b:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->c:Ljava/util/ArrayList;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->profileName:Ljava/lang/String;

    if-eqz v0, :cond_45

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->profileName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "A duplicate JavaScript interface was provided for \""

    const-string v0, "\""

    invoke-static {p3, p2, v0}, Lq/I1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
