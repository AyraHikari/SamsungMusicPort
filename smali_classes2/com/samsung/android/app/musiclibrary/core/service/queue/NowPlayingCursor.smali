.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_OTHER_INFO:I = 0x6

.field private static final DEBUG:Z = false

.field private static final DEBUG_TSP:Z = false

.field private static final INDEX_AUDIO_ID:I = 0xb

.field private static final INDEX_EXPLICIT:I = 0xa

.field private static final INDEX_IS_CELEB:I = 0xc

.field private static final INDEX_IS_PRIVATE:I = 0x7

.field private static final INDEX_ITEM_ID:I = 0x0

.field private static final INVALID_VALUE:I = -0x1

.field private static final LOG_DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final META_KEY:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final SOUND_QUALITY_DATA:Ljava/lang/String; = "sound_quality_data"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private mCurrentMeta:Landroid/media/MediaMetadata;

.field private mCurrentMetaOtherInfo:Landroid/media/MediaMetadata;

.field private mIsAvailableNetwork:Z

.field private mIsMyMusicMode:Z

.field private mItem:Landroid/media/session/MediaSession$QueueItem;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListLength:I

.field private mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

.field private final mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

.field private mShuffle:I

.field private mShufflePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMode:I

.field private mSortPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportLocalOnlyMode:Z

.field private final mSupportShuffleOrder:Z

.field mUriType:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 42
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->LOG_DEBUG:Z

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "artist"

    const-string v4, "duration"

    const-string v5, "album"

    const-string v6, "genre"

    const-string v7, "album_id"

    const-string v8, "is_secretbox"

    const-string v9, "sound_quality_data"

    const-string v10, "cp_attrs"

    const-string v11, "explicit"

    const-string v12, "audio_id"

    const-string v13, "is_celeb"

    .line 139
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "android.media.metadata.TITLE"

    const-string v3, "android.media.metadata.ARTIST"

    const-string v4, "android.media.metadata.DURATION"

    const-string v5, "android.media.metadata.ALBUM"

    const-string v6, "android.media.metadata.GENRE"

    const-string v7, "com.samsung.android.app.music.metadata.ALBUM_ID"

    const-string v8, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    const-string v9, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-string v10, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-string v11, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    const-string v12, "audio_id"

    const-string v13, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 171
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsMyMusicMode:Z

    .line 73
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mUriType:I

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    .line 81
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I

    .line 87
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportShuffleOrder:Z

    .line 88
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    return-void
.end method

