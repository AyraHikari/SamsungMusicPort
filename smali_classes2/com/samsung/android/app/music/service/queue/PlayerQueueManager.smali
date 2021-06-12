.class final Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;


# static fields
.field private static final a:Ljava/lang/String; = "PlayerQueueManager"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

.field private j:Z

.field private final k:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 12

    move-object v0, p0

    move-object v8, p1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v9, 0x1

    .line 73
    iput-boolean v9, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->j:Z

    .line 75
    new-instance v1, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;-><init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V

    iput-object v1, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .line 173
    iget-object v10, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    iget-object v10, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    new-instance v11, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .line 178
    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v5

    move-object v1, v11

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    .line 176
    invoke-virtual {v10, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, p4

    .line 180
    iput-object v1, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 181
    iput-object v8, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e:Landroid/content/Context;

    .line 182
    new-instance v1, Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    iget-object v2, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    iput-object v1, v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    .line 183
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 184
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- Queue name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 552
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "error_type"

    .line 554
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v4, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b()I
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)I
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b()I

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setActiveQueueType(I)V

    .line 563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 564
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(I)V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 570
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz p1, :cond_1

    .line 571
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 572
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 579
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    :cond_0
    return-void
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 655
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    .line 656
    instance-of v1, v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    if-eqz v1, :cond_0

    .line 657
    check-cast v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    :cond_0
    return-void
.end method

.method private d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c()V

    return-void
.end method

.method private e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method private f()Z
    .locals 4

    .line 640
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

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


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 645
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public disableMode()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->disableMode()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    return-void
.end method

.method public enableMode()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enableMode()V

    return-void
.end method

.method public enqueue(ILjava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue(ILjava/util/List;ZI)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    return-void
.end method

.method public getCurAudioId()J
    .locals 2

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentBaseUri()Landroid/net/Uri;
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurrentUri()Landroid/net/Uri;

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

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object v0

    .line 613
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/16 v0, 0xc

    .line 614
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 610
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/16 v0, 0xb

    .line 611
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 608
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 606
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 604
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    return-object p1

    .line 602
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    .line 600
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    .line 594
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "player_extra_content"

    .line 598
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 592
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    .line 590
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    return-object p1

    .line 588
    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
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

    const/4 p1, 0x0

    return-object p1

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getMode(I)I

    move-result p1

    return p1

    .line 395
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d(I)I

    move-result p1

    return p1
.end method

.method public getNowPlayingListPosition()I
    .locals 1

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v0

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

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

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a()I

    move-result v0

    return v0
.end method

.method public getSortMode()I
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getSortMode()I

    move-result v0

    return v0
.end method

.method public getUnionMode()I
    .locals 1

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getUnionMode()I

    move-result v0

    return v0
.end method

.method public getUriType()I
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getUriType()I

    move-result v0

    return v0
.end method

.method public loadSavedValues(Z)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(I)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 217
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 218
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v3, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    if-nez v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    :goto_0
    return-void
.end method

.method public movePosition(II)V
    .locals 1

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    return-void
.end method

.method public moveQueueItem(II)V
    .locals 1

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveQueueItem(II)V

    return-void
.end method

.method public moveToNext(ZZ)V
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    return-void
.end method

.method public moveToPrev()V
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    return-void
.end method

.method public moveToQueueItem(JI)V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToQueueItem(JI)V

    return-void
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v2, "arg_toggle_mode"

    .line 539
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 541
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->e(I)I

    goto :goto_2

    :pswitch_1
    const-string v2, "arg_set_mode"

    .line 530
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "arg_set_mode_value"

    .line 531
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v1, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_1

    .line 535
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 533
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(II)V

    goto :goto_2

    .line 522
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    goto :goto_2

    :pswitch_3
    const-string v0, "arg_play_mode"

    .line 525
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f(I)V

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILandroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs onCustomEvent(I[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 509
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/16 v0, 0x9

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/16 v0, 0x8

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->f:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;-><init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c()V

    goto/16 :goto_0

    .line 475
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->f:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;-><init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 468
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v0, "com.samsung.android.app.music.core.action.UPDATE_WIDGET_LIST"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/4 v0, 0x5

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :pswitch_6
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;->getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 458
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 443
    :pswitch_7
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;->getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 447
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_5

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    goto :goto_0

    .line 450
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    goto :goto_0

    .line 435
    :pswitch_8
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;->getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 439
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 440
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    return-void
.end method

.method public reloadAudioIds()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadAudioIds()V

    return-void
.end method

.method public reloadMeta()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadMeta()V

    return-void
.end method

.method public reloadQueue(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->j:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->j:Z

    :cond_2
    return-void
.end method

.method public removeTracks([J)V
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracks([J)V

    return-void
.end method

.method public removeTracksPositions([I)V
    .locals 1

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracksPositions([I)V

    return-void
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    return-void
.end method

.method public setMode(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setMode(II)V

    goto :goto_1

    .line 386
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(II)V

    :goto_1
    return-void
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
    .locals 1

    .line 207
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->h:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->k:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b(I)V

    return-void
.end method

.method public setSortMode(I)V
    .locals 1

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setSortMode(I)V

    return-void
.end method

.method public toggleMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->toggleMode(I)I

    move-result p1

    return p1

    .line 404
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->i:Lcom/samsung/android/app/music/service/ShuffleRepeatController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->e(I)I

    move-result p1

    return p1
.end method
