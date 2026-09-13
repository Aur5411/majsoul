.class public final enum Lq/L0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final enum b:Lq/L0;

.field public static final enum c:Lq/L0;

.field public static final enum d:Lq/L0;

.field public static final enum e:Lq/L0;

.field public static final enum f:Lq/L0;

.field public static final enum g:Lq/L0;

.field public static final enum h:Lq/L0;

.field public static final enum i:Lq/L0;

.field public static final enum j:Lq/L0;

.field public static final enum k:Lq/L0;

.field public static final synthetic l:[Lq/L0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lq/L0;

    const-string v1, "TARGET_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/L0;->b:Lq/L0;

    new-instance v1, Lq/L0;

    const-string v2, "TARGET_TYPE_FILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq/L0;->c:Lq/L0;

    new-instance v2, Lq/L0;

    const-string v3, "TARGET_TYPE_EXTENSION_RANGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq/L0;->d:Lq/L0;

    new-instance v3, Lq/L0;

    const-string v4, "TARGET_TYPE_MESSAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lq/L0;->e:Lq/L0;

    new-instance v4, Lq/L0;

    const-string v5, "TARGET_TYPE_FIELD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lq/L0;->f:Lq/L0;

    new-instance v5, Lq/L0;

    const-string v6, "TARGET_TYPE_ONEOF"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lq/L0;->g:Lq/L0;

    new-instance v6, Lq/L0;

    const-string v7, "TARGET_TYPE_ENUM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lq/L0;->h:Lq/L0;

    new-instance v7, Lq/L0;

    const-string v8, "TARGET_TYPE_ENUM_ENTRY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lq/L0;->i:Lq/L0;

    new-instance v8, Lq/L0;

    const-string v9, "TARGET_TYPE_SERVICE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lq/L0;->j:Lq/L0;

    new-instance v9, Lq/L0;

    const-string v10, "TARGET_TYPE_METHOD"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lq/L0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lq/L0;->k:Lq/L0;

    filled-new-array/range {v0 .. v9}, [Lq/L0;

    move-result-object v0

    sput-object v0, Lq/L0;->l:[Lq/L0;

    invoke-static {}, Lq/L0;->values()[Lq/L0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq/L0;->a:I

    return-void
.end method

.method public static b(I)Lq/L0;
    .registers 1

    packed-switch p0, :pswitch_data_24

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x9
    sget-object p0, Lq/L0;->k:Lq/L0;

    return-object p0

    :pswitch_8  #0x8
    sget-object p0, Lq/L0;->j:Lq/L0;

    return-object p0

    :pswitch_b  #0x7
    sget-object p0, Lq/L0;->i:Lq/L0;

    return-object p0

    :pswitch_e  #0x6
    sget-object p0, Lq/L0;->h:Lq/L0;

    return-object p0

    :pswitch_11  #0x5
    sget-object p0, Lq/L0;->g:Lq/L0;

    return-object p0

    :pswitch_14  #0x4
    sget-object p0, Lq/L0;->f:Lq/L0;

    return-object p0

    :pswitch_17  #0x3
    sget-object p0, Lq/L0;->e:Lq/L0;

    return-object p0

    :pswitch_1a  #0x2
    sget-object p0, Lq/L0;->d:Lq/L0;

    return-object p0

    :pswitch_1d  #0x1
    sget-object p0, Lq/L0;->c:Lq/L0;

    return-object p0

    :pswitch_20  #0x0
    sget-object p0, Lq/L0;->b:Lq/L0;

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_14  #00000004
        :pswitch_11  #00000005
        :pswitch_e  #00000006
        :pswitch_b  #00000007
        :pswitch_8  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lq/L0;
    .registers 2

    const-class v0, Lq/L0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/L0;

    return-object p0
.end method

.method public static values()[Lq/L0;
    .registers 1

    sget-object v0, Lq/L0;->l:[Lq/L0;

    invoke-virtual {v0}, [Lq/L0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/L0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lq/L0;->a:I

    return v0
.end method
