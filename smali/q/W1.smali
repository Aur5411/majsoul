.class public final Lq/W1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:Lq/p1;

.field public final b:Ljava/lang/String;

.field public final c:Lq/S1;

.field public final d:[Lq/U1;


# direct methods
.method public constructor <init>(Lq/p1;Lq/S1;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/W1;->a:Lq/p1;

    invoke-virtual {p1}, Lq/p1;->C()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lq/X1;->a(Lq/S1;Lq/G1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/W1;->b:Ljava/lang/String;

    iput-object p2, p0, Lq/W1;->c:Lq/S1;

    iget-object v0, p1, Lq/p1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lq/U1;

    iput-object v0, p0, Lq/W1;->d:[Lq/U1;

    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p1, Lq/p1;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lq/W1;->d:[Lq/U1;

    new-instance v2, Lq/U1;

    iget-object v3, p1, Lq/p1;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/c1;

    invoke-direct {v2, v3, p2, p0}, Lq/U1;-><init>(Lq/c1;Lq/S1;Lq/W1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_39
    iget-object p1, p2, Lq/S1;->g:Lq/J1;

    invoke-virtual {p1, p0}, Lq/J1;->b(Lq/T1;)V

    return-void
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/W1;->c:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/W1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/W1;->a:Lq/p1;

    invoke-virtual {v0}, Lq/p1;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/W1;->a:Lq/p1;

    return-object v0
.end method
