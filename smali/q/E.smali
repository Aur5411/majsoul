.class public abstract Lq/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public static d([BIIZ)Lq/C;
    .registers 5

    new-instance v0, Lq/C;

    invoke-direct {v0, p0, p1, p2, p3}, Lq/C;-><init>([BIIZ)V

    :try_start_5
    invoke-virtual {v0, p2}, Lq/C;->f(I)I
    :try_end_8
    .catch Lq/U2; {:try_start_5 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract A()I
.end method

.method public abstract B()J
.end method

.method public abstract C(I)Z
.end method

.method public final D()V
    .registers 3

    :cond_0
    invoke-virtual {p0}, Lq/E;->z()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lq/E;->b()V

    iget v1, p0, Lq/E;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/E;->a:I

    invoke-virtual {p0, v0}, Lq/E;->C(I)Z

    move-result v0

    iget v1, p0, Lq/E;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lq/E;->a:I

    if-nez v0, :cond_0

    return-void
.end method

.method public abstract a(I)V
.end method

.method public final b()V
    .registers 3

    iget v0, p0, Lq/E;->a:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lq/U2;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract c()I
.end method

.method public abstract e(I)V
.end method

.method public abstract f(I)I
.end method

.method public abstract g()Z
.end method

.method public abstract h()Lq/B;
.end method

.method public abstract i()D
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()J
.end method

.method public abstract m()F
.end method

.method public abstract n(ILq/P3;Lq/d2;)V
.end method

.method public abstract o()I
.end method

.method public abstract p()J
.end method

.method public abstract q(Lq/m4;Lq/d2;)Lq/Q3;
.end method

.method public abstract r(Lq/P3;Lq/d2;)V
.end method

.method public abstract s()I
.end method

.method public abstract t()I
.end method

.method public abstract u()J
.end method

.method public abstract v()I
.end method

.method public abstract w()J
.end method

.method public abstract x()Ljava/lang/String;
.end method

.method public abstract y()Ljava/lang/String;
.end method

.method public abstract z()I
.end method
