.class public final Lq/V1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lq/j1;

.field public final c:Ljava/lang/String;

.field public final d:Lq/S1;

.field public final e:Lq/G1;

.field public f:I

.field public g:[Lq/R1;


# direct methods
.method public constructor <init>(Lq/j1;Lq/S1;Lq/G1;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/V1;->b:Lq/j1;

    invoke-virtual {p1}, Lq/j1;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lq/X1;->a(Lq/S1;Lq/G1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq/V1;->c:Ljava/lang/String;

    iput-object p2, p0, Lq/V1;->d:Lq/S1;

    iput p4, p0, Lq/V1;->a:I

    iput-object p3, p0, Lq/V1;->e:Lq/G1;

    const/4 p1, 0x0

    iput p1, p0, Lq/V1;->f:I

    return-void
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/V1;->d:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/V1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/V1;->b:Lq/j1;

    invoke-virtual {v0}, Lq/j1;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/V1;->b:Lq/j1;

    return-object v0
.end method
