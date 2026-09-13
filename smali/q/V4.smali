.class public final Lq/V4;
.super Lq/d;
.source "SourceFile"


# virtual methods
.method public final a(Lq/E;Lq/d2;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lq/W4;->n()Lq/S4;

    move-result-object p2

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lq/E;->z()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2, v0, p1}, Lq/S4;->q(ILq/E;)Z

    move-result v0
    :try_end_e
    .catch Lq/U2; {:try_start_4 .. :try_end_e} :catch_23
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_15

    if-nez v0, :cond_4

    :cond_10
    invoke-virtual {p2}, Lq/S4;->n()Lq/W4;

    move-result-object p1

    return-object p1

    :catch_15
    move-exception p1

    new-instance v0, Lq/U2;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lq/S4;->n()Lq/W4;

    throw v0

    :catch_23
    move-exception p1

    invoke-virtual {p2}, Lq/S4;->n()Lq/W4;

    throw p1
.end method
