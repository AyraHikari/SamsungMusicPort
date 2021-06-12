.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final QUEUE_VERSION:J = 0x1L

.field private static final SUB_TAG:Ljava/lang/String; = "ReloadListExecutor>> "


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mIsFinished:Z

.field private mIsPerformed:Z

.field private mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAY_ITEMS:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 50
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsFinished:Z

    .line 52
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsCancel:Z

    .line 54
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsPerformed:Z

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    return-void
.end method

.method private audioIdsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    const/16 v2, 0x5b

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getAudioId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildPlaylistIds(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PLAY-QUEUE"

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->buildPlaylistIds(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private buildPlaylistIds(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 171
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private checkQueueVersion(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueueVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "ReloadListExecutor>> internalReloadSavedAudioIds but version is low. convert to music provider\'s queue"

    .line 195
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->insertMediaIdsToMusicProvider([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->convertToMusicProvidersId([JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    move-result-object p1

    .line 201
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    array-length v1, v1

    .line 202
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->buildPlaylistIds(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    invoke-direct {v1, v0, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->getUriType(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)I

    move-result p1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueueVersion(J)V

    .line 207
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    const-string v0, "ReloadListExecutor>> Fail to load internalReloadSavedAudioIds but version is low. convert to music provider\'s queue"

    .line 211
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private convertToMusicProvidersId([JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    .locals 2

    .line 232
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;-><init>(Landroid/content/Context;[JI)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->convert()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    move-result-object p1

    return-object p1
.end method

.method private getPlaylistIds([J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    array-length v0, p1

    .line 139
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getPlayListId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->buildPlaylistIds(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getAvailableItems()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaylistIds: ids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", playItems: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->audioIdsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->buildPlaylistIds(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;

    .line 151
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getUriType(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)I
    .locals 1

    .line 219
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method private insertMediaIdsToMusicProvider([J)Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->insertMediaIdsToMusicProvider(Landroid/content/Context;[J)Z

    move-result p1

    return p1
.end method

.method private internalReloadSavedAddedOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getAddedSeqQueue()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->reloadQueue(Ljava/lang/String;)[J

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getListFromArray([J)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method private internalReloadSavedAudioIds()[J
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SV-List"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReloadListExecutor>> reloadSavedQueue q: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->reloadQueue(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    :cond_0
    return-object v0
.end method

.method private matchingDB(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 4

    .line 257
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    .line 259
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J)V

    const/4 p1, 0x0

    .line 260
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->getAudioIds()[J

    move-result-object v0

    .line 261
    array-length v2, v0

    if-nez v2, :cond_1

    const-string v0, "ReloadListExecutor>> matchingDB - there is no item."

    .line 262
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->buildupNewPositions(I)[I

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove([IZ)V

    .line 267
    :cond_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V

    .line 268
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->close()V

    return-object p2

    .line 271
    :cond_1
    :try_start_1
    array-length v2, v0

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 272
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->saveListToQueueRoom(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->close()V

    return-object p2

    .line 276
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReloadListExecutor>> matchingDB - ids.length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " load list size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->retainExistIds(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;[J)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->getUriType(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)I

    move-result v0

    .line 282
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-direct {p0, p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V

    .line 284
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->saveListToQueueRoom(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 286
    :try_start_4
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;->close()V

    :goto_1
    throw p2
.end method

.method private retainExistIds(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;[J)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 8

    .line 305
    invoke-static {p2}, Ljava/util/Arrays;->sort([J)V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 310
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v1

    const/4 v1, 0x0

    .line 311
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    .line 313
    iget-wide v6, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->audioId:J

    invoke-static {p2, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-gez v6, :cond_0

    .line 314
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v5, v1, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_1
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 323
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v1, :cond_4

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    .line 325
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->removeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "ReloadListExecutor>> retainExistIds but added list is empty or size is not correct."

    .line 326
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    .line 333
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    if-nez p1, :cond_5

    .line 334
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove(Ljava/util/List;Z)V

    .line 336
    :cond_5
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {p1, v0, p2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p1
.end method

.method private saveListToQueueRoom(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v0

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->init(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;Ljava/util/List;Ljava/util/List;)Z

    :cond_0
    return-void
.end method

.method private saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p1, "SV-List"

    const-string p2, "ReloadListExecutor>> saveQueue but it is not music media tracks. Thus do not save it"

    .line 238
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getQueueString([J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 244
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->getListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v9, v1

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    const-wide/16 v2, 0x1

    .line 249
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v6

    move-object v4, v0

    move-object v5, v9

    move v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const-string p1, "SV-List"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReloadListExecutor>> saveQueue mUriType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mKeyWord "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " q: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " addSeqList : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsCancel:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsFinished:Z

    return-void
.end method

.method public getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object v0
.end method

.method public isLoadFinished()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsFinished:Z

    return v0
.end method

.method public loadFinished()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsFinished:Z

    return-void
.end method

.method public perform(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 5

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsPerformed:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsCancel:Z

    if-eqz v0, :cond_1

    const-string p1, "ReloadListExecutor>>  reload already cancel, it should not use this list info."

    .line 90
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->internalReloadSavedAudioIds()[J

    move-result-object v0

    .line 94
    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string p1, "reload but size is zero."

    .line 95
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 97
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsPerformed:Z

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1

    .line 100
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsCancel:Z

    if-eqz v1, :cond_3

    const-string p1, "reload already cancel, it should not use this list info."

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1

    .line 104
    :cond_3
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 105
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v3, :cond_5

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->internalReloadSavedAddedOrderList()Ljava/util/List;

    move-result-object v1

    .line 107
    array-length v3, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue list and added sequence list is not same size. Please check. addedSeqList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 112
    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsCancel:Z

    if-eqz v3, :cond_5

    const-string p1, "reload already cancel, it should not use this list info."

    .line 113
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1

    .line 117
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->getPlaylistIds([J)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result v3

    .line 119
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {v4, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    if-nez v0, :cond_6

    .line 123
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->checkQueueVersion(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v4

    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsCancel:Z

    if-eqz v0, :cond_6

    const-string p1, "reload already cancel, it should not use this list info."

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1

    .line 131
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->matchingDB(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 132
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mIsPerformed:Z

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReloadListExecutor>>  perform end size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-object p1
.end method

.method public setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->mListInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    return-void
.end method
