.class public enum Lq/i6;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lq/f6;

.field public static final enum d:Lq/i6;

.field public static final synthetic e:[Lq/i6;


# instance fields
.field public final a:Lq/j6;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    const/16 v9, 0x8

    new-instance v10, Lq/i6;

    sget-object v11, Lq/j6;->d:Lq/j6;

    const-string v12, "DOUBLE"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v10, v12, v13, v11, v14}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v11, Lq/i6;

    sget-object v12, Lq/j6;->c:Lq/j6;

    const-string v15, "FLOAT"

    const/4 v0, 0x5

    invoke-direct {v11, v15, v14, v12, v0}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v12, Lq/i6;

    sget-object v15, Lq/j6;->b:Lq/j6;

    const-string v1, "INT64"

    const/4 v2, 0x2

    invoke-direct {v12, v1, v2, v15, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v1, Lq/i6;

    const-string v3, "UINT64"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v15, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v3, Lq/i6;

    sget-object v5, Lq/j6;->a:Lq/j6;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v7, v5, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v6, Lq/i6;

    const-string v7, "FIXED64"

    invoke-direct {v6, v7, v0, v15, v14}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v7, Lq/i6;

    const/4 v14, 0x6

    const-string v4, "FIXED32"

    invoke-direct {v7, v4, v14, v5, v0}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v4, Lq/i6;

    sget-object v14, Lq/j6;->e:Lq/j6;

    const-string v0, "BOOL"

    const/4 v8, 0x7

    invoke-direct {v4, v0, v8, v14, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v0, Lq/e6;

    sget-object v14, Lq/j6;->f:Lq/j6;

    const-string v8, "STRING"

    invoke-direct {v0, v8, v9, v14, v2}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v8, Lq/f6;

    sget-object v14, Lq/j6;->i:Lq/j6;

    const-string v9, "GROUP"

    const/16 v2, 0x9

    const/4 v13, 0x3

    invoke-direct {v8, v9, v2, v14, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    sput-object v8, Lq/i6;->c:Lq/f6;

    new-instance v2, Lq/g6;

    const-string v9, "MESSAGE"

    move-object/from16 v18, v8

    const/16 v8, 0xa

    const/4 v13, 0x2

    invoke-direct {v2, v9, v8, v14, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v8, Lq/h6;

    sget-object v9, Lq/j6;->g:Lq/j6;

    const-string v14, "BYTES"

    move-object/from16 v19, v2

    const/16 v2, 0xb

    invoke-direct {v8, v14, v2, v9, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v2, Lq/i6;

    const-string v9, "UINT32"

    const/4 v13, 0x0

    const/16 v14, 0xc

    invoke-direct {v2, v9, v14, v5, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v9, Lq/i6;

    sget-object v14, Lq/j6;->h:Lq/j6;

    move-object/from16 v17, v2

    const-string v2, "ENUM"

    move-object/from16 v20, v8

    const/16 v8, 0xd

    invoke-direct {v9, v2, v8, v14, v13}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    sput-object v9, Lq/i6;->d:Lq/i6;

    new-instance v2, Lq/i6;

    const-string v8, "SFIXED32"

    const/16 v13, 0xe

    const/4 v14, 0x5

    invoke-direct {v2, v8, v13, v5, v14}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v8, Lq/i6;

    const-string v13, "SFIXED64"

    move-object/from16 v16, v2

    const/16 v2, 0xf

    const/4 v14, 0x1

    invoke-direct {v8, v13, v2, v15, v14}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v2, Lq/i6;

    const-string v13, "SINT32"

    move-object/from16 v21, v8

    const/16 v8, 0x10

    const/4 v14, 0x0

    invoke-direct {v2, v13, v8, v5, v14}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    new-instance v5, Lq/i6;

    const-string v8, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v5, v8, v13, v15, v14}, Lq/i6;-><init>(Ljava/lang/String;ILq/j6;I)V

    const/16 v8, 0x12

    new-array v8, v8, [Lq/i6;

    aput-object v10, v8, v14

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v12, v8, v10

    const/4 v10, 0x3

    aput-object v1, v8, v10

    const/4 v1, 0x4

    aput-object v3, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    const/4 v1, 0x7

    aput-object v4, v8, v1

    const/16 v1, 0x8

    aput-object v0, v8, v1

    const/16 v0, 0x9

    aput-object v18, v8, v0

    const/16 v0, 0xa

    aput-object v19, v8, v0

    const/16 v0, 0xb

    aput-object v20, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v9, v8, v0

    const/16 v0, 0xe

    aput-object v16, v8, v0

    const/16 v0, 0xf

    aput-object v21, v8, v0

    const/16 v0, 0x10

    aput-object v2, v8, v0

    const/16 v0, 0x11

    aput-object v5, v8, v0

    sput-object v8, Lq/i6;->e:[Lq/i6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILq/j6;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq/i6;->a:Lq/j6;

    iput p4, p0, Lq/i6;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/i6;
    .registers 2

    const-class v0, Lq/i6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/i6;

    return-object p0
.end method

.method public static values()[Lq/i6;
    .registers 1

    sget-object v0, Lq/i6;->e:[Lq/i6;

    invoke-virtual {v0}, [Lq/i6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/i6;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    instance-of v0, p0, Lq/e6;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
