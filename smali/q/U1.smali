.class public final Lq/U1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:Lq/c1;

.field public final b:Ljava/lang/String;

.field public final c:Lq/S1;

.field public d:Lq/G1;

.field public e:Lq/G1;


# direct methods
.method public constructor <init>(Lq/c1;Lq/S1;Lq/W1;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/U1;->a:Lq/c1;

    iput-object p2, p0, Lq/U1;->c:Lq/S1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lq/W1;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq/c1;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq/U1;->b:Ljava/lang/String;

    iget-object p1, p2, Lq/S1;->g:Lq/J1;

    invoke-virtual {p1, p0}, Lq/J1;->b(Lq/T1;)V

    return-void
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/U1;->c:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/U1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/U1;->a:Lq/c1;

    invoke-virtual {v0}, Lq/c1;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/U1;->a:Lq/c1;

    return-object v0
.end method
