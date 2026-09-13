.class public final Lq/A4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq/A4;->a:I

    const-string p1, ""

    if-nez p2, :cond_a

    move-object p2, p1

    :cond_a
    iput-object p2, p0, Lq/A4;->b:Ljava/lang/String;

    const/16 p2, 0x64

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lq/A4;->c:I

    if-nez p4, :cond_1c

    move-object p4, p1

    :cond_1c
    iput-object p4, p0, Lq/A4;->d:Ljava/lang/String;

    return-void
.end method
