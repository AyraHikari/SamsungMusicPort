.class public final Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# instance fields
.field private A:J

.field private B:I

.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

.field private final h:Landroid/os/HandlerThread;

.field private final i:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

.field private final j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private final k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private final l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

.field private n:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

.field private o:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

.field private p:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

.field private q:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field private final r:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

.field private final s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

.field private t:Z

.field private u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

.field private v:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f:Ljava/util/concurrent/ExecutorService;

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->r:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    .line 262
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    .line 263
    iput-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 264
    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 265
    iput-object p6, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 266
    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p4, p5, v0, p6, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    iput-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 268
    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 269
    new-instance p3, Landroid/os/HandlerThread;

    const-string p4, "smusic_radio_queue"

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    .line 270
    iget-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 271
    iget-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    .line 272
    new-instance p4, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->r:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-direct {p4, p3, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;)V

    iput-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    .line 273
    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;

    invoke-direct {p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;-><init>()V

    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-direct {p3, p5, p4, p6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$PlayerQueueMode;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 275
    new-instance p3, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iget-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {p3, p1, p4, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    .line 276
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object p5, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    return-void
.end method

.method private A()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3

    .line 1370
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(I)[I

    move-result-object v0

    .line 1371
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1372
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0

    .line 1374
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method private B()Z
    .locals 1

    .line 1378
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    return v0
.end method

.method private a(Landroid/database/Cursor;[JI)I
    .locals 5
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ltz p3, :cond_2

    .line 1356
    array-length v1, p2

    if-gt v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "play_audio_id"

    .line 1359
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1360
    aget-wide p1, p2, p3

    cmp-long v3, v1, p1

    if-eqz v3, :cond_1

    .line 1362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latest position change failed. latestPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " latest audioId = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " current audioId = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    return v0

    :cond_1
    return p3

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B:I

    return p1
.end method

.method private a(Landroid/content/SharedPreferences;)J
    .locals 3

    const-string v0, "playlist_item_id"

    const-wide/16 v1, 0x0

    .line 639
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object p0
.end method

.method private a(IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 750
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-gtz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getNetworkError(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 756
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    .line 759
    invoke-virtual {p3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyStreamingError(II)V

    .line 760
    iget-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result p3

    add-int/lit8 v1, p3, 0x1

    .line 761
    rem-int/2addr v1, v0

    if-ne p2, v1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v0

    .line 764
    rem-int/2addr v1, v0

    if-ne p2, v1, :cond_3

    const/4 p1, 0x3

    .line 768
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setPlayPos(I)V

    .line 769
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3

    .line 775
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 776
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    .line 775
    invoke-static {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->obtainActiveQueueItemId([JILjava/util/List;)J

    move-result-wide v0

    .line 777
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getPlayingItemRequestBuilder()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object v2

    .line 778
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setListPosition(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    .line 779
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlayDirection(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;

    .line 780
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 6

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    .line 303
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 306
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t:Z

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getShuffle()I

    move-result v1

    .line 308
    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getRepeat()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    const/4 v5, 0x2

    .line 313
    invoke-virtual {v0, v5, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 314
    invoke-virtual {v0, v2, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 315
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(II)V

    const-string v0, "SMUSIC-SV-RadioQueue"

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSavedValues() mIsStreamingUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsFixedRoutine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Shuffle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatMode : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setUriType(I)V

    return-void
.end method

.method private a(II)V
    .locals 3

    .line 323
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    .line 325
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 2

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSetPosition() playMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " position : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " direction : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 984
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const-string p1, "internalSetPosition() but there are no play list, thus reload list."

    .line 986
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Z)V

    return-void

    :cond_0
    if-lt p2, p1, :cond_1

    const-string p1, "internalSetPosition() but ignore this request. It is exceed play list length."

    .line 991
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    return-void

    .line 995
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V

    .line 996
    invoke-direct {p0, p3, v0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IZZ)V

    return-void
.end method

.method private a(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V
    .locals 13
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

    move v1, p2

    move-object/from16 v9, p5

    move/from16 v10, p9

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setList position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uriType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isReload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 428
    iget-object v2, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 430
    iget-object v3, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setBaseUri(Landroid/net/Uri;)V

    .line 433
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(I)V

    move-object/from16 v1, p3

    .line 434
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    const/4 v8, 0x0

    move-object v1, v12

    move v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    if-eqz p10, :cond_1

    const-string v1, "setList but audio only set."

    .line 441
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    return-void

    .line 444
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v10, :cond_2

    const/4 v1, 0x4

    move/from16 v1, p8

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    move/from16 v1, p8

    const/4 v3, 0x0

    .line 448
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZI)V

    goto :goto_1

    .line 450
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v9, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f()V

    :goto_1
    const/4 v1, 0x1

    xor-int/lit8 v3, v10, 0x1

    .line 453
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IZZ)V

    return-void
.end method

.method private a(IZZ)V
    .locals 4

    .line 676
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k()I

    move-result v0

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMetaChanged mPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isGapLessPlaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b()V

    const/4 p1, 0x0

    .line 685
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V

    .line 686
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s()V

    .line 687
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(I)V

    return-void

    .line 690
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    .line 692
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k()I

    move-result v0

    .line 693
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putListInfo(II)V

    .line 694
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 695
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 696
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Z)Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object p3

    .line 697
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->c(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 698
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/advertise/AdPlayType;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 704
    invoke-direct {p0, v2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/music/advertise/AdPlayType;)V

    const/4 v0, 0x1

    .line 705
    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V

    .line 706
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)V

    .line 707
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/advertise/AdPlayType;)V

    return-void

    .line 712
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 713
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s()V

    .line 714
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(I)V

    return-void
.end method

.method private a(JI)V
    .locals 5

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSetQueueItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    .line 1011
    invoke-virtual {v3}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 1012
    invoke-direct {p0, v1, v2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(III)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1017
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "internalSetQueueItem() but it not found id :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    const-string v1, "radio_queue_pref"

    const/4 v2, 0x0

    .line 604
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "playlist_item_id"

    .line 607
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p1, "playlist_id"

    .line 608
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "playlist_name"

    .line 609
    invoke-interface {v0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "playlist_description"

    .line 610
    invoke-interface {v0, p1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "is_fixed_order_playlist"

    .line 611
    invoke-interface {v0, p1, p6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "playlist_ad_info"

    .line 612
    invoke-interface {v0, p1, p7, p8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1311
    iget-object v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->cancel()V

    const-string v2, "arg_playlist_id"

    .line 1312
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    const-string v2, "arg_playlist_name"

    .line 1313
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    const-string v2, "arg_playlist_description"

    .line 1314
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    const-string v2, "arg_playlist_ad_info"

    .line 1315
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A:J

    .line 1316
    iget-object v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iget-wide v3, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A:J

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(J)V

    const-string v2, "arg_play_mode"

    .line 1317
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    const-string v2, "arg_position"

    .line 1318
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "arg_list"

    .line 1319
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v9

    .line 1320
    iget-object v0, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 1321
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_4

    .line 1330
    array-length v0, v9

    if-lez v0, :cond_4

    .line 1331
    invoke-direct {v1, v5, v9, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/database/Cursor;[JI)I

    move-result v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_4

    .line 1322
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v7, 0x3e8

    if-lt v0, v7, :cond_3

    sub-int/2addr v0, v7

    add-int/2addr v0, v4

    .line 1324
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(I)V

    .line 1326
    :cond_3
    iget-object v10, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v11, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    iget-object v12, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    iget-object v13, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    const/4 v14, 0x0

    iget-wide v7, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A:J

    iget-boolean v0, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    move-wide v15, v7

    move/from16 v17, v0

    .line 1327
    invoke-static/range {v10 .. v17}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 1334
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1337
    :cond_5
    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    iget-object v0, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    array-length v3, v9

    :goto_3
    invoke-direct {v12, v4, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;-><init>(ILjava/lang/String;IZ)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 1340
    iget-object v8, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    const/4 v10, 0x0

    move v11, v2

    .line 1341
    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->create(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    move-result-object v0

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open New queue playlist ID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 1343
    iget-object v2, v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    return-void

    .line 1320
    :goto_4
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v5, :cond_8

    if-eqz v6, :cond_7

    .line 1334
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_6
    throw v2
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;III)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;JI)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(JI)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/music/advertise/AdPlayType;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/music/advertise/AdPlayType;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;ZLcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V
    .locals 2

    .line 951
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    .line 957
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v1

    if-gtz v1, :cond_2

    if-eqz v0, :cond_1

    .line 959
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyEmptyQueue()V

    :cond_1
    return-void

    .line 963
    :cond_2
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->success:Z

    if-eqz v1, :cond_3

    .line 964
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->direction:I

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->isGapLessPlaying:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IZZ)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 967
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onQueueComplete()V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/music/advertise/AdPlayType;)V
    .locals 10
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 731
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 732
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/util/List;

    move-result-object v4

    .line 733
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    const/4 v0, 0x1

    .line 734
    new-array v2, v0, [J

    .line 735
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v5

    aput-wide v5, v2, v1

    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 737
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    .line 738
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->buildupNewList(I)Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    .line 737
    invoke-virtual {p1, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    .line 739
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->b(Lcom/samsung/android/app/music/advertise/AdPlayType;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 743
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 744
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const-string p1, "SV-RadioQueue"

    const-string p2, "saveQueue but it is not music media tracks. Thus do not save it"

    .line 531
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 535
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "SV-RadioQueue"

    const-string p2, "saveQueue but it is same the saved list"

    .line 537
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    .line 541
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getQueueString([J)Ljava/lang/String;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    const-wide/16 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v6

    move-object v4, v0

    move v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const-string p1, "SV-RadioQueue"

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveQueue mPlayListId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mUriType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mKeyWord "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " q: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setKeyWord(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setKeyWord(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isLegalAgreedError(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g()V

    const-string p1, "internalReloadQueue() - isLegalAgreed : false"

    .line 341
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "reloadSavedQueue() but ignore this request. Because it is already done. and current is not empty list"

    .line 345
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m()V

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a()V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->perform(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Z)V

    .line 353
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->loadFinished()V

    return-void
.end method

.method private a(ZI)V
    .locals 8

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getUriType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "Open a new list, but it is not in media track thus do not make a queue objects!"

    .line 468
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e()V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v5

    if-eqz p1, :cond_1

    .line 477
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 478
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->isSupportOnline()Z

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZ)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    .line 479
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l()V

    goto :goto_0

    .line 482
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 483
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->isSupportOnline()Z

    move-result v6

    new-instance v7, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;

    invoke-direct {v7, p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$3;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;I)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private a(ZIZZ)V
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;-><init>(ZIZZ)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 930
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v()I

    move-result p2

    .line 931
    iget-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/4 p4, 0x2

    if-le p2, p4, :cond_0

    mul-int/lit8 p2, p2, 0x32

    int-to-long v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p3, p1, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V
    .locals 0

    .line 719
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Z)V

    .line 720
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Z)V
    .locals 12

    .line 358
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "internalSetReloadList() but, empty list."

    .line 359
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 360
    sget-object v4, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->EMPTY_PLAY_ITEMS:Ljava/util/List;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getUriType()I

    move-result v3

    .line 364
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v8

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v4

    const-string v0, "SV-RadioQueue"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalSetReloadList() uriType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 368
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_QUEUE:Ljava/util/List;

    .line 369
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x1

    move-object v1, p0

    move v9, p1

    move v11, p3

    .line 368
    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    :goto_0
    return-void
.end method

.method private a(IIZ)Z
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setMode(IIZ)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IIZ)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IIZ)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string v0, "playlist_id"

    const-string v1, ""

    .line 643
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 5

    .line 822
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueuePosition(I)V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 829
    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->EMPTY_PLAYLIST:[J

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    .line 833
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioId(Ljava/util/List;I)J

    move-result-wide v3

    invoke-static {v1, v2, p1, v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void
.end method

.method private b(II)V
    .locals 10

    .line 549
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

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;

    .line 551
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v4

    .line 552
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getAddedOrderList()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;IZZ)V

    .line 550
    invoke-virtual {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 553
    invoke-direct {p0, p1, p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IZZ)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 1246
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    sget-object v2, Lcom/samsung/android/app/music/advertise/AdPlayType;->PREAD:Lcom/samsung/android/app/music/advertise/AdPlayType;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;

    invoke-direct {v4, p0, v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$4;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/advertise/AdPlayType;Ljava/lang/String;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const-string v0, "SV-RadioQueue"

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchQueueMode() isAdvertisement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    if-eqz p1, :cond_1

    .line 727
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    return-void
.end method

.method private b()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isLegalAgreed(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string v0, "playlist_name"

    const-string v1, ""

    .line 647
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 4

    .line 1347
    new-array v0, p1, [I

    rsub-int v1, p1, 0x3e8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int v3, v1, v2

    .line 1350
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1352
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;[I)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-RadioQueue"

    .line 1448
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B()Z

    move-result p0

    return p0
.end method

.method private c(Z)Z
    .locals 1

    .line 935
    iget v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B:I

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 942
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->moveToNext(I)Z

    move-result p1

    return p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)I
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result p0

    return p0
.end method

.method private d(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string v0, "playlist_description"

    const-string v1, ""

    .line 651
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-RadioQueue"

    .line 1452
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d()Z
    .locals 4

    .line 414
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

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

.method static synthetic e(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Ljava/util/List;
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->cancel()V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-RadioQueue"

    .line 1456
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "is_fixed_order_playlist"

    const/4 v1, 0x0

    .line 655
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private f(Landroid/content/SharedPreferences;)J
    .locals 3

    const-string v0, "playlist_ad_info"

    const-wide/16 v1, 0x0

    .line 659
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l()V

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    if-ne v0, v1, :cond_0

    const-string v0, "notifyQueueComposed: skip to notify by playing ad."

    .line 511
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    .line 522
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyQueueComposed size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getUriType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;ILjava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-RadioQueue"

    .line 1460
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyCurrentMetaAndLegalError(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_0
    return-void
.end method

.method private h()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c()V

    return-void
.end method

.method private i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a()V

    return-void
.end method

.method private j()I
    .locals 1

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getCount()I

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w()V

    return-void
.end method

.method private k()I
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s()V

    return-void
.end method

.method static synthetic l(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    return-object p0
.end method

.method private l()V
    .locals 13

    .line 586
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 587
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "_id"

    .line 590
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 586
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 592
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

    :cond_3
    :goto_2
    const-wide/16 v2, -0x1

    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    iget-wide v11, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A:J

    move-object v4, p0

    move-wide v5, v2

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    .line 596
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putPlayListId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    .line 598
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putPlayListId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 9

    .line 617
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    const-string v1, "radio_queue_pref"

    const/4 v2, 0x0

    .line 618
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 620
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    .line 621
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "reloadPlayListInfo but playlist is null !!"

    .line 622
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f(Ljava/lang/String;)V

    return-void

    .line 626
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/content/SharedPreferences;)J

    move-result-wide v7

    .line 627
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    .line 628
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    .line 629
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Landroid/content/SharedPreferences;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    .line 630
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A:J

    .line 631
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iget-wide v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(J)V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    move-wide v2, v7

    .line 633
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putPlayListId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    .line 635
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putPlayListId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f()V

    return-void
.end method

.method static synthetic n(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    return-object p0
.end method

.method private n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    return-object v0

    .line 667
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NormalQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 668
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/RepeatDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    .line 670
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ShuffleDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    .line 671
    new-instance v0, Lcom/samsung/android/app/music/service/queue/AdDecor;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->l:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/queue/AdDecor;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    .line 672
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    return-object v0
.end method

.method private o()Landroid/net/Uri;
    .locals 5

    .line 784
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p()J

    move-result-wide v0

    const-string v2, "SV-RadioQueue"

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentAudioUri() audioId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private p()J
    .locals 2

    .line 794
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k()I

    move-result v0

    .line 795
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v1

    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioId(Ljava/util/List;I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private q()Landroid/net/Uri;
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->r()Landroid/net/Uri;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setBaseUri(Landroid/net/Uri;)V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private r()Landroid/net/Uri;
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 14

    .line 837
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Z)Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v0

    .line 842
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->c(Lcom/samsung/android/app/music/advertise/AdPlayType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/advertise/AdPlayType;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 846
    invoke-direct {p0, v0, v9}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;)V

    return-void

    .line 850
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(I)[I

    move-result-object v0

    .line 851
    array-length v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 852
    invoke-virtual {v9, v3, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    .line 855
    :cond_2
    aget v7, v0, v1

    if-ltz v7, :cond_6

    .line 856
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-lt v7, v0, :cond_3

    goto/16 :goto_0

    .line 861
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioId(Ljava/util/List;I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    const-string v0, "executeNextPlayingItem next playing item id is wrong !! "

    .line 863
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v9, v3, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    .line 867
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->appendWithBaseUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 868
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    if-eqz v0, :cond_5

    .line 869
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 870
    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SV-RadioQueue"

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNextPlayingItem() but it already set up Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->getItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 874
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    .line 880
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 881
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    .line 880
    invoke-static {v0, v7, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->obtainActiveQueueItemId([JILjava/util/List;)J

    move-result-wide v11

    .line 882
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 883
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getUriType()I

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    .line 884
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v8

    const/4 v10, 0x0

    iget-object v13, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Landroid/net/Uri;ILjava/lang/String;IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;ZJLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    :goto_0
    const-string v0, "SV-RadioQueue"

    const-string v1, "next playing item position is out of index."

    .line 857
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual {v9, v3, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 918
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 919
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->v()I

    move-result v0

    if-gtz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 946
    iget v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B:I

    .line 947
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->moveToPrev()V

    return-void
.end method

.method private v()I
    .locals 1

    .line 973
    iget v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B:I

    return v0
.end method

.method private w()V
    .locals 4

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "internalRemoveAllTracks() but exist items is 0"

    .line 1035
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Ljava/lang/String;)V

    return-void

    .line 1038
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(I)[I

    move-result-object v1

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalRemoveAllTracks() count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x()V

    .line 1041
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->removePositions([I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1043
    invoke-direct {p0, v1, v2, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(IZZ)V

    .line 1045
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1046
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f()V

    :cond_2
    return-void
.end method

.method private x()V
    .locals 1

    const/4 v0, 0x0

    .line 1051
    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    .line 1052
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Ljava/lang/String;)V

    .line 1053
    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    .line 1054
    iput-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y:Ljava/lang/String;

    return-void
.end method

.method private y()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1079
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method private z()Z
    .locals 2

    .line 1113
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

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


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    .line 1465
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    .line 1466
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(ZZ)V

    .line 1467
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1470
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t:Z

    .line 1471
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a()V

    return-void
.end method

.method public disableMode()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  PlayList ID : "

    .line 1418
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  PlayList Name : "

    .line 1420
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Meta title: "

    .line 1422
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  current uri: "

    .line 1424
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1425
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  keyword : "

    .line 1426
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "  currentPlayingItem: "

    .line 1429
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  QueueItems: "

    .line 1431
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "-- setting name : RadioSettingManager"

    .line 1433
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1208
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->loadSavedValues(Z)V

    return-void
.end method

.method public enqueue(ILjava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)V"
        }
    .end annotation

    .line 897
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->cancel()V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 0

    .line 891
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->cancel()V

    return-void
.end method

.method public getCurAudioId()J
    .locals 2

    .line 1128
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentBaseUri()Landroid/net/Uri;
    .locals 1

    .line 1123
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 1118
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->o()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInformation(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1390
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1391
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    .line 1393
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->A()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    .line 1388
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1395
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1386
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtraInformation(II)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 1407
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getShuffleMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 1409
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getRepeatMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueExtras()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode(I)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 1185
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

    .line 1183
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getShuffleMode()I

    move-result p1

    return p1

    .line 1181
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getRepeatMode()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNowPlayingListPosition()I
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getListInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;->getPlayPos()I

    move-result v0

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 2

    .line 1069
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->y()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 1072
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setCurrentPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 4

    .line 1094
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->z()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1101
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->n()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueModeDecor;->getPosition(I)[I

    move-result-object v0

    .line 1102
    array-length v2, v0

    if-nez v2, :cond_2

    const-string v0, "getPrevItem() but positions.length is 0."

    .line 1103
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Ljava/lang/String;)V

    return-object v1

    .line 1106
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    const-string v1, "SV-RadioQueue"

    .line 1107
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

    .line 1098
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Ljava/lang/String;)V

    return-object v1
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

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getQueueMode(I)I

    move-result v0

    return v0
.end method

.method public getSortMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUnionMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUriType()I
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getUriType()I

    move-result v0

    return v0
.end method

.method public loadSavedValues(Z)V
    .locals 0

    return-void
.end method

.method public movePosition(II)V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(II)V

    return-void
.end method

.method public moveQueueItem(II)V
    .locals 0

    return-void
.end method

.method public moveToNext(ZZ)V
    .locals 2

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToNext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ignoreRepeatMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t()V

    .line 905
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Z)Z

    move-result v0

    const/4 v1, 0x2

    .line 906
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZIZZ)V

    return-void
.end method

.method public moveToPrev()V
    .locals 3

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToPrev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->t()V

    .line 913
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->u()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 914
    invoke-direct {p0, v0, v1, v0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZIZZ)V

    return-void
.end method

.method public moveToQueueItem(JI)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(JI)V

    return-void
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "arg_toggle_mode"

    .line 1302
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1303
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->toggleMode(I)I

    goto :goto_1

    :pswitch_1
    const-string p1, "arg_set_mode"

    .line 1297
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "arg_set_mode_value"

    .line 1298
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1299
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->setMode(II)V

    goto :goto_1

    :pswitch_2
    const-string p1, "arg_reorder_from"

    .line 1292
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "arg_reorder_to"

    .line 1293
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1294
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;II)V

    goto :goto_1

    :pswitch_3
    const-string p1, "arg_delete"

    .line 1280
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "arg_delete"

    .line 1281
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 1282
    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->a(Landroid/content/Context;[I)V

    goto :goto_0

    :cond_0
    const-string p1, "arg_playlist_id"

    .line 1283
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "arg_playlist_id"

    .line 1284
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1285
    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1287
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->w:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1288
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->b()V

    goto :goto_1

    .line 1277
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs onCustomEvent(I[Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1235
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->d()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1238
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;->getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->c()V

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public reloadAudioIds()V
    .locals 3

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reloadAudioIds() - isLegalAgreed : false"

    .line 376
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reloadAudioIds() but already reloaded"

    .line 380
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->q()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->perform(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 384
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(ZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Z)V

    return-void
.end method

.method public reloadMeta()V
    .locals 1

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c()V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a()V

    :goto_0
    return-void
.end method

.method public reloadQueue(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 332
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Z)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(Z)V

    :goto_0
    return-void
.end method

.method public removeTracks([J)V
    .locals 0

    return-void
.end method

.method public removeTracksPositions([I)V
    .locals 0

    return-void
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 0

    .line 419
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->s:Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadListExecutor;->cancel()V

    return-void
.end method

.method public setMode(II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 1172
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

    .line 1169
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->setShuffleMode(I)V

    goto :goto_0

    .line 1166
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->setRepeatMode(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->m:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;Landroid/os/Handler;J)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h:Landroid/os/HandlerThread;

    .line 284
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;Landroid/os/Handler;J)V

    .line 285
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->b(IZ)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(IZ)V

    return-void
.end method

.method public setSortMode(I)V
    .locals 0

    return-void
.end method

.method public toggleMode(I)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 1192
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getMode(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getToggleMode(II)I

    move-result v0

    packed-switch p1, :pswitch_data_0

    .line 1201
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

    .line 1198
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->setShuffleMode(I)V

    goto :goto_0

    .line 1195
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->setRepeatMode(I)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
