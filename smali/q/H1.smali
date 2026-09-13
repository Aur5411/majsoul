.class public final Lq/H1;
.super Lq/T1;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lq/S1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lq/S1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lq/H1;->c:Lq/S1;

    iput-object p2, p0, Lq/H1;->b:Ljava/lang/String;

    iput-object p1, p0, Lq/H1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/H1;->c:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/H1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/H1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/H1;->c:Lq/S1;

    iget-object v0, v0, Lq/S1;->a:Lq/P0;

    return-object v0
.end method
