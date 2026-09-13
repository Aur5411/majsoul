.class public final enum Lq/Q1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lq/Q1;

.field public static final enum c:Lq/Q1;

.field public static final enum d:Lq/Q1;

.field public static final enum e:Lq/Q1;

.field public static final enum f:Lq/Q1;

.field public static final g:[Lq/Q1;

.field public static final synthetic h:[Lq/Q1;


# instance fields
.field public final a:Lq/P1;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    new-instance v1, Lq/Q1;

    move-object v0, v1

    sget-object v2, Lq/P1;->e:Lq/P1;

    const-string v3, "DOUBLE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v2, Lq/Q1;

    move-object v1, v2

    sget-object v3, Lq/P1;->d:Lq/P1;

    const-string v4, "FLOAT"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v3, Lq/Q1;

    move-object v2, v3

    sget-object v15, Lq/P1;->c:Lq/P1;

    const-string v4, "INT64"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v15}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v4, Lq/Q1;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "UINT64"

    invoke-direct {v4, v6, v5, v15}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v5, Lq/Q1;

    move-object v4, v5

    sget-object v14, Lq/P1;->b:Lq/P1;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v14}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v6, Lq/Q1;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "FIXED64"

    invoke-direct {v6, v8, v7, v15}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v7, Lq/Q1;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v7, v9, v8, v14}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v8, Lq/Q1;

    move-object v7, v8

    sget-object v9, Lq/P1;->f:Lq/P1;

    const-string v10, "BOOL"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v9, Lq/Q1;

    move-object v8, v9

    sget-object v10, Lq/P1;->g:Lq/P1;

    const-string v11, "STRING"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    sput-object v9, Lq/Q1;->b:Lq/Q1;

    new-instance v10, Lq/Q1;

    move-object v9, v10

    sget-object v11, Lq/P1;->j:Lq/P1;

    const-string v12, "GROUP"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    sput-object v10, Lq/Q1;->c:Lq/Q1;

    new-instance v12, Lq/Q1;

    move-object v10, v12

    const-string v13, "MESSAGE"

    move-object/from16 v16, v15

    const/16 v15, 0xa

    invoke-direct {v12, v13, v15, v11}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    sput-object v12, Lq/Q1;->d:Lq/Q1;

    new-instance v12, Lq/Q1;

    move-object v11, v12

    sget-object v13, Lq/P1;->h:Lq/P1;

    const-string v15, "BYTES"

    move-object/from16 v18, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    sput-object v12, Lq/Q1;->e:Lq/Q1;

    new-instance v0, Lq/Q1;

    move-object v12, v0

    const/16 v13, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v13, v14}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v0, Lq/Q1;

    move-object v13, v0

    sget-object v15, Lq/P1;->i:Lq/P1;

    move-object/from16 v17, v14

    const-string v14, "ENUM"

    move-object/from16 v19, v1

    const/16 v1, 0xd

    invoke-direct {v0, v14, v1, v15}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    sput-object v0, Lq/Q1;->f:Lq/Q1;

    new-instance v0, Lq/Q1;

    move-object/from16 v1, v17

    move-object v14, v0

    const/16 v15, 0xe

    move-object/from16 v20, v2

    const-string v2, "SFIXED32"

    invoke-direct {v0, v2, v15, v1}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v0, Lq/Q1;

    move-object/from16 v2, v16

    move-object v15, v0

    move-object/from16 v21, v3

    const/16 v3, 0xf

    move-object/from16 v22, v4

    const-string v4, "SFIXED64"

    invoke-direct {v0, v4, v3, v2}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v0, Lq/Q1;

    move-object/from16 v16, v0

    const/16 v3, 0x10

    const-string v4, "SINT32"

    invoke-direct {v0, v4, v3, v1}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    new-instance v0, Lq/Q1;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v3, "SINT64"

    invoke-direct {v0, v3, v1, v2}, Lq/Q1;-><init>(Ljava/lang/String;ILq/P1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    filled-new-array/range {v0 .. v17}, [Lq/Q1;

    move-result-object v0

    sput-object v0, Lq/Q1;->h:[Lq/Q1;

    invoke-static {}, Lq/Q1;->values()[Lq/Q1;

    move-result-object v0

    sput-object v0, Lq/Q1;->g:[Lq/Q1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILq/P1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq/Q1;->a:Lq/P1;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/Q1;
    .registers 2

    const-class v0, Lq/Q1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/Q1;

    return-object p0
.end method

.method public static values()[Lq/Q1;
    .registers 1

    sget-object v0, Lq/Q1;->h:[Lq/Q1;

    invoke-virtual {v0}, [Lq/Q1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/Q1;

    return-object v0
.end method
