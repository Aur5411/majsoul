.class public final Lq/o5;
.super Lq/I1;
.source "SourceFile"

# interfaces
.implements Lq/n5;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/o5;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lq/y3;)V
    .registers 12

    iget-object v0, p0, Lq/o5;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_19c

    goto/16 :goto_8f

    :sswitch_1c
    const-string v2, "skin_request"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x6

    goto/16 :goto_90

    :sswitch_27
    const-string v2, "round_end_hint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0x8

    goto/16 :goto_90

    :sswitch_33
    const-string v2, "skin_response"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x7

    goto :goto_90

    :sswitch_3d
    const-string v2, "socket_open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x1

    goto :goto_90

    :sswitch_47
    const-string v2, "socket_close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x5

    goto :goto_90

    :sswitch_51
    const-string v2, "frame"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0x9

    goto :goto_90

    :sswitch_5c
    const-string v2, "local_action_submitted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x4

    goto :goto_90

    :sswitch_66
    const-string v2, "animation_priority"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x3

    goto :goto_90

    :sswitch_70
    const-string v2, "decoded_event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0xa

    goto :goto_90

    :sswitch_7b
    const-string v2, "bridge_ready"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v4

    goto :goto_90

    :sswitch_85
    const-string v2, "auto_battle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v3

    goto :goto_90

    :cond_8f
    :goto_8f
    move v0, v5

    :goto_90
    const-wide/16 v6, 0xbb8

    const-wide/16 v8, 0x0

    packed-switch v0, :pswitch_data_1ca

    :pswitch_97  #0x2
    goto/16 :goto_19a

    :pswitch_99  #0xa
    const-string v0, "event"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_19a

    iget-object p1, p1, Lq/y3;->b:Lq/s2;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq/s2;->l(Ljava/lang/String;)V

    goto/16 :goto_19a

    :pswitch_ac  #0x9
    iget-object p1, p1, Lq/y3;->a:Lq/w3;

    const-string v0, "socketId"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "direction"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    monitor-enter p1
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c5} :catch_19a

    if-nez v5, :cond_c9

    :goto_c7
    move v6, v4

    goto :goto_cb

    :cond_c9
    :try_start_c9
    array-length v4, v5

    goto :goto_c7

    :goto_cb
    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v5

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lq/w3;->a(ILjava/lang/String;[BII)V
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_d6

    :try_start_d3
    monitor-exit p1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d4} :catch_19a

    goto/16 :goto_19a

    :catchall_d6
    move-exception v0

    :try_start_d7
    monitor-exit p1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    :try_start_d8
    throw v0

    :pswitch_d9  #0x8
    iget-object p1, p1, Lq/y3;->a:Lq/w3;

    const-string v0, "finalMatch"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-enter p1
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e2} :catch_19a

    :try_start_e2
    iget-object v1, p1, Lq/w3;->b:Lq/r2;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v2, v3}, Lq/r2;->g(J)V

    invoke-virtual {p1, v0}, Lq/w3;->s(Z)V
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_ef

    :try_start_ec
    monitor-exit p1
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ed} :catch_19a

    goto/16 :goto_19a

    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit p1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v0

    :pswitch_f2  #0x7
    iget-object p1, p1, Lq/y3;->c:Lq/A2;

    if-nez p1, :cond_f8

    goto/16 :goto_19a

    :cond_f8
    const-string v0, "socketId"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lq/A2;->v(ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_19a

    :pswitch_109  #0x6
    iget-object p1, p1, Lq/y3;->c:Lq/A2;

    if-nez p1, :cond_10f

    goto/16 :goto_19a

    :cond_10f
    const-string v0, "socketId"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lq/A2;->m(ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_19a

    :pswitch_120  #0x5
    const-string v0, "socketId"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lq/y3;->a:Lq/w3;

    invoke-virtual {v1, v0}, Lq/w3;->p(I)Z

    move-result v1

    iget-object v2, p1, Lq/y3;->a:Lq/w3;

    invoke-virtual {v2, v0}, Lq/w3;->d(I)V

    iget-object v2, p1, Lq/y3;->c:Lq/A2;

    if-eqz v2, :cond_138

    invoke-virtual {v2, v0}, Lq/A2;->i(I)V

    :cond_138
    if-eqz v1, :cond_19a

    iget-object v1, p1, Lq/y3;->d:Lq/r2;

    invoke-virtual {v1}, Lq/r2;->a()V

    monitor-enter p1
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_140} :catch_19a

    :try_start_140
    iget-wide v1, p1, Lq/y3;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lq/y3;->f:J

    iput v0, p1, Lq/y3;->g:I

    iget-object v3, p1, Lq/y3;->e:Landroid/os/Handler;

    new-instance v4, Lq/x3;

    invoke-direct {v4, p1, v1, v2, v0}, Lq/x3;-><init>(Lq/y3;JI)V

    const-wide/16 v0, 0x1770

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_155
    .catchall {:try_start_140 .. :try_end_155} :catchall_157

    :try_start_155
    monitor-exit p1
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_156} :catch_19a

    goto :goto_19a

    :catchall_157
    move-exception v0

    :try_start_158
    monitor-exit p1
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    :try_start_159
    throw v0

    :pswitch_15a  #0x4
    const-string v0, "milliseconds"

    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_178

    iget-object v2, p1, Lq/y3;->d:Lq/r2;

    iget-object v2, v2, Lq/r2;->a:Lq/W3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lq/y3;->d:Lq/r2;

    invoke-virtual {v2, v0, v1}, Lq/r2;->g(J)V

    :cond_178
    iget-object p1, p1, Lq/y3;->d:Lq/r2;

    invoke-virtual {p1}, Lq/r2;->a()V

    goto :goto_19a

    :pswitch_17e  #0x3
    iget-object p1, p1, Lq/y3;->d:Lq/r2;

    const-string v0, "milliseconds"

    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lq/r2;->g(J)V

    goto :goto_19a

    :pswitch_192  #0x0, 0x1
    iget-object p1, p1, Lq/y3;->d:Lq/r2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lq/r;->c()V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_19a} :catch_19a

    :catch_19a
    :cond_19a
    :goto_19a
    return-void

    nop

    :sswitch_data_19c
    .sparse-switch
        -0x67ea82b8 -> :sswitch_85
        -0x504baa93 -> :sswitch_7b
        -0x130dfeaf -> :sswitch_70
        0x26f43ff -> :sswitch_66
        0x527fc86 -> :sswitch_5c
        0x5d2a96d -> :sswitch_51
        0x10e3be2c -> :sswitch_47
        0x3a5f6f96 -> :sswitch_3d
        0x56943cc3 -> :sswitch_33
        0x56f2befc -> :sswitch_27
        0x65c9b1cd -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_192  #00000000
        :pswitch_192  #00000001
        :pswitch_97  #00000002
        :pswitch_17e  #00000003
        :pswitch_15a  #00000004
        :pswitch_120  #00000005
        :pswitch_109  #00000006
        :pswitch_f2  #00000007
        :pswitch_d9  #00000008
        :pswitch_ac  #00000009
        :pswitch_99  #0000000a
    .end packed-switch
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lq/o5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_23

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lq/o5;

    if-eq v2, v1, :cond_d

    goto :goto_23

    :cond_d
    iget-object v0, p0, Lq/o5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    check-cast p1, Lq/o5;

    iget-object p1, p1, Lq/o5;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_23
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lq/o5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const-class v1, Lq/o5;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lq/o5;->a:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "a"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_19

    :cond_13
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lq/o5;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    array-length v5, v2

    if-ge v0, v5, :cond_49

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v5, v2

    sub-int/2addr v5, v1

    if-eq v0, v5, :cond_47

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    add-int/2addr v0, v1

    goto :goto_2c

    :cond_49
    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
