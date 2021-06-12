.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final DEFAULT_GAP_REQUEST:I = 0x64

.field private static final HALF_SECOND:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final MAX_GAP_REQUEST:I = 0x3e8

.field private static final MSG_CHANGE_CAST_PLAYER:I = 0x13

.field private static final MSG_CHANGE_DEFAULT_PLAYER:I = 0xe

.field private static final MSG_CHANGE_DMR_PLAYER:I = 0xf

.field private static final MSG_DRM_REQUEST:I = 0xc

.field private static final MSG_INTERNAL_PLAYER_CHANGED:I = 0x4

.field private static final MSG_INTERNAL_PLAYER_STATE_CHANGED:I = 0x5

.field private static final MSG_MEDIA_ERROR:I = 0xa

.field private static final MSG_PLAYER_BUFFERING:I = 0x3

.field private static final MSG_PLAY_SPEED_CHANGED:I = 0x11

.field private static final MSG_PREPARED:I = 0x8

.field private static final MSG_RESET_SET_DATA_COUNT:I = 0x12

.field private static final MSG_SEEK_COMPLETE:I = 0x6

.field private static final MSG_SERVER_DIED:I = 0x9

.field private static final MSG_SET_DATA:I = 0x1

.field private static final MSG_SET_DATA_PENDING:I = 0x2

.field private static final MSG_SET_NEXT_DATA:I = 0xd

.field private static final MSG_SOUND_PATH_CHANGED:I = 0x10

.field private static final MSG_TRACK_ENDED:I = 0x7

.field private static final SET_DATA_COUNT_RESET_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final TIME_OUT_COUNT:I = 0x3

.field private static final WAITING_TIME:I = 0x1f4


# instance fields
.field private mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHasNewRequest:Z

.field private mIsQuit:Z

.field private final mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

.field private mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final mOnPlayerStateChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCount:I

.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mSetMetaRequestCount:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mIsQuit:Z

    .line 115
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    .line 183
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 355
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 119
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-void
.end method

