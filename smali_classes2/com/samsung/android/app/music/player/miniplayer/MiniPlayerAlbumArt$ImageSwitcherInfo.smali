.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageSwitcherInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:J

.field private final d:I

.field private e:Z

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 491
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->e:Z

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->e:Z

    .line 451
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    .line 452
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    .line 453
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    .line 454
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayDirection()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    .line 455
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I
    .locals 0

    .line 436
    iget p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I
    .locals 0

    .line 436
    iget p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J
    .locals 2

    .line 436
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    return-wide v0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 470
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    return v0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->e:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 519
    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 521
    iget v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    iget v3, p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    iget-wide v4, p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    iget v3, p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    iget p1, p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 528
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 529
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 530
    iget-wide v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    iget-wide v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 531
    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSwitcherInfo{mCpAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mViDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mActiveQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 484
    iget p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-boolean p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 487
    iget p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
