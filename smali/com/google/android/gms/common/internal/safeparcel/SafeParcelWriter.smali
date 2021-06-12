.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Parcel;)I
    .locals 1

    const/16 v0, 0x4f45

    .line 17
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/os/Parcel;I)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IF)V
    .locals 1

    const/4 v0, 0x4

    .line 67
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;II)V
    .locals 1

    const/4 v0, 0x4

    .line 39
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 40
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .locals 1

    const/16 v0, 0x8

    .line 49
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 50
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 122
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 125
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 126
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 106
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 109
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 354
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 356
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    invoke-virtual {p0, p2, v0, p3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 358
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 114
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 116
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 117
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 82
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    const/16 p3, 0x8

    .line 84
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x4

    .line 74
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x4

    .line 46
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    const/16 p3, 0x8

    .line 56
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 98
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 101
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 299
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 301
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 302
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 303
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .locals 1

    const/4 v0, 0x4

    .line 20
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    .line 315
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 317
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 318
    array-length p4, p2

    .line 319
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_3

    .line 321
    aget-object v2, p2, v1

    if-nez v2, :cond_2

    .line 323
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 324
    :cond_2
    invoke-static {p0, v2, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 223
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 226
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 227
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 346
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 348
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    .line 349
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static b(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static b(Landroid/os/Parcel;II)V
    .locals 1

    const v0, 0xffff

    if-lt p2, v0, :cond_0

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static b(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 330
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)I

    move-result p1

    .line 333
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 334
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 336
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-nez v2, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static c(Landroid/os/Parcel;I)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
