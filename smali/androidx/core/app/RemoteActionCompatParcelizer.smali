.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lq/j5;)Landroidx/core/app/RemoteActionCompat;
    .registers 6

    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lq/j5;->e(I)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lq/j5;->g()Lq/l5;

    move-result-object v1

    :goto_13
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lq/j5;->e(I)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_2e

    :cond_21
    move-object v1, p0

    check-cast v1, Lq/k5;

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_2e
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lq/j5;->e(I)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_47

    :cond_3a
    move-object v1, p0

    check-cast v1, Lq/k5;

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_47
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lq/j5;->f(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lq/j5;->e(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5f

    goto :goto_6d

    :cond_5f
    move-object v1, p0

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6c

    move v1, v2

    goto :goto_6d

    :cond_6c
    move v1, v4

    :goto_6d
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lq/j5;->e(I)Z

    move-result v3

    if-nez v3, :cond_79

    goto :goto_86

    :cond_79
    check-cast p0, Lq/k5;

    iget-object p0, p0, Lq/k5;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_84

    goto :goto_85

    :cond_84
    move v2, v4

    :goto_85
    move v1, v2

    :goto_86
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Lq/j5;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lq/j5;->h(I)V

    invoke-virtual {p1, v0}, Lq/j5;->i(Lq/l5;)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lq/j5;->h(I)V

    move-object v1, p1

    check-cast v1, Lq/k5;

    iget-object v1, v1, Lq/k5;->e:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lq/j5;->h(I)V

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lq/j5;->h(I)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lq/j5;->h(I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lq/j5;->h(I)V

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