.method private checkNeedToNotifyPlayStateListener()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private executeCurrentMediaTask(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 2

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->cancel()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    .line 322
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hasDmrPendingMessages()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPreparing()Z
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPreparing()Z

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isBuffering()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-Player"

    .line 514
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reserveResetMetaCount()V
    .locals 3

    const/16 v0, 0x12

    const-wide/16 v1, 0x3e8

    .line 147
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    return-void
.end method

.method private setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 3

    :try_start_0
    const-string v0, "SV-Player"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SET_DATA next content is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SV-Player"

    const-string v0, "ignore previous data source error. But if there is no new request it is need to check."

    .line 400
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateMusicPlaybackState()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackState(I)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    return-void
.end method

.method private updateMusicPlaybackState(I)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getActiveQueueItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setActiveQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlayerState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPosition(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 373
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 374
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getSoundPathType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSoundPath(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 375
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlayerType(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 376
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setDuration(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 377
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getCurrentExtraData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setMessage(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 380
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setContent(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    const-string v1, "player_extra_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setMessage(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    const-string v1, "player_extra_content"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setContent(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    :goto_0
    return-void
.end method

.method private updateMusicPlaybackStateAsPause()V
    .locals 2

    const/4 v0, 0x2

    .line 365
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackState(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    return-void
.end method


# virtual methods
.method addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method changeToCastPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;)V
    .locals 1

    const/16 v0, 0x13

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method changeToDefaultPlayer(Z)V
    .locals 1

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method changeToDmrPlayer(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->internalChangeToCastPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;)V

    goto/16 :goto_7

    .line 195
    :pswitch_2
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    goto/16 :goto_7

    .line 289
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "notifyPlaybackState MSG_PLAY_SPEED_CHANGED"

    .line 290
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 294
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "notifyPlaybackState MSG_SOUND_PATH_CHANGED"

    .line 274
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSoundPath(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 278
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_1

    .line 221
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->internalChangeToDmrPlayer(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 218
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->internalChangeToDefaultPlayer(Z)V

    goto/16 :goto_7

    .line 215
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto/16 :goto_7

    .line 248
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 250
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_2

    .line 241
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 243
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onError(IILandroid/os/Bundle;)V

    goto :goto_3

    .line 234
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 236
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onServerDied()V

    goto :goto_4

    .line 299
    :pswitch_b
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "notifyPlaybackState MSG_PREPARED"

    .line 300
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 302
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    goto :goto_5

    .line 304
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    goto/16 :goto_7

    .line 227
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 229
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onTrackEnded(Z)V

    goto :goto_6

    .line 283
    :pswitch_d
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "notifyPlaybackState MSG_SEEK_COMPLETE"

    .line 284
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto/16 :goto_7

    .line 267
    :pswitch_e
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "notifyPlaybackState MSG_INTERNAL_PLAYER_STATE_CHANGED"

    .line 268
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto :goto_7

    .line 261
    :pswitch_f
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "notifyPlaybackState MSG_INTERNAL_PLAYER_CHANGED"

    .line 262
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto :goto_7

    .line 255
    :pswitch_10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "notifyPlaybackState MSG_PLAYER_BUFFERING"

    .line 256
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto :goto_7

    :pswitch_11
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_7

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isPreparing()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    .line 205
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    .line 206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 208
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 211
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_7

    .line 198
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->executeCurrentMediaTask(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_4
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method hasPendingData()Z
    .locals 2

    .line 446
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    .line 447
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method isGoingToTrackEnd()Z
    .locals 1

    const/4 v0, 0x7

    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method isQuit()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mIsQuit:Z

    return v0
.end method

.method notifyPlaybackState()V
    .locals 3

    const-string v0, "notifyPlaybackState"

    .line 338
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackState()V

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 342
    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyPlaybackStateAsPause()V
    .locals 3

    const-string v0, "notifyPlaybackStateAsPause"

    .line 347
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackStateAsPause()V

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 351
    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBuffering(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasDmrPendingMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SV-Player"

    const-string v0, "onBuffering(), do not send MSG_PLAYER_BUFFERING before handle pending data."

    .line 460
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 466
    iput v1, v0, Landroid/os/Message;->what:I

    .line 467
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDrmRequest(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xc

    .line 455
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(IILandroid/os/Bundle;)V
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-Player"

    const-string p2, "There are a new request thus ignore current error."

    .line 430
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendErrorMsg(IILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onPlaySpeedChanged(F)V
    .locals 0

    const/16 p1, 0x11

    .line 451
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPlayerChanged()V
    .locals 1

    const/4 v0, 0x4

    .line 472
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 2

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasDmrPendingMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SV-Player"

    const-string v0, "onPlayerStateChanged(), do not send MSG_INTERNAL_PLAYER_STATE_CHANGED before handle pending data."

    .line 477
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x6

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 487
    iput v1, v0, Landroid/os/Message;->what:I

    .line 488
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 489
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrepared(Z)V
    .locals 2

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasDmrPendingMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SV-Player"

    const-string v0, "onPrepared(), do not send MSG_PREPARED before handle pending data."

    .line 407
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 412
    iput v1, v0, Landroid/os/Message;->what:I

    .line 413
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServerDied()V
    .locals 3

    const/16 v0, 0x9

    const-wide/16 v1, 0x7d0

    .line 425
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSoundPathChanged(I)V
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x10

    .line 494
    iput v1, v0, Landroid/os/Message;->what:I

    .line 495
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 496
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTrackEnded(Z)V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 419
    iput v1, v0, Landroid/os/Message;->what:I

    .line 420
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method quit()V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mIsQuit:Z

    return-void
.end method

.method removeAllCommand()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method sendErrorMsg(IILandroid/os/Bundle;)V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 438
    iput v1, v0, Landroid/os/Message;->what:I

    .line 439
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 440
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 441
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 442
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 2

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeAllCommand()V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->reserveResetMetaCount()V

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    mul-int/lit8 v0, v0, 0x64

    const/16 v1, 0x3e8

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 155
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V
    .locals 2

    const/16 v0, 0xd

    .line 174
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeMessages(I)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
