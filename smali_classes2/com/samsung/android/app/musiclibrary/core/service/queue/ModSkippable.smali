.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResult;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;
    }
.end annotation


# static fields
.field private static final DEBUG_TSP:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

.field private final mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private final mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    .line 52
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-void
.end method

.method private getCpAttrsFromQueueItem(Landroid/media/session/MediaSession$QueueItem;)I
    .locals 2

    .line 205
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/MediaMetadata;

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 214
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private getCurrentUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 167
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getMovedPlayPosByDirection(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;I)[I
    .locals 1

    .line 182
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;->direction:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 183
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getPrevPosition(I)[I

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getNextPosition(I)[I

    move-result-object p1

    return-object p1
.end method

.method private getNextPosition(I)[I
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->getLastDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v1, 0x4

    .line 201
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method private getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->obtainActiveQueueItemId([JILjava/util/List;)J

    move-result-wide v1

    .line 100
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getPlayingItemRequestBuilder()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object v3

    .line 101
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListPosition(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlayDirection(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getPlaylistId(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    invoke-static {p1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1
.end method

.method private getPosition()[I
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->getLastDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(I)[I

    move-result-object v0

    return-object v0
.end method

.method private getPrevPosition(I)[I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->getLastDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v1, 0x3

    .line 196
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method private isNonSkipCase(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;I)Z
    .locals 2

    .line 88
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;->isMyMusicMode:Z

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->isAvailableNetwork()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isSkipCondition(ZZ)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;Ljava/util/List;I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isOnlineContent(Landroid/net/Uri;II)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    return p1
.end method

.method private isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)Z"
        }
    .end annotation

    .line 145
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p2

    .line 147
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SMUSIC-SV-List"

    const-string p2, "isOnlineContent - count is zero"

    .line 151
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAudioId(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getCurrentUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "SMUSIC-SV-List"

    const-string p2, "isOnlineContent - but uri is null"

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 159
    :cond_2
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;->direction:I

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isOnlineContent(Landroid/net/Uri;II)Z

    move-result p1

    return p1

    .line 161
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isOnlineContent(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method

.method private isOnlineContent(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)Z"
        }
    .end annotation

    .line 177
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSession$QueueItem;

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getCpAttrsFromQueueItem(Landroid/media/session/MediaSession$QueueItem;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result p1

    return p1
.end method

.method static isSkipCondition(ZZ)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 218
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private searchLocalContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;
    .locals 9
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getPosition()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    move-object v6, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v4, :cond_4

    .line 117
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getMovedPlayPosByDirection(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;I)[I

    move-result-object v1

    .line 118
    array-length v7, v1

    if-nez v7, :cond_0

    .line 119
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p2

    invoke-direct {p1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;-><init>(II)V

    return-object p1

    .line 121
    :cond_0
    aget v7, v1, v5

    .line 122
    aget v1, v1, v3

    .line 124
    invoke-direct {p0, p1, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_2

    if-ge v2, v1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    .line 133
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move v1, v7

    goto :goto_0

    :cond_4
    move v7, v1

    const/4 p1, 0x1

    :goto_1
    if-ne p1, v3, :cond_5

    .line 138
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;-><init>(II)V

    return-object p2

    .line 140
    :cond_5
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    invoke-direct {p2, v7, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;-><init>(II)V

    return-object p2
.end method


# virtual methods
.method getResultAfterSKip(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;)Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isNonSkipCase(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;-><init>(II)V

    return-object p1

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResultAfterSKip() isMyMusicMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;->isMyMusicMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAvailableNetwork : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->isAvailableNetwork()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->printLog(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string p1, "SV-List"

    const-string v1, "getResultAfterSKip one content"

    .line 76
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {p1, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;-><init>(II)V

    return-object p1

    .line 80
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->searchLocalContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    move-result-object p1

    return-object p1
.end method
