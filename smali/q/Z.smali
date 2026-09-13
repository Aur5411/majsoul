.class public final Lq/Z;
.super Lq/d;
.source "SourceFile"


# virtual methods
.method public final a(Lq/E;Lq/d2;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lq/b0;->l:Lq/b0;

    invoke-virtual {v0}, Lq/b0;->I()Lq/a0;

    move-result-object v0

    :try_start_6
    invoke-virtual {v0, p1, p2}, Lq/a0;->V(Lq/E;Lq/d2;)Lq/a0;
    :try_end_9
    .catch Lq/U2; {:try_start_6 .. :try_end_9} :catch_25
    .catch Lq/R4; {:try_start_6 .. :try_end_9} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_e

    invoke-virtual {v0}, Lq/a0;->U()Lq/b0;

    move-result-object p1

    return-object p1

    :catch_e
    move-exception p1

    new-instance p2, Lq/U2;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lq/a0;->U()Lq/b0;

    throw p2

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Lq/R4;->a()Lq/U2;

    move-result-object p1

    invoke-virtual {v0}, Lq/a0;->U()Lq/b0;

    throw p1

    :catch_25
    move-exception p1

    invoke-virtual {v0}, Lq/a0;->U()Lq/b0;

    throw p1
.end method
