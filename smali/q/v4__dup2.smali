.class public abstract synthetic Lq/v4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/io/FileInputStream;)[B
    .registers 1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object p0

    return-object p0
.end method
