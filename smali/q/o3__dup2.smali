.class public final synthetic Lq/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lq/o3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 13

    const/16 v0, 0x63

    const/16 v1, 0x30

    const/16 v2, 0x7a

    const/16 v3, 0x73

    const/16 v4, 0x70

    const/16 v5, 0x6d

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget v10, p0, Lq/o3;->a:I

    packed-switch v10, :pswitch_data_aa

    check-cast p1, Ljava/lang/String;

    sget-boolean v0, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    const v0, 0x7fffffff

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v6, :cond_25

    goto :goto_50

    :cond_25
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2d

    move v2, v8

    goto :goto_3e

    :cond_2d
    if-ne v6, v4, :cond_32

    const/16 v2, 0x9

    goto :goto_3e

    :cond_32
    if-ne v6, v3, :cond_37

    const/16 v2, 0x12

    goto :goto_3e

    :cond_37
    if-ne v6, v2, :cond_3c

    const/16 v2, 0x1b

    goto :goto_3e

    :cond_3c
    const/16 v2, 0x64

    :goto_3e
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_45

    goto :goto_4b

    :cond_45
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    :goto_4b
    if-lez v7, :cond_50

    add-int/2addr v2, v7

    add-int/lit8 v0, v2, -0x1

    :cond_50
    :goto_50
    return v0

    :pswitch_51  #0x4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-boolean v1, Lcom/qiuhui/mahjong/WebGameActivity;->C:Z

    if-eqz p1, :cond_69

    packed-switch p1, :pswitch_data_b8

    goto :goto_6a

    :pswitch_5f  #0xa
    move v0, v7

    goto :goto_6a

    :pswitch_61  #0x8, 0x9
    move v0, v9

    goto :goto_6a

    :pswitch_63  #0x4, 0x5, 0x6, 0x7
    move v0, v6

    goto :goto_6a

    :pswitch_65  #0x3
    const/4 v0, 0x3

    goto :goto_6a

    :pswitch_67  #0x2, 0xb
    const/4 v0, 0x4

    goto :goto_6a

    :cond_69
    move v0, v8

    :goto_6a
    return v0

    :pswitch_6b  #0x3
    check-cast p1, Lq/p4;

    iget p1, p1, Lq/p4;->a:I

    return p1

    :pswitch_70  #0x2
    check-cast p1, Lq/p4;

    iget p1, p1, Lq/p4;->d:I

    return p1

    :pswitch_75  #0x1
    check-cast p1, Lq/p4;

    iget p1, p1, Lq/p4;->c:I

    return p1

    :pswitch_7a  #0x0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lq/w3;->r(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_83

    goto :goto_a8

    :cond_83
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_8a

    goto :goto_90

    :cond_8a
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v6, -0x30

    :goto_90
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_a6

    if-eq p1, v4, :cond_a3

    if-eq p1, v3, :cond_a0

    if-eq p1, v2, :cond_9d

    goto :goto_a8

    :cond_9d
    add-int/lit8 v0, v7, 0x1a

    goto :goto_a8

    :cond_a0
    add-int/lit8 v0, v7, 0x11

    goto :goto_a8

    :cond_a3
    add-int/lit8 v0, v7, 0x8

    goto :goto_a8

    :cond_a6
    add-int/lit8 v0, v7, -0x1

    :goto_a8
    return v0

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7a  #00000000
        :pswitch_75  #00000001
        :pswitch_70  #00000002
        :pswitch_6b  #00000003
        :pswitch_51  #00000004
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x2
        :pswitch_67  #00000002
        :pswitch_65  #00000003
        :pswitch_63  #00000004
        :pswitch_63  #00000005
        :pswitch_63  #00000006
        :pswitch_63  #00000007
        :pswitch_61  #00000008
        :pswitch_61  #00000009
        :pswitch_5f  #0000000a
        :pswitch_67  #0000000b
    .end packed-switch
.end method
