.class public final Lq/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq/G1;

.field public final b:I


# direct methods
.method public constructor <init>(ILq/G1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq/a2;->a:Lq/G1;

    iput p1, p0, Lq/a2;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lq/a2;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lq/a2;

    iget-object v0, p1, Lq/a2;->a:Lq/G1;

    iget-object v2, p0, Lq/a2;->a:Lq/G1;

    if-ne v2, v0, :cond_15

    iget v0, p0, Lq/a2;->b:I

    iget p1, p1, Lq/a2;->b:I

    if-ne v0, p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lq/a2;->a:Lq/G1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lq/a2;->b:I

    add-int/2addr v0, v1

    return v0
.end method
