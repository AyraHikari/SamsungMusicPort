.class public final Lcom/samsung/android/app/music/service/queue/AdDecor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/queue/AdDecor;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/queue/AdDecor;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyShuffleChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/queue/AdDecor;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/queue/AdDecor;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyRepeatChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 0

    return-void
.end method

.method public getMode(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 123
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    return p1

    .line 125
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPosition(I)[I
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    .line 138
    new-array p1, p1, [I

    return-object p1
.end method

.method public getPosition(II)[I
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    .line 148
    new-array p1, p1, [I

    return-object p1
.end method

.method public isEndOfPosition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadSavedValues()V
    .locals 0

    return-void
.end method

.method public movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V
    .locals 0

    return-void
.end method

.method public moveToNext(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public moveToPrev()V
    .locals 0

    return-void
.end method

.method public removePositions([I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public reorder(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->list:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->addedOrderList:Ljava/util/List;

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->position:I

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->addedOrderList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    return-void
.end method

.method public setMode(IIZ)Z
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 30
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    return v0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/queue/AdDecor;->a(II)V

    return p3

    .line 37
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/AdDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    return v0

    .line 41
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/queue/AdDecor;->b(II)V

    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
