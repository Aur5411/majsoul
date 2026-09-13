.class public final Lq/O1;
.super Lq/T1;
.source "SourceFile"

# interfaces
.implements Lq/P2;


# static fields
.field public static final d:Lq/N1;


# instance fields
.field public final a:Lq/e0;

.field public final b:Ljava/lang/String;

.field public final c:Lq/M1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq/N1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/O1;->d:Lq/N1;

    return-void
.end method

.method public constructor <init>(Lq/M1;Ljava/lang/Integer;)V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p1, Lq/M1;->a:Lq/Y;

    .line 12
    invoke-virtual {v1}, Lq/Y;->C()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v1, Lq/e0;->i:Lq/e0;

    invoke-virtual {v1}, Lq/e0;->H()Lq/d0;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object v0, v1, Lq/d0;->f:Ljava/io/Serializable;

    .line 17
    iget v0, v1, Lq/d0;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lq/d0;->e:I

    .line 18
    invoke-virtual {v1}, Lq/t2;->M()V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 20
    iput p2, v1, Lq/d0;->g:I

    .line 21
    iget p2, v1, Lq/d0;->e:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v1, Lq/d0;->e:I

    .line 22
    invoke-virtual {v1}, Lq/t2;->M()V

    .line 23
    invoke-virtual {v1}, Lq/d0;->O()Lq/e0;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lq/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 25
    iput-object p2, p0, Lq/O1;->a:Lq/e0;

    .line 26
    iput-object p1, p0, Lq/O1;->c:Lq/M1;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lq/M1;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lq/e0;->C()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq/O1;->b:Ljava/lang/String;

    return-void

    .line 28
    :cond_6d
    invoke-static {p2}, Lq/a;->A(Lq/c;)Lq/R4;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lq/e0;Lq/S1;Lq/M1;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq/O1;->a:Lq/e0;

    .line 3
    iput-object p3, p0, Lq/O1;->c:Lq/M1;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object p3, p3, Lq/M1;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq/e0;->C()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq/O1;->b:Ljava/lang/String;

    .line 7
    iget-object p1, p2, Lq/S1;->g:Lq/J1;

    .line 8
    invoke-virtual {p1, p0}, Lq/J1;->b(Lq/T1;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lq/O1;->a:Lq/e0;

    iget v0, v0, Lq/e0;->f:I

    return v0
.end method

.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/O1;->c:Lq/M1;

    iget-object v0, v0, Lq/M1;->c:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/O1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/O1;->a:Lq/e0;

    invoke-virtual {v0}, Lq/e0;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/O1;->a:Lq/e0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/O1;->a:Lq/e0;

    invoke-virtual {v0}, Lq/e0;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
