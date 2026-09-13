.class public final Lq/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/b;


# instance fields
.field public final a:Lq/s2;

.field public b:Lq/a;

.field public c:Lq/c;

.field public d:Z


# direct methods
.method public constructor <init>(Lq/K2;Lq/s2;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq/S2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lq/q4;->c:Lq/c;

    iput-object p2, p0, Lq/q4;->a:Lq/s2;

    iput-boolean p3, p0, Lq/q4;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lq/c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/q4;->d:Z

    invoke-virtual {p0}, Lq/q4;->c()Lq/c;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lq/a;
    .registers 3

    iget-object v0, p0, Lq/q4;->b:Lq/a;

    if-nez v0, :cond_16

    iget-object v0, p0, Lq/q4;->c:Lq/c;

    invoke-virtual {v0, p0}, Lq/c;->q(Lq/q4;)Lq/a;

    move-result-object v0

    iput-object v0, p0, Lq/q4;->b:Lq/a;

    iget-object v1, p0, Lq/q4;->c:Lq/c;

    invoke-virtual {v0, v1}, Lq/a;->u(Lq/c;)Lq/a;

    iget-object v0, p0, Lq/q4;->b:Lq/a;

    invoke-virtual {v0}, Lq/a;->t()V

    :cond_16
    iget-object v0, p0, Lq/q4;->b:Lq/a;

    return-object v0
.end method

.method public final c()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/q4;->c:Lq/c;

    if-nez v0, :cond_c

    iget-object v0, p0, Lq/q4;->b:Lq/a;

    invoke-virtual {v0}, Lq/a;->p()Lq/c;

    move-result-object v0

    iput-object v0, p0, Lq/q4;->c:Lq/c;

    :cond_c
    iget-object v0, p0, Lq/q4;->c:Lq/c;

    return-object v0
.end method

.method public final d(Lq/c;)V
    .registers 4

    iget-object v0, p0, Lq/q4;->b:Lq/a;

    if-nez v0, :cond_f

    iget-object v0, p0, Lq/q4;->c:Lq/c;

    invoke-interface {v0}, Lq/S3;->i()Lq/c;

    move-result-object v1

    if-ne v0, v1, :cond_f

    iput-object p1, p0, Lq/q4;->c:Lq/c;

    goto :goto_16

    :cond_f
    invoke-virtual {p0}, Lq/q4;->b()Lq/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq/a;->u(Lq/c;)Lq/a;

    :goto_16
    iget-object p1, p0, Lq/q4;->b:Lq/a;

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    iput-object p1, p0, Lq/q4;->c:Lq/c;

    :cond_1d
    iget-boolean p1, p0, Lq/q4;->d:Z

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lq/q4;->a:Lq/s2;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lq/s2;->e()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/q4;->d:Z

    :cond_2b
    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lq/q4;->b:Lq/a;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lq/q4;->c:Lq/c;

    :cond_7
    iget-boolean v0, p0, Lq/q4;->d:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lq/q4;->a:Lq/s2;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lq/s2;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/q4;->d:Z

    :cond_15
    return-void
.end method
