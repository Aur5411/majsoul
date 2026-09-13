.class public abstract Lq/X1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:[I

.field public static final c:[Lq/G1;

.field public static final d:[Lq/R1;

.field public static final e:[Lq/M1;

.field public static final f:[Lq/W1;

.field public static final g:[Lq/V1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lq/X1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lq/X1;->a:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lq/X1;->b:[I

    new-array v1, v0, [Lq/G1;

    sput-object v1, Lq/X1;->c:[Lq/G1;

    new-array v1, v0, [Lq/R1;

    sput-object v1, Lq/X1;->d:[Lq/R1;

    new-array v1, v0, [Lq/M1;

    sput-object v1, Lq/X1;->e:[Lq/M1;

    new-array v1, v0, [Lq/W1;

    sput-object v1, Lq/X1;->f:[Lq/W1;

    new-array v0, v0, [Lq/V1;

    sput-object v0, Lq/X1;->g:[Lq/V1;

    return-void
.end method

.method public static a(Lq/S1;Lq/G1;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2e

    if-eqz p1, :cond_19

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lq/G1;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_37

    :cond_19
    iget-object p0, p0, Lq/S1;->a:Lq/P0;

    invoke-virtual {p0}, Lq/P0;->E()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_37

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_37
    :goto_37
    return-object p2
.end method
