.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "UnionDecor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    return-void
.end method

.method private changeModeByPlayMode(I)V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne v0, v1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setUnionShuffleRepeat(I)V

    if-eqz v2, :cond_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setRepeat(I)V

    goto :goto_0

    :pswitch_1
    if-eq v0, v1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setUnionShuffleRepeat(I)V

    if-eqz v2, :cond_0

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setRepeat(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalSetMode(IIZ)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 130
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->setUnionMode(IZ)Z

    move-result p1

    return p1

    .line 137
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    .line 138
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;->getUnionModeByShuffle(II)I

    move-result p1

    .line 139
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->setUnionMode(IZ)Z

    move-result p1

    return p1

    .line 132
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    .line 134
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;->getUnionModeByRepeat(II)I

    move-result p1

    .line 135
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->setUnionMode(IZ)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyUnionChanged()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyUnionChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private setUnionMode(IZ)Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    return v2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->notifyUnionChanged()V

    if-eqz p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setUnionShuffleRepeat(I)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    if-eqz v0, :cond_2

    .line 157
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;->getRepeat(I)I

    move-result v0

    .line 158
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;->getShuffle(I)I

    move-result p1

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    return v2

    :cond_2
    return v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->dump(Ljava/io/PrintWriter;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const-string v1, "  UnionMode: "

    .line 29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 1

    .line 46
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->changeModeByPlayMode(I)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

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

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getPosition(II)[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method public isEndOfPosition()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->isEndOfPosition()Z

    move-result v0

    return v0
.end method

.method public loadSavedValues()V
    .locals 0

    return-void
.end method

.method public movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    return-void
.end method

.method public moveToNext(I)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToNext(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrev()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToPrev()V

    return-void
.end method

.method public removePositions([I)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->removePositions([I)Z

    move-result p1

    return p1
.end method

.method public reorder(II)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->reorder(II)Z

    move-result p1

    return p1
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
    .locals 1

    .line 40
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->playMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->changeModeByPlayMode(I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    return-void
.end method

.method public setMode(IIZ)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 113
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/UnionDecor;->internalSetMode(IIZ)Z

    move-result p1

    return p1
.end method
