.class public abstract Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/m4;


# static fields
.field public static final a:Lq/d2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lq/d2;->a()Lq/d2;

    move-result-object v0

    sput-object v0, Lq/d;->a:Lq/d2;

    return-void
.end method

.method public static b(Lq/Q3;)V
    .registers 2

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Lq/R3;->h()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, p0, Lq/c;

    if-eqz v0, :cond_13

    check-cast p0, Lq/c;

    invoke-static {p0}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object p0

    goto :goto_1a

    :cond_13
    new-instance p0, Lq/R4;

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {p0}, Lq/R4;->a()Lq/U2;

    move-result-object p0

    throw p0

    :cond_1f
    return-void
.end method
