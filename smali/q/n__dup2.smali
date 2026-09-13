.class public final enum Lq/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lq/n;

.field public static final enum e:Lq/n;

.field public static final synthetic f:[Lq/n;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lq/n;

    const/16 v4, 0x307

    const/16 v5, 0x2c

    const-string v1, "THREE_PLAYER"

    const/4 v2, 0x0

    const-string v3, "三麻"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lq/n;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lq/n;->d:Lq/n;

    new-instance v0, Lq/n;

    const/16 v11, 0x3f4

    const/16 v12, 0x2e

    const-string v8, "FOUR_PLAYER"

    const/4 v9, 0x1

    const-string v10, "四麻"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lq/n;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lq/n;->e:Lq/n;

    filled-new-array {v6, v0}, [Lq/n;

    move-result-object v0

    sput-object v0, Lq/n;->f:[Lq/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq/n;->a:Ljava/lang/String;

    iput p4, p0, Lq/n;->b:I

    iput p5, p0, Lq/n;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/n;
    .registers 2

    const-class v0, Lq/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/n;

    return-object p0
.end method

.method public static values()[Lq/n;
    .registers 1

    sget-object v0, Lq/n;->f:[Lq/n;

    invoke-virtual {v0}, [Lq/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/n;

    return-object v0
.end method
