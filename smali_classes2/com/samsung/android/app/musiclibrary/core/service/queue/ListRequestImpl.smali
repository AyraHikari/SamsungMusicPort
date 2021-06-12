.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TEST_DUMMY_QUEUE:Z = false

.field private static final TEST_DUMMY_QUEUE_SIZE:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

.field private final mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private mModSkippable:Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;

.field private mMoveToRequestCount:I

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

.field private final mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

.field private final mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

.field private mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

.field private final mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

.field private final mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

.field private final mRoomObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;Landroid/os/Looper;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 125
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 126
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 127
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 128
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 129
    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, p7, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;)V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    .line 130
    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {p3, p1, p2, p5, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    .line 131
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    .line 133
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-direct {p1, p0, p7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mRoomObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mRoomObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->getObserver()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setUriType(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;IZZ)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Landroid/net/Uri;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getDefaultLocalUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;Landroid/net/Uri;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->changeUriOfObserver(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;ZI)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->buildUpQueue(ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Ljava/util/List;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueComposed()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)I
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result p0

    return p0
.end method

.method private buildUpQueue(ZI)V
    .locals 8

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getUriType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p1, "Open a new list, but it is not in media track thus do not make a queue objects!"

    .line 1114
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 1119
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelQueueProducer()Z

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 1122
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v5

    if-eqz p1, :cond_1

    .line 1124
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportOnline:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZ)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    .line 1126
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    goto :goto_0

    .line 1128
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportOnline:Z

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;

    invoke-direct {v7, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;I)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    .line 1146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private cancelNewListConverter()V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelQueueProducer()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private changeCurrentMeta(Landroid/net/Uri;)V
    .locals 3

    .line 1045
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1050
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentPlayingItemInternal()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 1051
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const-string p1, "onContentChanged() Current song is empty but count is not zero !!"

    .line 1052
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void

    .line 1057
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isSameCurrentMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "SV-List"

    const-string v0, "onContentChanged() but same meta !!"

    .line 1058
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1062
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 1063
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->buildUpQueue(ZI)V

    .line 1066
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 1067
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_4
    return-void
.end method

.method private changeUriOfObserver(Landroid/net/Uri;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->registerContentObserver(Landroid/net/Uri;)V

    return-void
.end method

.method private ensureSkippable()V
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportSkippable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mModSkippable:Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mModSkippable:Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;

    :cond_0
    return-void
.end method

.method private executeNewListConverter()V
    .locals 8

    .line 1084
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getUriType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "SV-List"

    const-string v1, "This is not media track type"

    .line 1085
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1089
    :cond_0
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)V

    .line 1105
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 1106
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    .line 1108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeNextPlayingItem()V
    .locals 15

    .line 982
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 987
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(I)[I

    move-result-object v0

    .line 988
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 989
    invoke-virtual {v9, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 992
    aget v7, v0, v1

    if-ltz v7, :cond_5

    .line 993
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-lt v7, v0, :cond_2

    goto/16 :goto_0

    .line 999
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioId(Ljava/util/List;I)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    const-string v0, "executeNextPlayingItem next playing item id is wrong !! "

    .line 1003
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printErrorLog(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v9, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    .line 1007
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    if-eqz v0, :cond_4

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1010
    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SV-List"

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNextPlayingItem() but it already set up Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->getItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1014
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    .line 1019
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 1022
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v2

    .line 1021
    invoke-static {v1, v7, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->obtainActiveQueueItemId([JILjava/util/List;)J

    move-result-wide v11

    .line 1023
    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 1024
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getUriType()I

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 1025
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v8

    .line 1026
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isMyMusicMode()Z

    move-result v1

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->isAvailableNetwork()Z

    move-result v10

    invoke-static {v1, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->isSkipCondition(ZZ)Z

    move-result v10

    .line 1027
    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getPlaylistId(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v13

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Landroid/net/Uri;ILjava/lang/String;IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;ZJLjava/lang/String;)V

    iput-object v14, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    const-string v0, "SV-List"

    const-string v1, "next playing item position is out of index."

    .line 994
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v9, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void
.end method

.method private executeSkipStrategy(IZ)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 4

    .line 1174
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isMyMusicMode()Z

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;-><init>(ZI)V

    .line 1175
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mModSkippable:Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;->getResultAfterSKip(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;)Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;

    move-result-object v0

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeSkipStrategy skip position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->playPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->playPos:I

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    .line 1179
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyAfterSkipStrategy(IZLcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;)V

    .line 1180
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemAfterSkipStrategy(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1
.end method

.method private getAllTrackAudioIds()[J
    .locals 7

    .line 852
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueryArgs()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v0

    .line 853
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 854
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 856
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v2

    const-string v3, "SV-List"

    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLocalAllTrack list.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 853
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 859
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v2
.end method

.method private getCount()I
    .locals 1

    .line 676
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    return v0
.end method

.method private getCurrentPlayingItemInternal()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 700
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isMyMusicMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->isAvailableNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "SV-List"

    const-string v1, "getCurrentPlayingItemInternal -  but myMusicMode && online content. change to EMPTY_PLAYING_ITEM."

    .line 701
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    :cond_1
    return-object v0
.end method

.method private getDefaultLocalUri()Landroid/net/Uri;
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getPlayingItemAfterSkipStrategy(Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1231
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->result:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "getPlayingItemAfterSkipStrategy - There is no local content. return EMPTY_PLAYING_ITEM."

    .line 1233
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 1235
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object p1
.end method

.method private getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 4

    .line 686
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 688
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->obtainActiveQueueItemId([JILjava/util/List;)J

    move-result-wide v1

    .line 689
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getPlayingItemRequestBuilder()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object v3

    .line 691
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListPosition(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    .line 692
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlayDirection(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getPlaylistId(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    .line 693
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    invoke-static {p1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1
.end method

.method private getPlayingItemToNotify(IZZILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mModSkippable:Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;

    if-eqz v0, :cond_0

    .line 903
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeSkipStrategy(IZ)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 906
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3, p4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p3

    if-nez p2, :cond_3

    .line 907
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 908
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getNetworkError(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    const/4 p3, 0x0

    .line 910
    invoke-virtual {p5, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyStreamingError(II)V

    .line 911
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result p2

    .line 912
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result p3

    add-int/lit8 p5, p2, 0x1

    .line 913
    rem-int/2addr p5, p3

    if-ne p4, p5, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 p5, p2, -0x1

    add-int/2addr p5, p3

    .line 916
    rem-int/2addr p5, p3

    if-ne p4, p5, :cond_2

    const/4 p1, 0x3

    .line 920
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 922
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p3

    :cond_3
    return-object p3
.end method

.method private getPosition()I
    .locals 1

    .line 672
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    return v0
.end method

.method private getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->getLastDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    return-object v0
.end method

.method private getUriType()I
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getUriType()I

    move-result v0

    return v0
.end method

.method private internalEnqueue(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 791
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    return-void

    .line 794
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    packed-switch p2, :pswitch_data_0

    .line 808
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    .line 804
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_0

    .line 801
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result p2

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x0

    .line 811
    :goto_0
    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 812
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalNotifyLegalError()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyCurrentMetaAndLegalError(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_0
    return-void
.end method

.method private internalSetList(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V
    .locals 14
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v9, p5

    move/from16 v10, p9

    move/from16 v11, p10

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setList position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uriType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isReload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAudioOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 750
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 751
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 752
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->changeUriOfObserver(Landroid/net/Uri;)V

    .line 753
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setBaseUri(Landroid/net/Uri;)V

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 759
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    const-string v3, "DLNA"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 762
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setUriType(I)V

    move-object/from16 v1, p3

    .line 763
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setKeyWord(Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelNewListConverter()V

    .line 766
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->setPlayMode(I)V

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    const/4 v8, 0x0

    move-object v1, v13

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    invoke-virtual {v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    if-eqz v11, :cond_2

    const-string v1, "setList but audio only set."

    .line 772
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 775
    :cond_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v10, :cond_3

    const/4 v1, 0x4

    move/from16 v1, p8

    const/4 v3, 0x4

    goto :goto_0

    :cond_3
    move/from16 v1, p8

    const/4 v3, 0x0

    .line 779
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->buildUpQueue(ZI)V

    goto :goto_1

    .line 782
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v9, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 783
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueComposed()V

    .line 784
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNewListConverter()V

    :goto_1
    const/4 v1, 0x1

    .line 786
    invoke-direct {p0, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    return-void
.end method

.method private internalSetPosition(III)V
    .locals 3

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetPosition() playMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 835
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const-string p1, "setPosition() but there are no play list, thus reload list."

    .line 837
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    .line 838
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reloadSavedQueue(ZZ)V

    return-void

    :cond_0
    if-lt p2, v0, :cond_1

    const-string p1, "setPosition() but ignore this request. It is exceed play list length."

    .line 842
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->setPlayMode(I)V

    .line 847
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    .line 848
    invoke-direct {p0, p3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    return-void
.end method

.method private internalSetReloadList(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetReloadList(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ZZ)V

    return-void
.end method

.method private internalSetReloadList(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ZZ)V
    .locals 11

    .line 715
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->ensureSkippable()V

    .line 716
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 717
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getQueueItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "internalSetReloadList reload list is empty but backup item exist."

    .line 718
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 719
    invoke-direct {p0, p2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    return-void

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getAllTrackAudioIds()[J

    move-result-object p2

    .line 723
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "internalSetReloadList() reload  all track length "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 724
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([J)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v8, p1

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetList(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    .line 726
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getUriType()I

    move-result v2

    .line 729
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v7

    .line 730
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v3

    const-string p4, "SV-List"

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSetReloadList() uriType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-static {p4, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 733
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    .line 734
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x1

    move-object v0, p0

    move v8, p1

    move v10, p3

    .line 733
    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetList(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    :goto_0
    return-void
.end method

.method private internalSetSameList(II)V
    .locals 10

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSetSameList position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->setPlayMode(I)V

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v4

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    .line 218
    invoke-virtual {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 221
    invoke-direct {p0, p1, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    return-void
.end method

.method private isLegalAgreedError()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isLegalAgreed(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalNotifyLegalError()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMyMusicMode()Z
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMyMusicMode()Z

    move-result v0

    return v0
.end method

.method private isSameCurrentMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1074
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->hasSameMajorMetaValues(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    return p1
.end method

.method private isSameListAndQueueItems()Z
    .locals 2

    .line 682
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyAfterSkipStrategy(IZLcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;)V
    .locals 5
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1189
    :cond_0
    iget p3, p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->result:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 1197
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 1198
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->isEndOfPosition()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1199
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 1200
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    goto :goto_0

    :pswitch_1
    if-ne p1, v1, :cond_2

    return-void

    .line 1210
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 1211
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueMode(II)V

    .line 1212
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    :cond_3
    if-nez p2, :cond_4

    .line 1214
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 1215
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "notifyPauseBySkip Repeat.OFF, last song was skipped."

    .line 1216
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyPauseBySkip(Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :pswitch_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyCantPlay()V

    const-string p1, "notifyPauseBySkip Threre is no local content."

    .line 1222
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyPauseBySkip(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyMetaChanged(IZZ)V
    .locals 7

    .line 879
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v4

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMetaChanged mPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isGapLessPlaying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    .line 887
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemToNotify(IZZILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    .line 890
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result p3

    .line 891
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putListInfo(II)V

    .line 892
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 893
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {v6, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 894
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNextPlayingItem()V

    .line 895
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->saveQueuePosition(I)V

    .line 896
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->registerCurrentSongObserver(Landroid/net/Uri;)V

    return-void
.end method

.method private notifyQueueComposed()V
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyQueueComposed size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 939
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getUriType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V

    .line 940
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNextPlayingItem()V

    return-void
.end method

.method private notifyQueueHistory(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 206
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->count:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyQueueHistory(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private reloadSavedQueue(ZZ)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isLegalAgreedError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "reloadSavedQueue() - isLegalAgreed : false"

    .line 156
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "reloadSavedQueue() but ignore this request. Because it is already done. and current is not empty list"

    .line 160
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->perform(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetReloadList(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ZZ)V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->loadFinished()V

    return-void
.end method

.method private removePositions([IZ)V
    .locals 3

    if-eqz p1, :cond_6

    .line 305
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "removePositions() but exist items is 0"

    .line 312
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePositions() count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->removePositions([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 320
    invoke-direct {p0, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getUriType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    if-eqz p2, :cond_3

    .line 323
    array-length v1, p1

    if-ne v0, v1, :cond_3

    .line 324
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->removeAll()V

    goto :goto_0

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->remove([IZ)V

    .line 329
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result p1

    if-eq v0, p1, :cond_5

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueComposed()V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p1, "removePositions() but request items is 0"

    .line 306
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private reorderQueueItem(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/session/MediaSession$QueueItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/session/MediaSession$QueueItem;

    .line 820
    aget-object v1, v0, p1

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int v3, p2, p1

    .line 822
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr p1, p2

    .line 824
    invoke-static {v0, p2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    :goto_0
    aput-object v1, v0, p2

    .line 829
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    return-void
.end method

.method private saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const-string p1, "SV-List"

    const-string p2, "saveQueue but it is not music media tracks. Thus do not save it"

    .line 955
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 959
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 960
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    if-eqz v1, :cond_2

    .line 961
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "SV-List"

    const-string p2, "saveQueue but it is same the saved list"

    .line 962
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 965
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    .line 967
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    if-nez v1, :cond_3

    .line 968
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    .line 970
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->saveNowPlayingQueue([J)V

    .line 972
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getQueueString([J)Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->getListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 974
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    const-wide/16 v3, 0x1

    .line 975
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v7

    move-object v5, v0

    move-object v6, v1

    move v8, p2

    move-object v9, p3

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const-string p1, "SV-List"

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveQueue mUriType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mKeyWord "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " q: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " addSeqList : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveQueuePosition(I)V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueuePosition(I)V

    return-void
.end method

.method private setKeyWord(Ljava/lang/String;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setKeyWord(Ljava/lang/String;)V

    return-void
.end method

.method private setMode(IIZ)Z
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->setMode(II)V

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    move-result p1

    return p1
.end method

.method private setUriType(I)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setUriType(I)V

    return-void
.end method

.method private testDummyQueue([JLjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 1152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1155
    :goto_0
    array-length v3, p1

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    .line 1156
    array-length v3, p1

    mul-int/lit8 v4, v3, 0x2

    .line 1157
    new-array v4, v4, [J

    const/4 v5, 0x0

    .line 1158
    invoke-static {p1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    invoke-static {p1, v5, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1160
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-object p1, v4

    goto :goto_0

    :cond_0
    const-string p2, "SV-List"

    .line 1163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make dummy items size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 1166
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    .line 1167
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v3

    invoke-direct {v0, p1, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 1165
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    return-object v2
.end method


# virtual methods
.method cancelReload()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->cancel()V

    return-void
.end method

.method disableMode()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->disableMode()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  Meta title: "

    .line 533
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  current uri: "

    .line 535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  keyword : "

    .line 537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->dump(Ljava/io/PrintWriter;)V

    .line 541
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "  isAvailableNetwork : "

    .line 542
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->isAvailableNetwork()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isMyMusicMode : "

    .line 544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMyMusicMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  currentPlayingItem: "

    .line 546
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  QueueItems: "

    .line 548
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public enqueue(IILjava/util/List;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isLegalAgreedError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "enqueue() but ignore this request. Because it is not legal agreed."

    .line 259
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getUriType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 265
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;II)V

    move-object v0, v6

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;)V

    invoke-interface {p4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    .line 277
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 278
    new-array v2, v1, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 280
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v5}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->setPlayMode(I)V

    .line 287
    invoke-static {p1, p2, v2, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->create(II[JZI)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    move-result-object p2

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    .line 291
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalEnqueue(Ljava/util/List;I)V

    if-nez p4, :cond_3

    if-nez v0, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    .line 294
    invoke-direct {p0, p1, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    .line 296
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueComposed()V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 5

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isLegalAgreedError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "enqueue() but ignore this request. Because it is not legal agreed."

    .line 227
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 230
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    array-length v0, v0

    if-nez v0, :cond_1

    const-string p1, "enqueue() but the added size is zero."

    .line 231
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueue() action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->list:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " positionToPlay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->toPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " playlistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->setPlayMode(I)V

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 245
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->buildUpQueue(ZI)V

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v3

    .line 248
    iget-boolean v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_3

    if-lez v3, :cond_3

    .line 250
    :cond_2
    invoke-direct {p0, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    .line 252
    :cond_3
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueHistory(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-void
.end method

.method getBaseUri()Landroid/net/Uri;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getDefaultLocalUri()Landroid/net/Uri;

    move-result-object v0

    .line 580
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->changeUriOfObserver(Landroid/net/Uri;)V

    .line 581
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setBaseUri(Landroid/net/Uri;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getCurrentAudioId()J
    .locals 2

    .line 618
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v0

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioId(Ljava/util/List;I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getCurrentAudioUri()Landroid/net/Uri;
    .locals 5

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioId()J

    move-result-wide v0

    const-string v2, "SV-List"

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentAudioUri() audioId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getMoveToRequestCount()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMoveToRequestCount:I

    return v0
.end method

.method getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 2

    .line 631
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentPlayingItemInternal()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 4

    .line 591
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isSameListAndQueueItems()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(I)[I

    move-result-object v0

    .line 599
    array-length v2, v0

    if-nez v2, :cond_2

    return-object v1

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    const-string v1, "SV-List"

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrevItem() QueueItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "getPrevItem() but the queue did not compose yet."

    .line 595
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-object v1
.end method

.method public loadSavedValues()V
    .locals 7

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getShuffle()I

    move-result v0

    .line 462
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mDecorManager:Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/DecorManager;->createQueueDecors(I)V

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 465
    invoke-virtual {v1, v3, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 466
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getRepeat()I

    move-result v3

    const/4 v4, 0x1

    .line 467
    invoke-virtual {v1, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 468
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSortMode()I

    move-result v4

    const/4 v5, 0x4

    .line 469
    invoke-virtual {v1, v5, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 471
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v5, v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getUnionShuffleRepeat()I

    move-result v5

    const/4 v6, 0x3

    .line 473
    invoke-virtual {v1, v6, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    move v2, v5

    .line 475
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSavedValues() Shuffle : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " repeatMode : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sortMode : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unionMode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method public moveTo(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V
    .locals 2

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isLegalAgreedError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->direction:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but ignore this request. Because it is not legal agreed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyEmptyQueue()V

    :cond_1
    return-void

    .line 355
    :cond_2
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->success:Z

    if-eqz v1, :cond_3

    .line 356
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->direction:I

    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->isGapLessPlaying:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->ignoreRepeatMode:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyMetaChanged(IZZ)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 360
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onQueueComplete()V

    :cond_4
    :goto_0
    return-void
.end method

.method moveToNext(Z)Z
    .locals 1

    .line 557
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMoveToRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMoveToRequestCount:I

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 564
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->moveToNext(I)Z

    move-result p1

    return p1
.end method

.method moveToPrev()V
    .locals 1

    .line 568
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMoveToRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMoveToRequestCount:I

    .line 569
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->moveToPrev()V

    return-void
.end method

.method public notifyLegalError()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalNotifyLegalError()V

    return-void
.end method

.method public onContentChanged(ZZLandroid/net/Uri;)V
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentChanged uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " selfChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 483
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->onContentChanged()V

    if-eqz p1, :cond_0

    .line 485
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->changeCurrentMeta(Landroid/net/Uri;)V

    return-void

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getUriType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    const-string p1, "onContentChanged but current is online track, ignore this"

    .line 490
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result p1

    if-gtz p1, :cond_2

    const-string p1, "onContentChanged but there are no list, ignore this"

    .line 496
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void

    .line 500
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object p1

    .line 502
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Landroid/content/Context;[JLandroid/net/Uri;)[J

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 503
    array-length v0, p2

    if-nez v0, :cond_3

    goto :goto_1

    .line 510
    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getRemovePositionsByExistList([J[J)[I

    move-result-object p1

    if-eqz p1, :cond_6

    .line 511
    array-length p2, p1

    if-nez p2, :cond_4

    goto :goto_0

    .line 515
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removePositions by onContentChanged size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printInfoLog(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelQueueProducer()Z

    move-result p2

    .line 517
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->removePositions([IZ)V

    if-eqz p2, :cond_5

    const/4 p1, 0x2

    .line 519
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->buildUpQueue(ZI)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string p1, "onContentChanged but there are no removed list, ignore this"

    .line 512
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void

    .line 504
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->cancelQueueProducer()Z

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->buildupNewPositions(I)[I

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->removePositions([IZ)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mRoomObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;->getObserver()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V

    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->release()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->cancel()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->unregisterObserver()V

    return-void
.end method

.method reloadAudioIds()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isLegalAgreedError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reloadAudioIds() - isLegalAgreed : false"

    .line 171
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reloadAudioIds() but already reloaded"

    .line 175
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mReloadListExecutor:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->perform(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 179
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetReloadList(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Z)V

    return-void
.end method

.method public reloadMeta()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCurrentAudioUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayingItemInternal(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_0
    return-void
.end method

.method public reloadSavedQueue(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reloadSavedQueue(ZZ)V

    return-void
.end method

.method public removeIds([J)V
    .locals 1

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getRemovePositionsByRemoveList([J[J)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->removePositions([I)V

    return-void
.end method

.method public removePositions([I)V
    .locals 1

    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->removePositions([IZ)V

    return-void
.end method

.method public reorder(II)V
    .locals 3

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reorder from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getQueueModeDecor()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->reorder(II)Z

    move-result v0

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getUriType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->reorder(II)V

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isSameListAndQueueItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reorderQueueItem(II)V

    goto :goto_0

    :cond_1
    const-string p1, "reorder() but queueItems was not same playlist."

    .line 402
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueComposed()V

    :cond_2
    return-void
.end method

.method public resetMoveToCount()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mMoveToRequestCount:I

    return-void
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 13

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->isLegalAgreedError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "setList() but ignore this request. Because it is not legal agreed."

    .line 185
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->list:[J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isSameList([J[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playMode:I

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->position:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetSameList(II)V

    return-void

    :cond_1
    const-string v0, "SV-List"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setList playlistId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playMode:I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->uriType:I

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->keyWord:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->list:[J

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    .line 196
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->queueItems:Ljava/util/List;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    iget v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->position:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 195
    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetList(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    .line 198
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->notifyQueueHistory(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    .line 199
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->uriType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 200
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;

    move-result-object p1

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomManager;->setList(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setPosition(II)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->internalSetPosition(III)V

    return-void
.end method

.method public setQueueItem(JI)V
    .locals 4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQueueItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    .line 383
    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 384
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setPosition(II)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setQueueItem() but it not found id :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public setRepeat(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 411
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setMode(IIZ)Z

    return-void
.end method

.method public setShuffle(IZ)V
    .locals 1

    const/4 v0, 0x2

    .line 416
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setMode(IIZ)Z

    move-result p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNextPlayingItem()V

    :cond_0
    return-void
.end method

.method public setSortMode(IZ)V
    .locals 1

    const/4 v0, 0x4

    .line 434
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setMode(IIZ)Z

    move-result p1

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNextPlayingItem()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setUnionMode(IZ)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    const/4 v2, 0x3

    .line 425
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->setMode(IIZ)Z

    .line 426
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->mInfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result p1

    if-eqz p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNextPlayingItem()V

    :cond_0
    return-void
.end method
