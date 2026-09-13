.class public final Lq/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:J


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1
    const-string v8, ""

    const-wide/16 v9, 0x0

    const-string v4, ""

    const-string v5, ""

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lq/h3;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .registers 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lq/h3;->a:Z

    .line 4
    iput-object p2, p0, Lq/h3;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lq/h3;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lq/h3;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lq/h3;->e:Ljava/lang/String;

    .line 8
    iput-wide p6, p0, Lq/h3;->f:J

    .line 9
    iput-object p8, p0, Lq/h3;->g:Ljava/lang/String;

    .line 10
    iput-wide p9, p0, Lq/h3;->h:J

    return-void
.end method
