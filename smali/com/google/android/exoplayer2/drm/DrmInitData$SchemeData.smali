.class public final Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Z

.field private d:I

.field private final e:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 381
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    .line 301
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 303
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/util/UUID;)Z
    .locals 2

    .line 320
    sget-object v0, Lcom/google/android/exoplayer2/C;->b:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 342
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 348
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 349
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 350
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 355
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->d:I

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->d:I

    .line 361
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 373
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 374
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 377
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
