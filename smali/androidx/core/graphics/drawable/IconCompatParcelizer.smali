.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lq/j5;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 9

    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lq/j5;->e(I)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_18

    :cond_f
    move-object v1, p0

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_18
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lq/j5;->e(I)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_37

    :cond_24
    move-object v1, p0

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_31

    const/4 v1, 0x0

    goto :goto_37

    :cond_31
    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v1, v4

    :goto_37
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lq/j5;->f(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lq/j5;->e(I)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_55

    :cond_4c
    move-object v1, p0

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_55
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lq/j5;->e(I)Z

    move-result v7

    if-nez v7, :cond_61

    goto :goto_6a

    :cond_61
    move-object v1, p0

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_6a
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v7, 0x6

    invoke-virtual {p0, v1, v7}, Lq/j5;->f(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lq/j5;->e(I)Z

    move-result v7

    if-nez v7, :cond_81

    goto :goto_89

    :cond_81
    check-cast p0, Lq/k5;

    iget-object p0, p0, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_89
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_ca

    if-eq p0, v2, :cond_b6

    if-eq p0, v3, :cond_a6

    if-eq p0, v4, :cond_a1

    if-eq p0, v5, :cond_a6

    if-eq p0, v6, :cond_b6

    goto :goto_d0

    :cond_a1
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_d0

    :cond_a6
    new-instance p0, Ljava/lang/String;

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_d0

    :cond_b6
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_bd

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_d0

    :cond_bd
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    iput v4, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    array-length p0, p0

    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    goto :goto_d0

    :cond_ca
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_d1

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_d0
    return-object v0

    :cond_d1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid icon"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Lq/j5;)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v0, v6, :cond_50

    if-eq v0, v5, :cond_49

    const-string v7, "UTF-16"

    if-eq v0, v4, :cond_3a

    if-eq v0, v3, :cond_33

    if-eq v0, v2, :cond_22

    if-eq v0, v1, :cond_49

    goto :goto_56

    :cond_22
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    goto :goto_56

    :cond_33
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    goto :goto_56

    :cond_3a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    goto :goto_56

    :cond_49
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    goto :goto_56

    :cond_50
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    :goto_56
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    if-eq v6, v0, :cond_65

    invoke-virtual {p1, v5}, Lq/j5;->h(I)V

    move-object v5, p1

    check-cast v5, Lq/k5;

    iget-object v5, v5, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_65
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    if-eqz v0, :cond_78

    invoke-virtual {p1, v4}, Lq/j5;->h(I)V

    move-object v4, p1

    check-cast v4, Lq/k5;

    array-length v5, v0

    iget-object v4, v4, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_78
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v4, 0x0

    if-eqz v0, :cond_88

    invoke-virtual {p1, v3}, Lq/j5;->h(I)V

    move-object v3, p1

    check-cast v3, Lq/k5;

    iget-object v3, v3, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v3, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_88
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    if-eqz v0, :cond_97

    invoke-virtual {p1, v2}, Lq/j5;->h(I)V

    move-object v2, p1

    check-cast v2, Lq/k5;

    iget-object v2, v2, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_97
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    if-eqz v0, :cond_a6

    invoke-virtual {p1, v1}, Lq/j5;->h(I)V

    move-object v1, p1

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_a6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_b6

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lq/j5;->h(I)V

    move-object v1, p1

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_b6
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    if-eqz p0, :cond_c5

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lq/j5;->h(I)V

    check-cast p1, Lq/k5;

    iget-object p1, p1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_c5
    return-void
.end method
