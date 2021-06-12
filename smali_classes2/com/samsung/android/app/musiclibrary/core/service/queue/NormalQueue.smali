.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "NormalQueue"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

.field private final mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private final mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-void
.end method

.method private ensureDuplicationRemover(Z)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 207
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getDuplicateOption()Z

    move-result v0

    if-nez p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    if-nez p1, :cond_2

    .line 216
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    :cond_2
    return-void

    .line 212
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    return-void
.end method

.method private getBoundCheckedPosition(II)I
    .locals 3

    if-ge p2, p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    return p2

    .line 238
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position is out of bound so adjust it. listSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    return-object v0
.end method

.method private internalEnqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 6

    .line 108
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory;->createAdder(ILcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalEnqueue() this is not support action type. action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v2

    .line 117
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 118
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    array-length v4, v4

    iget v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->toPosition:I

    .line 119
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getBoundCheckedPosition(II)I

    move-result v4

    iget-boolean v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    .line 118
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;->getListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalEnqueue() this is not support action type. action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->processOptimizeQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getBoundCheckedPosition(II)I

    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    :cond_2
    return-void
.end method

.method private internalRemoveAll()V
    .locals 3

    .line 344
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    const-string v1, "internalRemoveAll"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST_INFO:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    return-void
.end method

.method private internalRemovePositions([I)Z
    .locals 14

    .line 271
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 273
    array-length v0, p1

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    .line 275
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v4

    .line 278
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 280
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalRemovePositions() qSize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " list length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 285
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v3

    const/4 v8, 0x0

    move v11, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v9, v5, :cond_6

    if-lt v10, v0, :cond_1

    .line 290
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v9, v2, :cond_5

    .line 292
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    :cond_1
    aget v13, p1, v10

    if-ne v9, v13, :cond_4

    if-ne v13, v3, :cond_2

    .line 306
    sget-object v12, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    const-string v13, "internalRemovePositions() removePosition is play pos! trigger meta changed later"

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    if-ge v13, v3, :cond_3

    add-int/lit8 v11, v11, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 318
    :cond_4
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v9, v2, :cond_5

    .line 320
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 324
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v11, v0, :cond_7

    goto :goto_3

    :cond_7
    move v8, v11

    .line 328
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 329
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 330
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v1, :cond_8

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->removeList(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v0

    .line 334
    :cond_8
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalRemovePositions() newPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {v1, v6, v0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    return v12
.end method

.method private notifyDeleteDuplicate(ZIIII)V
    .locals 6

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 224
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyDeleteDuplicate(ZIIII)V

    :cond_0
    return-void
.end method

.method private notifyLimitCountOver(II)V
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyLimitCountOver(II)V

    :cond_0
    return-void
.end method

.method private processOptimizeQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 11
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    invoke-direct {p0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->ensureDuplicationRemover(Z)V

    .line 146
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 147
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mDuplicationRemover:Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;->getUniqueTrackList(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;

    move-result-object p4

    .line 148
    iget-object v3, p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;->listinfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 150
    iget-object v4, p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;->retainPositions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v4

    iget-object v5, p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;->retainPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_0
    if-eqz p1, :cond_1

    if-lez v4, :cond_1

    .line 154
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v8, v8, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    .line 155
    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v8

    iget-object p4, p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;->retainPositions:Ljava/util/List;

    .line 154
    invoke-virtual {v5, v6, v7, v8, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->enqueue(ILjava/util/List;ILjava/util/List;)V

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    move v7, v4

    move v4, p4

    const/4 p4, 0x1

    goto :goto_2

    :cond_2
    move-object v3, p2

    const/4 p4, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 162
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v5

    .line 163
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v6, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v6, :cond_5

    .line 164
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v6, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    .line 165
    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter;->removeOldItemFirstByLimit(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;

    move-result-object v6

    if-ne p4, v0, :cond_3

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    if-le v0, v3, :cond_3

    const/4 p4, 0x2

    .line 170
    :cond_3
    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->listinfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    if-eqz p1, :cond_5

    .line 172
    iget-object v0, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->removePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v4, :cond_4

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v0

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->removePositions:Ljava/util/List;

    .line 175
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove(Ljava/util/List;Z)V

    goto :goto_3

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v0

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    iget-object v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v9, v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    .line 178
    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v9

    iget-object v6, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->retainPosition:Ljava/util/List;

    .line 177
    invoke-virtual {v0, v4, v8, v9, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->enqueue(ILjava/util/List;ILjava/util/List;)V

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 184
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v0

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v8, v8, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    .line 186
    invoke-static {v6, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v8

    .line 185
    invoke-virtual {v0, v4, v6, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->enqueue(ILjava/util/List;I)V

    :cond_6
    packed-switch p4, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sub-int/2addr v5, p3

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->notifyLimitCountOver(II)V

    goto :goto_5

    .line 192
    :pswitch_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p4

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    sub-int v8, p4, v0

    if-nez p1, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 193
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    .line 194
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p1

    sub-int v10, p1, p3

    move-object v5, p0

    .line 193
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->notifyDeleteDuplicate(ZIIII)V

    :goto_5
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNextPosition()Z
    .locals 5

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_0

    .line 378
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    .line 379
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    const-string v3, "ATT_10776 moveToNext() mPlayListLength had been changed reset first index to 0"

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 383
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    const-string v3, "ATT_10776 moveToNext() : No first index information thus set current mPosition as first."

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    .line 387
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATT_10776 moveToNext() mPlayPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mFirstIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 389
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPlayListLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support repeat mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->updateNextPositionWhenRepeatAll()Z

    move-result v0

    return v0

    .line 398
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    const-string v1, "moveToNext() : Repeat.One, current song is played again."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 396
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->updateNextPositionWhenRepeatOff()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNextPositionWhenRepeatAll()Z
    .locals 3

    const/4 v0, 0x2

    .line 421
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getPosition(I)[I

    move-result-object v0

    .line 422
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private updateNextPositionWhenRepeatOff()Z
    .locals 3

    const/4 v0, 0x2

    .line 408
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getPosition(I)[I

    move-result-object v0

    .line 409
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 410
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    const-string v1, "moveToNext() : Repeat.OFF, last song was played, so stop."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    :cond_0
    return v2

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    const-string v1, "  PlayList: "

    .line 67
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  PlayListLength: "

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v1, :cond_0

    const-string v1, "  AddedSeqList: "

    .line 73
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->getListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->internalEnqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    return-void
.end method

.method public getPosition(I)[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getPosition(II)[I
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p2, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 497
    :pswitch_0
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Normal;->getNextPosition(II)I

    move-result p2

    goto :goto_1

    .line 494
    :pswitch_1
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Normal;->getPrevPosition(II)I

    move-result p2

    goto :goto_1

    .line 500
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    .line 501
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Normal;->getNextPosition(II)I

    move-result v3

    .line 502
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 503
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v0

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    :cond_2
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Normal;->isEndOfPosition(II)Z

    move-result v0

    :goto_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 506
    new-array p1, v1, [I

    return-object p1

    :cond_3
    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_1
    const/4 p1, 0x2

    .line 515
    new-array p1, p1, [I

    aput p2, p1, v1

    aput p2, p1, v2

    return-object p1

    :cond_5
    :goto_2
    const-string p1, "SV-List"

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPosition() length of pos is 0. position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " size: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-array p1, v1, [I

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEndOfPosition()Z
    .locals 3

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public loadSavedValues()V
    .locals 0

    return-void
.end method

.method public movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V
    .locals 3

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;->position:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getBoundCheckedPosition(II)I

    move-result p1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    .line 355
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT_10776 now playing list case, movePosition : mFirstIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public moveToNext(I)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 363
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getPosition(I)[I

    move-result-object p1

    .line 364
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 p1, 0x1

    return p1

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->updateNextPosition()Z

    move-result p1

    return p1
.end method

.method public moveToPrev()V
    .locals 3

    const/4 v0, 0x3

    .line 431
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getPosition(I)[I

    move-result-object v0

    .line 432
    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    return-void
.end method

.method public removePositions([I)Z
    .locals 3

    .line 256
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->SUB_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePositions current playing mPosition  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    array-length v0, p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->internalRemoveAll()V

    const/4 p1, 0x1

    return p1

    .line 262
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->internalRemovePositions([I)Z

    move-result p1

    return p1
.end method

.method public reorder(II)Z
    .locals 5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    .line 445
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 446
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    if-le p1, p2, :cond_1

    .line 449
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 450
    invoke-interface {v2, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 454
    invoke-interface {v2, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-ne v1, p1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    if-lt v1, p2, :cond_3

    if-gt v1, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-ge p1, p2, :cond_4

    if-lt v1, p1, :cond_4

    if-gt v1, p2, :cond_4

    const/4 v1, -0x1

    .line 465
    :cond_4
    :goto_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    .line 466
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v4, :cond_5

    .line 468
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->reorderAddedSeqList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 471
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-direct {p2, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
    .locals 4

    .line 85
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->list:Ljava/util/List;

    .line 86
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->addedOrderList:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->buildupNewList(I)Ljava/util/List;

    move-result-object v1

    .line 91
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->position:I

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 92
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isSameList:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isReload:Z

    .line 93
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->processOptimizeQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;IZ)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v2

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 96
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->getBoundCheckedPosition(II)I

    move-result v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;->mQueueInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    :cond_2
    return-void
.end method
