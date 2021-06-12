.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "SortDecor"


# instance fields
.field private final mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 36
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-direct {p2, p1, p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    return-void
.end method

.method private buildSortList(Z)V
    .locals 5

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->isNotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v1

    .line 82
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 83
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v4

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;-><init>(Landroid/net/Uri;[JLjava/util/List;I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->createSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;Z)V

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method private getSortList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueModeList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMode()I
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method private internalSetMode(IIZ)Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSetMode Sort value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    move-result p1

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    .line 251
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->buildSortList(Z)V

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->notifySortModeChanged()V

    :cond_1
    return p3
.end method

.method private isNotSupport()Z
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->internalGetMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifySortModeChanged()V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifySortChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateNextPosition()Z
    .locals 4

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    const-string v1, "ATT_10776 moveToNext() mPlayListLength had been changed reset first index to 0"

    .line 157
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v1, "ATT_10776 moveToNext() : No first index information thus set current mPosition as first."

    .line 161
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATT_10776 moveToNext() mPlayPos="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFirstIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 166
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPlayListLength="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
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

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->updateNextPositionWhenRepeatAll()Z

    move-result v0

    return v0

    :pswitch_1
    const-string v0, "moveToNext() : Repeat.One, current song is played again."

    .line 174
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    return v2

    .line 172
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->updateNextPositionWhenRepeatOff()Z

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

    const/4 v0, 0x4

    .line 197
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getPosition(I)[I

    move-result-object v0

    .line 198
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private updateNextPositionWhenRepeatOff()Z
    .locals 3

    const/4 v0, 0x2

    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getPosition(I)[I

    move-result-object v0

    .line 185
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v0, "moveToNext() : Repeat.OFF, last song was played, so stop."

    .line 186
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    :cond_0
    return v2

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "  SortMode: "

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->internalGetMode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->internalGetMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    const/4 p1, 0x1

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->buildSortList(Z)V

    return-void
.end method

.method public getMode(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPosition(I)[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getPosition(II)[I
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->isNotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(II)[I

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getSortList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-ltz p2, :cond_7

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v2, :cond_2

    const-string v0, "SMUSIC-SV-List"

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "getPosition - but list was not same. try build"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->buildSortList(Z)V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getSortList()Ljava/util/List;

    move-result-object v0

    :cond_2
    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    .line 321
    new-array p1, v2, [I

    aput p2, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    aput p2, p1, v3

    :goto_0
    move-object p2, p1

    goto/16 :goto_2

    .line 301
    :pswitch_0
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$SortMode;->getNextPosition(Ljava/util/List;I)I

    move-result p1

    .line 302
    new-array p2, v2, [I

    aput p1, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput p1, p2, v3

    goto :goto_2

    .line 297
    :pswitch_1
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$SortMode;->getPrevPosition(Ljava/util/List;I)I

    move-result p1

    .line 298
    new-array p2, v2, [I

    aput p1, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput p1, p2, v3

    goto :goto_2

    .line 305
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    .line 306
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$SortMode;->getNextPosition(Ljava/util/List;I)I

    move-result v4

    .line 307
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v5, v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 308
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 309
    :cond_4
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$SortMode;->isEndOfPosition(Ljava/util/List;I)Z

    move-result v5

    :goto_1
    if-nez p1, :cond_5

    if-eqz v5, :cond_5

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPosition() Repeat off and EndOfPosition situation, position : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->printLog(Ljava/lang/String;)V

    .line 313
    new-array p2, v1, [I

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    .line 315
    new-array p1, v2, [I

    aput p2, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    aput p2, p1, v3

    goto :goto_0

    .line 317
    :cond_6
    new-array p2, v2, [I

    aput v4, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput p1, p2, v3

    :goto_2
    return-object p2

    :cond_7
    :goto_3
    const-string p1, "SV-List"

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPosition() length of pos is 0. position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sortedList.size: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
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

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->isNotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->isEndOfPosition()Z

    move-result v0

    return v0

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getSortList()Ljava/util/List;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public loadSavedValues()V
    .locals 0

    return-void
.end method

.method public movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    return-void
.end method

.method public moveToNext(I)Z
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->isNotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToNext(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getPosition(I)[I

    move-result-object p1

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->updateNextPosition()Z

    move-result p1

    return p1
.end method

.method public moveToPrev()V
    .locals 3

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->isNotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToPrev()V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 211
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getPosition(I)[I

    move-result-object v0

    .line 212
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    return-void
.end method

.method public onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;->positionList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->notifySortModeChanged()V

    return-void
.end method

.method public reloadSortInfo()V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getSortList()Ljava/util/List;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setList(Ljava/util/List;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    .line 124
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getSortMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    :cond_1
    return-void
.end method

.method public removePositions([I)Z
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->removePositions([I)Z

    move-result v1

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->isNotSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->reloadSortInfo()V

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->removePositions([II)I

    move-result p1

    if-gez p1, :cond_1

    const-string p1, "SMUSIC-SV-List"

    const-string v0, "removePositions playPos is not valid. Change to 0 !!"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    return v1
.end method

.method public reorder(II)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->reorder(II)Z

    move-result p1

    return p1
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->internalGetMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->clearList()V

    const/4 p1, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->buildSortList(Z)V

    return-void
.end method

.method public setMode(IIZ)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->internalSetMode(IIZ)Z

    move-result p1

    return p1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/SortDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    .line 229
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
