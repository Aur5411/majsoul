.class public final synthetic Lq/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lq/r2;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lq/r2;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/o2;->a:Lq/r2;

    iput-wide p2, p0, Lq/o2;->b:J

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 5

    iget-object v0, p0, Lq/o2;->a:Lq/r2;

    iget-object v0, v0, Lq/r2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lq/o2;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
