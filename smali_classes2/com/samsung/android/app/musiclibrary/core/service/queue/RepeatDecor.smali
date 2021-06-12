.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "RepeatDecor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    return-void
.end method

.method private internalSetMode(IIZ)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->notifyRepeatChanged()V

    if-eqz p3, :cond_1

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setRepeat(I)V

    :cond_1
    return v1
.end method

.method private notifyRepeatChanged()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyRepeatChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->dump(Ljava/io/PrintWriter;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const-string v1, "  RepeatMode: "

    .line 29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

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

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getPosition(II)[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method public isEndOfPosition()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

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

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    return-void
.end method

.method public moveToNext(I)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToNext(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrev()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToPrev()V

    return-void
.end method

.method public removePositions([I)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->removePositions([I)Z

    move-result p1

    return p1
.end method

.method public reorder(II)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->reorder(II)Z

    move-result p1

    return p1
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    return-void
.end method

.method public setMode(IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;->internalSetMode(IIZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
