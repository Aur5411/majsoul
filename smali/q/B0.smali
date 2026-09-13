.class public final enum Lq/B0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final enum b:Lq/B0;

.field public static final enum c:Lq/B0;

.field public static final enum d:Lq/B0;

.field public static final enum e:Lq/B0;

.field public static final enum f:Lq/B0;

.field public static final enum g:Lq/B0;

.field public static final enum h:Lq/B0;

.field public static final enum i:Lq/B0;

.field public static final enum j:Lq/B0;

.field public static final enum k:Lq/B0;

.field public static final enum l:Lq/B0;

.field public static final enum m:Lq/B0;

.field public static final enum n:Lq/B0;

.field public static final enum o:Lq/B0;

.field public static final enum p:Lq/B0;

.field public static final enum q:Lq/B0;

.field public static final enum r:Lq/B0;

.field public static final enum s:Lq/B0;

.field public static final synthetic t:[Lq/B0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    new-instance v1, Lq/B0;

    move-object v0, v1

    const-string v2, "TYPE_DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq/B0;->b:Lq/B0;

    new-instance v2, Lq/B0;

    move-object v1, v2

    const-string v3, "TYPE_FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq/B0;->c:Lq/B0;

    new-instance v3, Lq/B0;

    move-object v2, v3

    const-string v4, "TYPE_INT64"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lq/B0;->d:Lq/B0;

    new-instance v4, Lq/B0;

    move-object v3, v4

    const-string v5, "TYPE_UINT64"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lq/B0;->e:Lq/B0;

    new-instance v5, Lq/B0;

    move-object v4, v5

    const-string v6, "TYPE_INT32"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lq/B0;->f:Lq/B0;

    new-instance v6, Lq/B0;

    move-object v5, v6

    const-string v7, "TYPE_FIXED64"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lq/B0;->g:Lq/B0;

    new-instance v7, Lq/B0;

    move-object v6, v7

    const-string v8, "TYPE_FIXED32"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lq/B0;->h:Lq/B0;

    new-instance v8, Lq/B0;

    move-object v7, v8

    const-string v9, "TYPE_BOOL"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lq/B0;->i:Lq/B0;

    new-instance v9, Lq/B0;

    move-object v8, v9

    const-string v10, "TYPE_STRING"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lq/B0;->j:Lq/B0;

    new-instance v10, Lq/B0;

    move-object v9, v10

    const-string v11, "TYPE_GROUP"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lq/B0;->k:Lq/B0;

    new-instance v11, Lq/B0;

    move-object v10, v11

    const-string v12, "TYPE_MESSAGE"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v13, v14}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lq/B0;->l:Lq/B0;

    new-instance v12, Lq/B0;

    move-object v11, v12

    const-string v13, "TYPE_BYTES"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v14, v15}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lq/B0;->m:Lq/B0;

    new-instance v13, Lq/B0;

    move-object v12, v13

    const-string v14, "TYPE_UINT32"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v13, v14, v15, v0}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lq/B0;->n:Lq/B0;

    new-instance v14, Lq/B0;

    move-object v13, v14

    const-string v15, "TYPE_ENUM"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v14, v15, v0, v1}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lq/B0;->o:Lq/B0;

    new-instance v0, Lq/B0;

    move-object v14, v0

    const-string v15, "TYPE_SFIXED32"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v15, v1, v2}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/B0;->p:Lq/B0;

    new-instance v0, Lq/B0;

    move-object v15, v0

    const-string v1, "TYPE_SFIXED64"

    move-object/from16 v21, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/B0;->q:Lq/B0;

    new-instance v0, Lq/B0;

    move-object/from16 v16, v0

    const-string v1, "TYPE_SINT32"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/B0;->r:Lq/B0;

    new-instance v0, Lq/B0;

    move-object/from16 v17, v0

    const-string v1, "TYPE_SINT64"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lq/B0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/B0;->s:Lq/B0;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    filled-new-array/range {v0 .. v17}, [Lq/B0;

    move-result-object v0

    sput-object v0, Lq/B0;->t:[Lq/B0;

    invoke-static {}, Lq/B0;->values()[Lq/B0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq/B0;->a:I

    return-void
.end method

.method public static b(I)Lq/B0;
    .registers 1

    packed-switch p0, :pswitch_data_3c

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x12
    sget-object p0, Lq/B0;->s:Lq/B0;

    return-object p0

    :pswitch_8  #0x11
    sget-object p0, Lq/B0;->r:Lq/B0;

    return-object p0

    :pswitch_b  #0x10
    sget-object p0, Lq/B0;->q:Lq/B0;

    return-object p0

    :pswitch_e  #0xf
    sget-object p0, Lq/B0;->p:Lq/B0;

    return-object p0

    :pswitch_11  #0xe
    sget-object p0, Lq/B0;->o:Lq/B0;

    return-object p0

    :pswitch_14  #0xd
    sget-object p0, Lq/B0;->n:Lq/B0;

    return-object p0

    :pswitch_17  #0xc
    sget-object p0, Lq/B0;->m:Lq/B0;

    return-object p0

    :pswitch_1a  #0xb
    sget-object p0, Lq/B0;->l:Lq/B0;

    return-object p0

    :pswitch_1d  #0xa
    sget-object p0, Lq/B0;->k:Lq/B0;

    return-object p0

    :pswitch_20  #0x9
    sget-object p0, Lq/B0;->j:Lq/B0;

    return-object p0

    :pswitch_23  #0x8
    sget-object p0, Lq/B0;->i:Lq/B0;

    return-object p0

    :pswitch_26  #0x7
    sget-object p0, Lq/B0;->h:Lq/B0;

    return-object p0

    :pswitch_29  #0x6
    sget-object p0, Lq/B0;->g:Lq/B0;

    return-object p0

    :pswitch_2c  #0x5
    sget-object p0, Lq/B0;->f:Lq/B0;

    return-object p0

    :pswitch_2f  #0x4
    sget-object p0, Lq/B0;->e:Lq/B0;

    return-object p0

    :pswitch_32  #0x3
    sget-object p0, Lq/B0;->d:Lq/B0;

    return-object p0

    :pswitch_35  #0x2
    sget-object p0, Lq/B0;->c:Lq/B0;

    return-object p0

    :pswitch_38  #0x1
    sget-object p0, Lq/B0;->b:Lq/B0;

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_35  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_2c  #00000005
        :pswitch_29  #00000006
        :pswitch_26  #00000007
        :pswitch_23  #00000008
        :pswitch_20  #00000009
        :pswitch_1d  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_14  #0000000d
        :pswitch_11  #0000000e
        :pswitch_e  #0000000f
        :pswitch_b  #00000010
        :pswitch_8  #00000011
        :pswitch_5  #00000012
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lq/B0;
    .registers 2

    const-class v0, Lq/B0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/B0;

    return-object p0
.end method

.method public static values()[Lq/B0;
    .registers 1

    sget-object v0, Lq/B0;->t:[Lq/B0;

    invoke-virtual {v0}, [Lq/B0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/B0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lq/B0;->a:I

    return v0
.end method
