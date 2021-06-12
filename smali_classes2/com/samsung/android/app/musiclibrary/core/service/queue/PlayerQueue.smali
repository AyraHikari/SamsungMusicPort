.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;


# static fields
.field static final EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field private static final GAP_DEFAULT_REQUEST:I = 0x32

.field private static final MOVE_TO_COUNT_RESET_INTERVAL:I = 0x3e8

.field static final MY_QUEUE_TYPE:I = 0x0

.field static final QUEUE_VERSION:J = 0x1L

.field private static final THREAD_NAME_QUEUE:Ljava/lang/String; = "smusic_queue"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private final mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;-><init>()V

    .line 63
    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p4, p5, p1, p6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 64
    new-instance p1, Landroid/os/HandlerThread;

    const-string p4, "smusic_queue"

    invoke-direct {p1, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    .line 67
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    .line 68
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    return-void
.end method

.method private getCount()I
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    return v0
.end method

.method private getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    return-object v0
.end method

.method private isQueueThread()Z
    .locals 4

    .line 439
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private postTaskMoveTo(ZIZZ)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;-><init>(ZIZZ)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 454
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getMoveToRequestCount()I

    move-result p2

    .line 455
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 p4, 0x2

    if-le p2, p4, :cond_0

    mul-int/lit8 p2, p2, 0x32

    int-to-long v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p3, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private preTaskMoveTo()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getMoveToRequestCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setUnionMode(I)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    return-void
.end method


# virtual methods
.method public disableMode()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->disableMode()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableMode()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->loadSavedValues(Z)V

    return-void
.end method

.method public enqueue(ILjava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelReload()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x0

    .line 147
    invoke-static {p1, v1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->create(IILjava/util/List;ZI)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    move-result-object p1

    const/16 p2, 0xc

    const/4 p3, 0x0

    .line 146
    invoke-virtual {v0, p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelReload()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCurAudioId()J
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentBaseUri()Landroid/net/Uri;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInformation(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getExtraInformation(II)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode(I)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode request wrong mode value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result p1

    return p1

    .line 307
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUnionMode()I

    move-result p1

    return p1

    .line 305
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getShuffleMode()I

    move-result p1

    return p1

    .line 303
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getRepeatMode()I

    move-result p1

    return p1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNowPlayingListPosition()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method public getSortMode()I
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method public getUnionMode()I
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method public getUriType()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getUriType()I

    move-result v0

    return v0
.end method

.method public loadSavedValues(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->loadSavedValues()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public movePosition(II)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movePosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    return-void
.end method

.method public moveQueueItem(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    return-void
.end method

.method public moveToNext(ZZ)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToNext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ignoreRepeatMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->preTaskMoveTo()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->moveToNext(Z)Z

    move-result v0

    const/4 v1, 0x2

    .line 157
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->postTaskMoveTo(ZIZZ)V

    return-void
.end method

.method public moveToPrev()V
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToPrev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->preTaskMoveTo()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->moveToPrev()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, v0, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->postTaskMoveTo(ZIZZ)V

    return-void
.end method

.method public moveToQueueItem(JI)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToQueueItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;II)V

    return-void
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public varargs onCustomEvent(I[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 384
    :pswitch_0
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;->getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network changed.  isAvailableNetwork : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->isAvailableNetwork()Z

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setIsAvailableNetwork(Z)V

    if-nez p1, :cond_2

    .line 391
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getNetworkError(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 396
    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyStreamingError(II)V

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNowPlayingListPosition()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->movePosition(II)V

    :cond_2
    if-eqz p1, :cond_5

    .line 401
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 402
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNowPlayingListPosition()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->movePosition(II)V

    goto :goto_0

    .line 366
    :pswitch_1
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;->getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNowPlayingListPosition()I

    move-result p2

    if-nez p1, :cond_4

    .line 370
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 372
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->movePosition(II)V

    :cond_3
    return-void

    .line 379
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 380
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->movePosition(II)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->release()V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->release()V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public reloadAudioIds()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    const-string v0, "SMUSIC-SV-List"

    const-string v1, "reloadAudioIds but save_values is not loaded."

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->loadSavedValues()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reloadAudioIds()V

    return-void
.end method

.method public reloadMeta()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reloadMeta()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public reloadQueue(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reloadSavedQueue(Z)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public removeTracks([J)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public removeTracksPositions([I)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelReload()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public setMode(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 295
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode request wrong mode value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 290
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setSortMode(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(I)V

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(I)V

    goto :goto_0

    .line 281
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(I)V

    :goto_0
    return-void

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    return-void
.end method

.method public setSortMode(I)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    return-void
.end method

.method public toggleMode(I)I
    .locals 3

    .line 319
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getMode(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getToggleMode(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request wrong mode value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setSortMode(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(I)V

    goto :goto_0

    .line 325
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(I)V

    goto :goto_0

    .line 322
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(I)V

    :goto_0
    return v0

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
