.class public final Lq/q1;
.super Lq/d;
.source "SourceFile"


# virtual methods
.method public final a(Lq/E;Lq/d2;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lq/s1;->j:Lq/s1;

    invoke-virtual {v0}, Lq/s1;->G()Lq/r1;

    move-result-object v0

    :try_start_6
    invoke-virtual {v0, p1, p2}, Lq/r1;->W(Lq/E;Lq/d2;)V
    :try_end_9
    .catch Lq/U2; {:try_start_6 .. :try_end_9} :catch_25
    .catch Lq/R4; {:try_start_6 .. :try_end_9} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_e

    invoke-virtual {v0}, Lq/r1;->U()Lq/s1;

    move-result-object p1

    return-object p1

    :catch_e
    move-exception p1

    new-instance p2, Lq/U2;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lq/r1;->U()Lq/s1;

    throw p2

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Lq/R4;->a()Lq/U2;

    move-result-object p1

    invoke-virtual {v0}, Lq/r1;->U()Lq/s1;

    throw p1

    :catch_25
    move-exception p1

    invoke-virtual {v0}, Lq/r1;->U()Lq/s1;

    throw p1
.end method
