.class public final synthetic Lq/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq/w3;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lq/w3;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/s3;->a:Lq/w3;

    iput-wide p2, p0, Lq/s3;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lq/s3;->a:Lq/w3;

    iget-wide v1, p0, Lq/s3;->b:J

    invoke-virtual {v0, v1, v2}, Lq/w3;->v(J)V

    return-void
.end method