.method private cleanPositions(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private ensureLocalOnlyPlayable()V
    .locals 4

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isLocalModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-nez v0, :cond_1

    .line 564
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    goto :goto_0

    :cond_0
    const-string v0, "SV-List"

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureLocalOnlyPlayable() Local Only Playable is cleared by Support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") (LocalMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsMyMusicMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") (AvailableNetwork:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") UriType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mUriType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    :cond_1
    :goto_0
    return-void
.end method

.method private getInternalQueuePosition(I)I
    .locals 1

    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getShuffleQueuePosition(I)I

    move-result p1

    return p1

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getSortQueuePosition(I)I

    move-result p1

    return p1

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getQueuePosition(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_4
    return p1

    :catch_0
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "getInternalQueuePosition but the index is out of bound, handle it go to first song."

    .line 525
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J
    .locals 1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private getMediaId(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-wide v0

    .line 266
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private getMetaByColumnIndex(I)Landroid/media/MediaMetadata;
    .locals 1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMeta:Landroid/media/MediaMetadata;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMetaOtherInfo:Landroid/media/MediaMetadata;

    :goto_0
    return-object p1
.end method

.method private getStringValue(Landroid/media/MediaMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isLocalModeEnabled()Z
    .locals 2

    .line 633
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsMyMusicMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mUriType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShuffleModeOn()Z
    .locals 2

    .line 554
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportShuffleOrder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSortModeOn()Z
    .locals 2

    .line 558
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removeItemsFromShuffle([I)V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 377
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 378
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 379
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->cleanPositions(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "NowPlayingCursor sort removeItemsFromShuffle but wrong index. ignore this request."

    .line 383
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private removeItemsFromSort([I)V
    .locals 4

    .line 360
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 363
    :try_start_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 364
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    aget v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->cleanPositions(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "NowPlayingCursor sort removeItemsFromSort but wrong index. ignore this request."

    .line 368
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateCursorPositions()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 483
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 488
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 491
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 191
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getCount()I

    move-result v0

    return v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMediaId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 217
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    .line 218
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isPrivate(J)Z

    move-result p1

    return p1

    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    .line 221
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isExplicit(J)Z

    move-result p1

    return p1

    :cond_4
    const/16 v0, 0xc

    if-ne p1, v0, :cond_5

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    .line 224
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->isCeleb(J)Z

    move-result p1

    return p1

    .line 226
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getLong(I)J
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMediaId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    if-ne p1, v0, :cond_4

    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v5, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v5

    .line 245
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isPrivate(J)Z

    move-result p1

    if-eqz p1, :cond_3

    move-wide v1, v3

    :cond_3
    return-wide v1

    :cond_4
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v5, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v5

    .line 248
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isExplicit(J)Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v1, v3

    :cond_5
    return-wide v1

    :cond_6
    const/16 v0, 0xc

    if-ne p1, v0, :cond_8

    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v5, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v5

    .line 251
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->isCeleb(J)Z

    move-result p1

    if-eqz p1, :cond_7

    move-wide v1, v3

    :cond_7
    return-wide v1

    .line 253
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrderedPosition(I)I
    .locals 1

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getShuffleOrderedPosition(I)I

    move-result p1

    return p1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 542
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getSortOrderedPosition(I)I

    move-result p1

    return p1

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getOrderedQueuePosition(I)I

    move-result p1

    return p1

    :cond_4
    return p1
.end method

.method public getQueuePosition(I)I
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getInternalQueuePosition(I)I

    move-result p1

    return p1
.end method

.method public getShort(I)S
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getStringValue(Landroid/media/MediaMetadata;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAvailableNetwork()Z
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    return v0
.end method

.method public isMyMusicMode()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsMyMusicMode:Z

    return v0
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isShuffleEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 3

    .line 98
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I

    if-lt p2, p1, :cond_0

    const-string p1, "SMUSIC-SV-List"

    const-string p2, "NowPlayingCursor fail to onMove. It over list length."

    .line 99
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getQueuePosition(ZZI)I

    move-result p2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/session/MediaSession$QueueItem;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getInternalQueuePosition(I)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/session/MediaSession$QueueItem;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    .line 110
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.google.android.music.mediasession.music_metadata"

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/media/MediaMetadata;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMeta:Landroid/media/MediaMetadata;

    .line 112
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/media/MediaMetadata;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMetaOtherInfo:Landroid/media/MediaMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    const-string v0, "SMUSIC-SV-List"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NowPlayingCursor fail to onMove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public removeItems([I)V
    .locals 7

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->isPrevent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-List"

    const-string v0, "NowPlayingCursor removeItems but prevent sequential event."

    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->setPreventEventForAwhile()V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    array-length v1, p1

    new-array v1, v1, [I

    .line 332
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v5, p1, v3

    .line 333
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getQueuePosition(I)I

    move-result v5

    .line 334
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v4, 0x1

    .line 335
    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SMUSIC-SV-List"

    const-string v2, "NowPlayingCursor removeItems but wrong index. ignore this request."

    .line 340
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->removeItemsFromShuffle([I)V

    goto :goto_2

    .line 345
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->removeItemsFromSort([I)V

    .line 348
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz p1, :cond_5

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->setOrderPositions(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "NowPlayingCursor removeItems end"

    .line 355
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeQueuePosition([I)I

    return-void

    :cond_6
    :goto_3
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "NowPlayingCursor removeItems but list is null."

    .line 318
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reorder(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/session/MediaSession$QueueItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/session/MediaSession$QueueItem;

    .line 411
    aget-object v1, v0, p1

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int v3, p2, p1

    .line 413
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    add-int/lit8 v2, p2, 0x1

    sub-int v3, p1, p2

    .line 415
    invoke-static {v0, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_2
    :goto_0
    aput-object v1, v0, p2

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    .line 423
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->onMove(II)Z

    .line 424
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->moveQueueItem(II)V

    return-void
.end method

.method public setAvailableNetwork(Z)V
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    const/4 p1, -0x1

    .line 623
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    const/4 p1, 0x1

    .line 624
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 432
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "extra.shuffle_list"

    .line 435
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    const-string v2, "extra.shuffle_state"

    .line 436
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    const-string v2, "extra.sort_list"

    .line 437
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    const-string v2, "extra.sort_state"

    .line 438
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    goto :goto_0

    :cond_1
    const-string v0, "extra.shuffle_list"

    .line 441
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    const-string v0, "extra.shuffle_state"

    .line 442
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    const-string v0, "extra.sort_list"

    .line 443
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    const-string v0, "extra.sort_state"

    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    :goto_0
    const-string v0, "extra.uri_type"

    .line 446
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mUriType:I

    .line 448
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->LOG_DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "SV-List"

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NowPlayingCursor setExtra mShuffle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShufflePositions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  sortMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSortPositions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mUriType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mUriType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 454
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 455
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    const-string v1, "SMUSIC-SV-List"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NowPlayingCursor setExtra mShuffle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mShuffle size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  sortMode : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSort size : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mUriType : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mUriType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    .line 463
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz p1, :cond_5

    .line 464
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->setOrderPositions(Ljava/util/List;Ljava/util/List;)V

    .line 467
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->updateCursorPositions()V

    return-void
.end method

.method public setMyMusicMode(Z)V
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsMyMusicMode:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsMyMusicMode:Z

    .line 586
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    const/4 p1, -0x1

    .line 594
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    const/4 p1, 0x1

    .line 595
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportLocalMode(Z)V
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    .line 606
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    return-void
.end method
