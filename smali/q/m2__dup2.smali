.class public final synthetic Lq/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lq/m2;->a:I

    iput-object p1, p0, Lq/m2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq/m2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v1, p0

    iget v0, v1, Lq/m2;->a:I

    packed-switch v0, :pswitch_data_2ea

    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/qiuhui/mahjong/WebGameActivity;

    iget-object v0, v0, Lcom/qiuhui/mahjong/WebGameActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    iget-object v3, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_17
    return-void

    :pswitch_18  #0x6
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lq/y3;

    iget-object v2, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v2, Lq/n5;

    sget-object v3, Lq/p5;->a:Lq/y3;

    if-ne v3, v0, :cond_27

    invoke-interface {v2, v0}, Lq/n5;->a(Lq/y3;)V

    :cond_27
    return-void

    :pswitch_28  #0x5
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lq/A3;

    iget-object v2, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const/16 v9, 0x64

    const/4 v11, 0x0

    :try_start_33
    sget-object v3, Lq/C4;->e:Lq/A2;

    sget-object v4, Lq/C4;->f:Ljava/lang/String;
    :try_end_37
    .catch Lq/B4; {:try_start_33 .. :try_end_37} :catch_18d
    .catch Lq/z4; {:try_start_33 .. :try_end_37} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_169
    .catchall {:try_start_33 .. :try_end_37} :catchall_74

    const/4 v5, 0x5

    const/16 v12, 0x8

    const-string v6, "全皮肤数据已是最新"

    const-string v13, ""

    if-nez v3, :cond_77

    :try_start_40
    const-string v3, "正在确认最新版本"

    new-instance v4, Lq/A4;

    const/4 v7, 0x1

    invoke-direct {v4, v7, v13, v5, v3}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v4}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    invoke-static {v13}, Lq/C4;->d(Ljava/lang/String;)Lq/J1;

    move-result-object v3

    iget-boolean v4, v3, Lq/J1;->a:Z

    if-nez v4, :cond_61

    iget-object v4, v3, Lq/J1;->b:Ljava/lang/Object;

    check-cast v4, Lq/A2;

    if-nez v4, :cond_5a

    goto :goto_61

    :cond_5a
    iget-object v3, v3, Lq/J1;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    move-object v15, v3

    move-object v14, v4

    goto :goto_79

    :cond_61
    :goto_61
    invoke-static {v2}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lq/A4;

    invoke-direct {v4, v12, v3, v9, v6}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v4}, Lq/C4;->f(Lq/A3;Lq/A4;)V
    :try_end_6d
    .catch Lq/B4; {:try_start_40 .. :try_end_6d} :catch_18d
    .catch Lq/z4; {:try_start_40 .. :try_end_6d} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_6d} :catch_169
    .catchall {:try_start_40 .. :try_end_6d} :catchall_74

    :goto_6d
    sget-object v0, Lq/C4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_19f

    :catchall_74
    move-exception v0

    goto/16 :goto_1a0

    :cond_77
    move-object v14, v3

    move-object v15, v4

    :goto_79
    :try_start_79
    invoke-static {v2}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v16, 0x0

    if-eqz v3, :cond_9d

    sput-object v16, Lq/C4;->e:Lq/A2;

    sput-object v13, Lq/C4;->f:Ljava/lang/String;

    invoke-static {v2, v15}, Lq/y;->x(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lq/A4;

    invoke-direct {v4, v12, v3, v9, v6}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v4}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto :goto_6d

    :cond_9d
    iget-object v3, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "正在下载皮肤数据"

    new-instance v6, Lq/A4;

    const/16 v7, 0xc

    const/4 v8, 0x4

    invoke-direct {v6, v8, v3, v7, v4}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v6}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    iget-object v3, v14, Lq/A2;->b:Ljava/lang/Object;

    check-cast v3, Lq/y4;

    new-instance v4, Lq/x4;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v14, v6}, Lq/x4;-><init>(Lq/A3;Lq/A2;I)V

    const/high16 v6, 0x100000

    invoke-static {v3, v6, v4}, Lq/C4;->c(Lq/y4;ILq/x4;)[B

    move-result-object v3

    iget-object v4, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, "正在下载协议数据"

    new-instance v7, Lq/A4;

    const/16 v8, 0x26

    invoke-direct {v7, v5, v4, v8, v6}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v7}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    iget-object v4, v14, Lq/A2;->c:Ljava/lang/Object;

    check-cast v4, Lq/y4;

    new-instance v5, Lq/x4;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v14, v6}, Lq/x4;-><init>(Lq/A3;Lq/A2;I)V

    const/high16 v6, 0x200000

    invoke-static {v4, v6, v5}, Lq/C4;->c(Lq/y4;ILq/x4;)[B

    move-result-object v6

    iget-object v4, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "正在校验完整性与兼容性"

    new-instance v7, Lq/A4;

    const/16 v8, 0x50

    const/4 v10, 0x6

    invoke-direct {v7, v10, v4, v8, v5}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v7}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    new-instance v5, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Lq/F2;->c(Ljava/lang/String;)Lq/F2;

    move-result-object v3

    invoke-virtual {v3}, Lq/F2;->a()Z

    move-result v3

    if-eqz v3, :cond_161

    new-instance v3, Lq/v2;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lq/v2;-><init>(Ljava/io/ByteArrayInputStream;)V

    iget-object v4, v3, Lq/v2;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/16 v7, 0x190

    if-lt v4, v7, :cond_159

    invoke-virtual {v3}, Lq/v2;->m()Z

    move-result v3

    if-eqz v3, :cond_159

    iget-object v3, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "正在安全安装更新"

    new-instance v7, Lq/A4;

    const/16 v8, 0x5c

    const/4 v10, 0x7

    invoke-direct {v7, v10, v3, v8, v4}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v7}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    iget-object v3, v14, Lq/A2;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, v14, Lq/A2;->b:Ljava/lang/Object;

    check-cast v3, Lq/y4;

    iget-object v7, v3, Lq/y4;->d:Ljava/lang/String;

    iget-object v3, v14, Lq/A2;->c:Ljava/lang/Object;

    check-cast v3, Lq/y4;

    iget-object v8, v3, Lq/y4;->d:Ljava/lang/String;

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lq/y;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v15}, Lq/y;->x(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v16, Lq/C4;->e:Lq/A2;

    sput-object v13, Lq/C4;->f:Ljava/lang/String;

    iget-object v3, v14, Lq/A2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "更新完成 重启游戏后生效"

    new-instance v5, Lq/A4;

    invoke-direct {v5, v12, v3, v9, v4}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v5}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto/16 :goto_6d

    :cond_159
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Incompatible MajsoulData Liqi descriptor"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_161
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Incomplete MajsoulData max_data.yaml"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_169
    .catch Lq/B4; {:try_start_79 .. :try_end_169} :catch_18d
    .catch Lq/z4; {:try_start_79 .. :try_end_169} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_169} :catch_169
    .catchall {:try_start_79 .. :try_end_169} :catchall_74

    :catch_169
    :try_start_169
    invoke-static {v2}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "更新失败 已保留原有可用版本"

    new-instance v4, Lq/A4;

    const/16 v5, 0x9

    invoke-direct {v4, v5, v2, v9, v3}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v4}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto/16 :goto_6d

    :catch_17b
    invoke-static {v2}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lq/A4;

    const-string v4, "⚠当前网络无法连接更新服务器，您可以一段时间后重试，或者建议您“科学上网”后重试。"

    const/16 v5, 0x9

    invoke-direct {v3, v5, v2, v9, v4}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v3}, Lq/C4;->f(Lq/A3;Lq/A4;)V

    goto/16 :goto_6d

    :catch_18d
    invoke-static {v2}, Lq/C4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "检测到对局或高延迟 已暂停本次更新"

    new-instance v4, Lq/A4;

    const/16 v5, 0x9

    invoke-direct {v4, v5, v2, v9, v3}, Lq/A4;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v4}, Lq/C4;->f(Lq/A3;Lq/A4;)V
    :try_end_19d
    .catchall {:try_start_169 .. :try_end_19d} :catchall_74

    goto/16 :goto_6d

    :goto_19f
    return-void

    :goto_1a0
    sget-object v2, Lq/C4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :pswitch_1a6  #0x4
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/qiuhui/mahjong/MainActivity;

    iget-object v2, v0, Lcom/qiuhui/mahjong/MainActivity;->h:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1b8

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1b8

    move v2, v3

    goto :goto_1b9

    :cond_1b8
    move v2, v4

    :goto_1b9
    iget-object v5, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v5, Lq/A4;

    iget v6, v5, Lq/A4;->a:I

    invoke-static {v6}, Lq/I1;->f(I)I

    move-result v6

    iget-object v7, v5, Lq/A4;->b:Ljava/lang/String;

    const-string v8, "检查"

    iget-object v9, v5, Lq/A4;->d:Ljava/lang/String;

    packed-switch v6, :pswitch_data_2fc

    goto :goto_228

    :pswitch_1cd  #0x8
    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    if-eqz v2, :cond_1d5

    invoke-virtual {v0, v5, v3}, Lcom/qiuhui/mahjong/MainActivity;->i(Lq/A4;Z)V

    goto :goto_228

    :cond_1d5
    const-string v2, "重试"

    invoke-virtual {v0, v9, v2, v3, v4}, Lcom/qiuhui/mahjong/MainActivity;->h(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_228

    :pswitch_1db  #0x7
    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->l:Z

    const-string v2, "全皮肤数据已是最新  "

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8, v3, v4}, Lcom/qiuhui/mahjong/MainActivity;->h(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v5, v3}, Lcom/qiuhui/mahjong/MainActivity;->i(Lq/A4;Z)V

    goto :goto_228

    :pswitch_1ec  #0x3, 0x4, 0x5, 0x6
    iput-boolean v3, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    invoke-virtual {v0, v5, v4}, Lcom/qiuhui/mahjong/MainActivity;->i(Lq/A4;Z)V

    goto :goto_228

    :pswitch_1f2  #0x2
    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->l:Z

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1fd

    goto :goto_211

    :cond_1fd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_211
    invoke-virtual {v0, v9, v8, v3, v4}, Lcom/qiuhui/mahjong/MainActivity;->h(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_228

    :pswitch_215  #0x1
    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    iput-boolean v3, v0, Lcom/qiuhui/mahjong/MainActivity;->l:Z

    const-string v2, "更新"

    invoke-virtual {v0, v9, v2, v3, v3}, Lcom/qiuhui/mahjong/MainActivity;->h(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_228

    :pswitch_21f  #0x0
    iput-boolean v3, v0, Lcom/qiuhui/mahjong/MainActivity;->m:Z

    iput-boolean v4, v0, Lcom/qiuhui/mahjong/MainActivity;->l:Z

    const-string v2, "检查中"

    invoke-virtual {v0, v9, v2, v4, v4}, Lcom/qiuhui/mahjong/MainActivity;->h(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_228
    return-void

    :pswitch_229  #0x3
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lq/z3;

    iget-object v2, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/net/Socket;

    :try_start_231
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_241
    .catchall {:try_start_231 .. :try_end_241} :catchall_272

    :catch_241
    :cond_241
    :goto_241
    :try_start_241
    iget-boolean v4, v0, Lq/z3;->c:Z

    if-eqz v4, :cond_26b

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_250
    if-ge v6, v5, :cond_241

    invoke-virtual {v4, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v8
    :try_end_25a
    .catchall {:try_start_241 .. :try_end_25a} :catchall_262

    if-nez v8, :cond_265

    :try_start_25c
    iget-object v5, v0, Lq/z3;->a:Lq/s2;

    invoke-virtual {v5, v4}, Lq/s2;->l(Ljava/lang/String;)V
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_261} :catch_241
    .catchall {:try_start_25c .. :try_end_261} :catchall_262

    goto :goto_241

    :catchall_262
    move-exception v0

    move-object v4, v0

    goto :goto_275

    :cond_265
    :try_start_265
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7
    :try_end_269
    .catchall {:try_start_265 .. :try_end_269} :catchall_262

    add-int/2addr v6, v7

    goto :goto_250

    :cond_26b
    :try_start_26b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_26e
    .catchall {:try_start_26b .. :try_end_26e} :catchall_272

    :try_start_26e
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_271} :catch_28b

    goto :goto_28b

    :catchall_272
    move-exception v0

    move-object v3, v0

    goto :goto_27f

    :goto_275
    :try_start_275
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_278
    .catchall {:try_start_275 .. :try_end_278} :catchall_279

    goto :goto_27e

    :catchall_279
    move-exception v0

    move-object v3, v0

    :try_start_27b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27e
    throw v4
    :try_end_27f
    .catchall {:try_start_27b .. :try_end_27f} :catchall_272

    :goto_27f
    if-eqz v2, :cond_28a

    :try_start_281
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_284
    .catchall {:try_start_281 .. :try_end_284} :catchall_285

    goto :goto_28a

    :catchall_285
    move-exception v0

    move-object v2, v0

    :try_start_287
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_28a
    :goto_28a
    throw v3
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_28b} :catch_28b

    :catch_28b
    :goto_28b
    return-void

    :pswitch_28c  #0x2
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lq/f4;

    iget-object v2, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v2, Lq/h3;

    invoke-virtual {v0, v2}, Lq/f4;->a(Lq/h3;)V

    return-void

    :pswitch_298  #0x1
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lq/g3;

    iget-object v2, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v2, Lq/h3;

    invoke-interface {v0, v2}, Lq/g3;->a(Lq/h3;)V

    return-void

    :pswitch_2a4  #0x0
    iget-object v0, v1, Lq/m2;->b:Ljava/lang/Object;

    check-cast v0, Lq/r2;

    iget-object v2, v1, Lq/m2;->c:Ljava/lang/Object;

    check-cast v2, Lq/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2af
    iget-object v3, v0, Lq/r2;->a:Lq/W3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2b8
    .catch Ljava/lang/RuntimeException; {:try_start_2af .. :try_end_2b8} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2b8} :catch_2e8

    :catch_2b8
    :try_start_2b8
    iget-object v0, v0, Lq/r2;->a:Lq/W3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lq/N2;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c3

    goto :goto_2db

    :cond_2c3
    sput v4, Lq/N2;->b:I

    sget-object v3, Lq/N2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/M2;

    invoke-interface {v4}, Lq/M2;->a()V

    goto :goto_2cb

    :cond_2db
    :goto_2db
    invoke-virtual {v0}, Lq/W3;->b()Lq/a4;

    move-result-object v3

    monitor-enter v3
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_2e0} :catch_2e8

    :try_start_2e0
    invoke-virtual {v3, v2}, Lq/a4;->b(Lq/n;)Lai/onnxruntime/OrtSession;
    :try_end_2e3
    .catchall {:try_start_2e0 .. :try_end_2e3} :catchall_2e5

    :try_start_2e3
    monitor-exit v3
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_2e4} :catch_2e8

    goto :goto_2e8

    :catchall_2e5
    move-exception v0

    :try_start_2e6
    monitor-exit v3
    :try_end_2e7
    .catchall {:try_start_2e6 .. :try_end_2e7} :catchall_2e5

    :try_start_2e7
    throw v0
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2e8} :catch_2e8

    :catch_2e8
    :goto_2e8
    return-void

    nop

    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_2a4  #00000000
        :pswitch_298  #00000001
        :pswitch_28c  #00000002
        :pswitch_229  #00000003
        :pswitch_1a6  #00000004
        :pswitch_28  #00000005
        :pswitch_18  #00000006
    .end packed-switch

    :pswitch_data_2fc
    .packed-switch 0x0
        :pswitch_21f  #00000000
        :pswitch_215  #00000001
        :pswitch_1f2  #00000002
        :pswitch_1ec  #00000003
        :pswitch_1ec  #00000004
        :pswitch_1ec  #00000005
        :pswitch_1ec  #00000006
        :pswitch_1db  #00000007
        :pswitch_1cd  #00000008
    .end packed-switch
.end method
