.class public final enum Lq/S;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final enum b:Lq/S;

.field public static final enum c:Lq/S;

.field public static final enum d:Lq/S;

.field public static final enum e:Lq/S;

.field public static final enum f:Lq/S;

.field public static final enum g:Lq/S;

.field public static final enum h:Lq/S;

.field public static final enum i:Lq/S;

.field public static final enum j:Lq/S;

.field public static final synthetic k:[Lq/S;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lq/S;

    const-string v1, "EDITION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq/S;->b:Lq/S;

    new-instance v1, Lq/S;

    const-string v2, "EDITION_PROTO2"

    const/4 v3, 0x1

    const/16 v4, 0x3e6

    invoke-direct {v1, v2, v3, v4}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq/S;->c:Lq/S;

    new-instance v2, Lq/S;

    const-string v4, "EDITION_PROTO3"

    const/4 v5, 0x2

    const/16 v6, 0x3e7

    invoke-direct {v2, v4, v5, v6}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq/S;->d:Lq/S;

    new-instance v4, Lq/S;

    const/16 v6, 0x3e8

    const-string v7, "EDITION_2023"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v6}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lq/S;->e:Lq/S;

    new-instance v6, Lq/S;

    const-string v7, "EDITION_1_TEST_ONLY"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v3}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lq/S;->f:Lq/S;

    new-instance v7, Lq/S;

    const-string v3, "EDITION_2_TEST_ONLY"

    const/4 v8, 0x5

    invoke-direct {v7, v3, v8, v5}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lq/S;->g:Lq/S;

    new-instance v8, Lq/S;

    const v3, 0x1869d

    const-string v5, "EDITION_99997_TEST_ONLY"

    const/4 v9, 0x6

    invoke-direct {v8, v5, v9, v3}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lq/S;->h:Lq/S;

    new-instance v9, Lq/S;

    const v3, 0x1869e

    const-string v5, "EDITION_99998_TEST_ONLY"

    const/4 v10, 0x7

    invoke-direct {v9, v5, v10, v3}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lq/S;->i:Lq/S;

    new-instance v10, Lq/S;

    const v3, 0x1869f

    const-string v5, "EDITION_99999_TEST_ONLY"

    const/16 v11, 0x8

    invoke-direct {v10, v5, v11, v3}, Lq/S;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lq/S;->j:Lq/S;

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    filled-new-array/range {v0 .. v8}, [Lq/S;

    move-result-object v0

    sput-object v0, Lq/S;->k:[Lq/S;

    invoke-static {}, Lq/S;->values()[Lq/S;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq/S;->a:I

    return-void
.end method

.method public static b(I)Lq/S;
    .registers 2

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    packed-switch p0, :pswitch_data_2c

    packed-switch p0, :pswitch_data_36

    const/4 p0, 0x0

    return-object p0

    :pswitch_10  #0x1869f
    sget-object p0, Lq/S;->j:Lq/S;

    return-object p0

    :pswitch_13  #0x1869e
    sget-object p0, Lq/S;->i:Lq/S;

    return-object p0

    :pswitch_16  #0x1869d
    sget-object p0, Lq/S;->h:Lq/S;

    return-object p0

    :pswitch_19  #0x3e8
    sget-object p0, Lq/S;->e:Lq/S;

    return-object p0

    :pswitch_1c  #0x3e7
    sget-object p0, Lq/S;->d:Lq/S;

    return-object p0

    :pswitch_1f  #0x3e6
    sget-object p0, Lq/S;->c:Lq/S;

    return-object p0

    :cond_22
    sget-object p0, Lq/S;->g:Lq/S;

    return-object p0

    :cond_25
    sget-object p0, Lq/S;->f:Lq/S;

    return-object p0

    :cond_28
    sget-object p0, Lq/S;->b:Lq/S;

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x3e6
        :pswitch_1f  #000003e6
        :pswitch_1c  #000003e7
        :pswitch_19  #000003e8
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1869d
        :pswitch_16  #0001869d
        :pswitch_13  #0001869e
        :pswitch_10  #0001869f
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lq/S;
    .registers 2

    const-class v0, Lq/S;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/S;

    return-object p0
.end method

.method public static values()[Lq/S;
    .registers 1

    sget-object v0, Lq/S;->k:[Lq/S;

    invoke-virtual {v0}, [Lq/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/S;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lq/S;->a:I

    return v0
.end method
