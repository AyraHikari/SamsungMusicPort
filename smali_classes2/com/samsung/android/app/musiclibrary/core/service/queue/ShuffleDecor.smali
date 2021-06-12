.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "ShuffleDecor"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 27
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    return-void
.end method

.method private changeModeByPlayMode(I)I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createShuffleIndex(I)V
    .locals 9

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createShuffleIndex start position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 416
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    .line 417
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    .line 418
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    return-void

    .line 421
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 423
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_5

    .line 427
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-ge v4, v5, :cond_2

    goto :goto_3

    .line 436
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {p1, v5, v6}, Ljava/util/Random;-><init>(J)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v0, :cond_4

    .line 444
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 445
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sub-int v7, v0, v6

    .line 449
    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 450
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 456
    :cond_4
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    .line 457
    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    .line 458
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    const-string p1, "SV-List"

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createShuffleIndex end mList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    const-string v0, "SMUSIC-SV-List"

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to createShuffleIndex - tempList.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPlayPos: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    .line 431
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    .line 432
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    return-void
.end method

.method private getShufflePosition(II)I
    .locals 2

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    return p2

    :cond_0
    if-lez p1, :cond_1

    .line 124
    new-instance p2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 125
    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    :cond_1
    if-ltz p2, :cond_3

    if-lt p2, p1, :cond_2

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    :goto_0
    const-string p1, "SMUSIC-SV-List"

    const-string p2, "position need to be set over 0"

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private internalGetPosition(II)[I
    .locals 6

    const/4 v0, 0x0

    .line 363
    new-array v1, v0, [I

    if-ltz p2, :cond_5

    .line 364
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p1

    .line 395
    new-array v1, v1, [I

    aput p1, v1, v0

    aput p2, v1, v2

    :goto_0
    move-object p1, v1

    goto :goto_2

    .line 374
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;->getNextPosition(Ljava/util/List;I)[I

    move-result-object p1

    goto :goto_2

    .line 371
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;->getPrevPosition(Ljava/util/List;I)[I

    move-result-object p1

    goto :goto_2

    .line 377
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    .line 378
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-static {v3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;->getNextPosition(Ljava/util/List;I)[I

    move-result-object v3

    .line 379
    aget v4, v3, v0

    .line 380
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v5, v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 381
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    .line 382
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;->isEndOfPosition(II)Z

    move-result v4

    :goto_1
    if-nez p1, :cond_3

    if-eqz v4, :cond_3

    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPosition() Repeat off and EndOfPosition situation, shufflePosition : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    .line 387
    new-array p1, v0, [I

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p1

    .line 390
    new-array v1, v1, [I

    aput p1, v1, v0

    aput p2, v1, v2

    goto :goto_0

    :cond_4
    move-object p1, v3

    :goto_2
    return-object p1

    :cond_5
    :goto_3
    const-string p1, "SV-List"

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalGetPosition() length of pos is 0. shufflePos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mList.size: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    .line 366
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 365
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalSetMode(IIZ)Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSetMode Shuffle value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->notifyShuffleChanged()V

    if-eqz p3, :cond_2

    .line 324
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setShuffle(I)V

    :cond_2
    return v0
.end method

.method private isSupport()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyShuffleChanged()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyShuffleChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-List"

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->SUB_TAG:Ljava/lang/String;

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

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    const-string v1, "ATT_10776 moveToNext() mPlayListLength had been changed reset first index to 0"

    .line 201
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v1, "ATT_10776 moveToNext() : No first index information thus set current mPosition as first."

    .line 205
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    .line 209
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

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 210
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

    .line 209
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
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

    .line 221
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->updateNextPositionWhenRepeatAll()Z

    move-result v0

    return v0

    :pswitch_1
    const-string v0, "moveToNext() : Repeat.One, current song is played again."

    .line 218
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    return v2

    .line 216
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->updateNextPositionWhenRepeatOff()Z

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
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    const/4 v1, 0x4

    .line 245
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getPosition(I)[I

    move-result-object v1

    .line 246
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 v2, 0x1

    .line 250
    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    .line 251
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getFirstIndex()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 253
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->notifyShuffleChanged()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->isEndOfPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->notifyShuffleChanged()V

    :cond_2
    :goto_0
    return v2
.end method

.method private updateNextPositionWhenRepeatOff()Z
    .locals 3

    const/4 v0, 0x2

    .line 228
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getPosition(I)[I

    move-result-object v0

    .line 229
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v0, "moveToNext() : Repeat.OFF, last song was played, so stop."

    .line 230
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->printLog(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->notifyShuffleChanged()V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setFirstIndex(I)V

    :cond_0
    return v2

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    const/4 v1, 0x1

    .line 239
    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->dump(Ljava/io/PrintWriter;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const-string v1, "  ShuffleMode: "

    .line 40
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 10

    .line 77
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->changeModeByPlayMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    array-length v2, v2

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->toPosition:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getShufflePosition(II)I

    move-result v8

    .line 80
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->toPosition:I

    if-eq v8, v2, :cond_0

    .line 81
    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    iget v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    iget-boolean v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    iget-object v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->create(II[JZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    move-result-object p1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setShuffle(I)V

    :cond_1
    if-ne v0, v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    :cond_2
    return-void
.end method

.method public getMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    return p1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getMode(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPosition(I)[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->internalGetPosition(II)[I

    move-result-object p1

    return-object p1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getPosition(II)[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->internalGetPosition(II)[I

    move-result-object p1

    return-object p1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->getPosition(II)[I

    move-result-object p1

    return-object p1
.end method

.method public isEndOfPosition()Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 405
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->isEndOfPosition()Z

    move-result v0

    return v0
.end method

.method public loadSavedValues()V
    .locals 0

    return-void
.end method

.method public movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;->position:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getShufflePosition(II)I

    move-result v2

    .line 157
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;->position:I

    if-eq v2, v3, :cond_0

    .line 158
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;

    invoke-direct {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;-><init>(I)V

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    if-ne v0, v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    :cond_1
    return-void
.end method

.method public moveToNext(I)Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToNext(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 177
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getPosition(I)[I

    move-result-object p1

    .line 178
    array-length v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 181
    :cond_1
    aget v0, p1, v2

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->setPlayPos(I)V

    .line 184
    aget p1, p1, v1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->isEndOfPosition()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->notifyShuffleChanged()V

    :cond_2
    return v1

    .line 192
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->updateNextPosition()Z

    move-result p1

    return p1
.end method

.method public moveToPrev()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 269
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getPosition(I)[I

    move-result-object v0

    .line 270
    array-length v2, v0

    if-nez v2, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 274
    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->moveToPrev()V

    :goto_0
    return-void
.end method

.method public removePositions([I)Z
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->removePositions([I)Z

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 144
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mPos:I

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueModeList(ILjava/util/List;)V

    :cond_1
    return p1
.end method

.method public reorder(II)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->reorder(II)Z

    move-result p1

    .line 283
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    :cond_0
    return p1
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
    .locals 12

    .line 50
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->playMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->changeModeByPlayMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->position:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getShufflePosition(II)I

    move-result v9

    .line 53
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->position:I

    if-eq v9, v2, :cond_0

    .line 54
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    iget v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->playMode:I

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->list:Ljava/util/List;

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->queueItems:Ljava/util/List;

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->addedOrderList:Ljava/util/List;

    iget-boolean v10, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isReload:Z

    iget-boolean v11, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isSameList:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    move-object p1, v2

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    .line 62
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setShuffle(I)V

    :cond_1
    if-ne v0, v1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->createShuffleIndex(I)V

    .line 69
    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;->isSameList:Z

    if-eqz p1, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->notifyShuffleChanged()V

    :cond_2
    return-void
.end method

.method public setMode(IIZ)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->internalSetMode(IIZ)Z

    move-result p1

    return p1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;->mBaseQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
