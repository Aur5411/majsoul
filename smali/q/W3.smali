.class public final Lq/W3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Lq/a4;


# direct methods
.method public constructor <init>(Lcom/qiuhui/mahjong/OverlayService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq/W3;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lq/n;[F[ZLq/o2;)Ljava/util/List;
    .registers 15

    invoke-virtual {p4}, Lq/o2;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_b
    sget v0, Lq/N2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_29

    :cond_11
    sput v1, Lq/N2;->b:I

    sget-object v0, Lq/N2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/M2;

    invoke-interface {v1}, Lq/M2;->a()V

    goto :goto_19

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lq/W3;->b()Lq/a4;

    move-result-object v0

    const-string v1, "动作掩码长度应为 "

    const-string v2, "Mortal observation 长度应为 "

    monitor-enter v0

    :try_start_32
    invoke-virtual {p4}, Lq/o2;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3f

    monitor-exit v0

    goto/16 :goto_178

    :catchall_3f
    move-exception p1

    goto/16 :goto_1f9

    :cond_42
    :try_start_42
    iget v3, p1, Lq/n;->b:I

    mul-int/lit8 v3, v3, 0x22

    array-length v4, p2

    if-ne v4, v3, :cond_1de

    array-length v2, p3

    iget v4, p1, Lq/n;->c:I

    if-ne v2, v4, :cond_1c1

    array-length v1, p2

    const/4 v2, 0x0

    move v4, v2

    :goto_51
    if-ge v4, v1, :cond_66

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Float;->isFinite(F)Z

    move-result v5

    if-eqz v5, :cond_5e

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mortal observation 包含非有限值"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    invoke-virtual {v0, p1}, Lq/a4;->b(Lq/n;)Lai/onnxruntime/OrtSession;

    move-result-object v1

    invoke-virtual {p4}, Lq/o2;->getAsBoolean()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_74
    .catchall {:try_start_42 .. :try_end_74} :catchall_3f

    monitor-exit v0

    goto/16 :goto_178

    :cond_77
    :try_start_77
    iget-object v4, v0, Lq/a4;->b:Lai/onnxruntime/OrtEnvironment;

    if-nez v4, :cond_81

    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    move-result-object v4

    iput-object v4, v0, Lq/a4;->b:Lai/onnxruntime/OrtEnvironment;

    :cond_81
    iget-object v4, v0, Lq/a4;->b:Lai/onnxruntime/OrtEnvironment;

    iget-object v5, v0, Lq/a4;->g:Ljava/util/EnumMap;

    new-instance v6, Lq/X3;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Lq/X3;-><init>(Ljava/io/Serializable;I)V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    iget-object v6, v0, Lq/a4;->h:Ljava/util/EnumMap;

    new-instance v7, Lq/X3;

    const/4 v8, 0x1

    invoke-direct {v7, p1, v8}, Lq/X3;-><init>(Ljava/io/Serializable;I)V

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    iget-object v7, v0, Lq/a4;->e:Ljava/util/EnumMap;

    new-instance v8, Lq/Y3;

    invoke-direct {v8, v3}, Lq/Y3;-><init>(I)V

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, v0, Lq/a4;->f:Ljava/util/EnumMap;

    new-instance v7, Lq/X3;

    const/4 v8, 0x2

    invoke-direct {v7, p3, v8}, Lq/X3;-><init>(Ljava/io/Serializable;I)V

    invoke-interface {p2, p1, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    array-length v7, p3

    move v8, v2

    :goto_c8
    if-ge v8, v7, :cond_d3

    aget-boolean v9, p3, v8

    int-to-byte v9, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_c8

    :cond_d3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v4, v3, v5}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object v3
    :try_end_da
    .catchall {:try_start_77 .. :try_end_da} :catchall_3f

    :try_start_da
    sget-object v5, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    invoke-static {v4, p2, v6, v5}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p2
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_127

    :try_start_e0
    new-instance v4, Lai/onnxruntime/OrtSession$RunOptions;

    invoke-direct {v4}, Lai/onnxruntime/OrtSession$RunOptions;-><init>()V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_131

    :try_start_e5
    iget-object v5, v0, Lq/a4;->i:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, v0, Lq/a4;->i:Ljava/util/HashMap;

    const-string v6, "obs"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lq/a4;->i:Ljava/util/HashMap;

    const-string v6, "mask"

    invoke-virtual {v5, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_fd
    .catchall {:try_start_e5 .. :try_end_fd} :catchall_137

    const/4 v5, 0x0

    :try_start_fe
    invoke-virtual {p4}, Lq/o2;->getAsBoolean()Z

    move-result p4

    if-eqz p4, :cond_13b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_108
    .catchall {:try_start_fe .. :try_end_108} :catchall_139

    :try_start_108
    iget-object p3, v0, Lq/a4;->i:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    monitor-enter v4
    :try_end_10e
    .catchall {:try_start_108 .. :try_end_10e} :catchall_137

    :try_start_10e
    iget-object p3, v0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_110
    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_117

    goto :goto_11d

    :cond_117
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eq p4, v4, :cond_110

    :goto_11d
    monitor-exit v4
    :try_end_11e
    .catchall {:try_start_10e .. :try_end_11e} :catchall_134

    :try_start_11e
    invoke-virtual {v4}, Lai/onnxruntime/OrtSession$RunOptions;->close()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_131

    if-eqz p2, :cond_12a

    :try_start_123
    invoke-virtual {p2}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12a

    :catchall_127
    move-exception p1

    goto/16 :goto_1b6

    :cond_12a
    :goto_12a
    if-eqz v3, :cond_12f

    :try_start_12c
    invoke-virtual {v3}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_3f

    :cond_12f
    monitor-exit v0

    goto :goto_178

    :catchall_131
    move-exception p1

    goto/16 :goto_1ab

    :catchall_134
    move-exception p1

    :try_start_135
    monitor-exit v4
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    :try_start_136
    throw p1
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_137

    :catchall_137
    move-exception p1

    goto :goto_1a2

    :catchall_139
    move-exception p1

    goto :goto_188

    :cond_13b
    :try_start_13b
    iget-object p4, v0, Lq/a4;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v4}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p4
    :try_end_141
    .catchall {:try_start_13b .. :try_end_141} :catchall_139

    :try_start_141
    invoke-virtual {p4, v2}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v1

    invoke-interface {v1}, Lai/onnxruntime/OnnxValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    aget-object v1, v1, v2

    invoke-static {p1, v1, p3}, Lq/a4;->c(Lq/n;[F[Z)Ljava/util/List;

    move-result-object p1
    :try_end_151
    .catchall {:try_start_141 .. :try_end_151} :catchall_17c

    :try_start_151
    invoke-virtual {p4}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_139

    :try_start_154
    iget-object p3, v0, Lq/a4;->i:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    monitor-enter v4
    :try_end_15a
    .catchall {:try_start_154 .. :try_end_15a} :catchall_137

    :try_start_15a
    iget-object p3, v0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_15c
    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_163

    goto :goto_169

    :cond_163
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eq p4, v4, :cond_15c

    :goto_169
    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_15a .. :try_end_16a} :catchall_179

    :try_start_16a
    invoke-virtual {v4}, Lai/onnxruntime/OrtSession$RunOptions;->close()V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_131

    if-eqz p2, :cond_172

    :try_start_16f
    invoke-virtual {p2}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_127

    :cond_172
    if-eqz v3, :cond_177

    :try_start_174
    invoke-virtual {v3}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_3f

    :cond_177
    monitor-exit v0

    :goto_178
    return-object p1

    :catchall_179
    move-exception p1

    :try_start_17a
    monitor-exit v4
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    :try_start_17b
    throw p1
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_137

    :catchall_17c
    move-exception p1

    if-eqz p4, :cond_187

    :try_start_17f
    invoke-virtual {p4}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_183

    goto :goto_187

    :catchall_183
    move-exception p3

    :try_start_184
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_187
    :goto_187
    throw p1
    :try_end_188
    .catchall {:try_start_184 .. :try_end_188} :catchall_139

    :goto_188
    :try_start_188
    iget-object p3, v0, Lq/a4;->i:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    monitor-enter v4
    :try_end_18e
    .catchall {:try_start_188 .. :try_end_18e} :catchall_137

    :try_start_18e
    iget-object p3, v0, Lq/a4;->j:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_190
    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_19d

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v4, :cond_19d

    goto :goto_190

    :cond_19d
    monitor-exit v4
    :try_end_19e
    .catchall {:try_start_18e .. :try_end_19e} :catchall_19f

    :try_start_19e
    throw p1
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_137

    :catchall_19f
    move-exception p1

    :try_start_1a0
    monitor-exit v4
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    :try_start_1a1
    throw p1
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_137

    :goto_1a2
    :try_start_1a2
    invoke-virtual {v4}, Lai/onnxruntime/OrtSession$RunOptions;->close()V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_1a6

    goto :goto_1aa

    :catchall_1a6
    move-exception p3

    :try_start_1a7
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1aa
    throw p1
    :try_end_1ab
    .catchall {:try_start_1a7 .. :try_end_1ab} :catchall_131

    :goto_1ab
    if-eqz p2, :cond_1b5

    :try_start_1ad
    invoke-virtual {p2}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_1b1

    goto :goto_1b5

    :catchall_1b1
    move-exception p2

    :try_start_1b2
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b5
    :goto_1b5
    throw p1
    :try_end_1b6
    .catchall {:try_start_1b2 .. :try_end_1b6} :catchall_127

    :goto_1b6
    if-eqz v3, :cond_1c0

    :try_start_1b8
    invoke-virtual {v3}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1bc

    goto :goto_1c0

    :catchall_1bc
    move-exception p2

    :try_start_1bd
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c0
    :goto_1c0
    throw p1

    :cond_1c1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lq/n;->c:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "，实际为 "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1de
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "，实际为 "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1f9
    monitor-exit v0
    :try_end_1fa
    .catchall {:try_start_1bd .. :try_end_1fa} :catchall_3f

    throw p1
.end method

.method public final b()Lq/a4;
    .registers 4

    iget-object v0, p0, Lq/W3;->b:Lq/a4;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lq/W3;->b:Lq/a4;

    if-nez v0, :cond_27

    iget-object v0, p0, Lq/W3;->a:Landroid/content/Context;

    const-class v1, Lq/a4;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_23

    :try_start_f
    sget-object v2, Lq/a4;->k:Lq/a4;

    if-nez v2, :cond_1d

    new-instance v2, Lq/a4;

    invoke-direct {v2, v0}, Lq/a4;-><init>(Landroid/content/Context;)V

    sput-object v2, Lq/a4;->k:Lq/a4;

    goto :goto_1d

    :catchall_1b
    move-exception v0

    goto :goto_25

    :cond_1d
    :goto_1d
    sget-object v0, Lq/a4;->k:Lq/a4;
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1b

    :try_start_1f
    monitor-exit v1

    iput-object v0, p0, Lq/W3;->b:Lq/a4;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v0

    goto :goto_2b

    :goto_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1b

    :try_start_26
    throw v0

    :cond_27
    :goto_27
    iget-object v0, p0, Lq/W3;->b:Lq/a4;

    monitor-exit p0

    return-object v0

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    throw v0
.end method

.method public final close()V
    .registers 4

    iget-object v0, p0, Lq/W3;->b:Lq/a4;

    if-eqz v0, :cond_19

    const-class v1, Lq/a4;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lq/a4;->k:Lq/a4;

    if-ne v0, v2, :cond_12

    invoke-virtual {v0}, Lq/a4;->a()V

    monitor-exit v1

    goto :goto_19

    :catchall_10
    move-exception v0

    goto :goto_17

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_10

    invoke-virtual {v0}, Lq/a4;->close()V

    goto :goto_19

    :goto_17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_10

    throw v0

    :cond_19
    :goto_19
    return-void
.end method
