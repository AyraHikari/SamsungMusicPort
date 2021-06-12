.class Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;
    }
.end annotation


# static fields
.field private static final DEFAULT_PLAY_SPEED:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerCast"

.field private static final TAG:Ljava/lang/String; = "SV-PlayerCast"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDuration:J

.field private mIsQueueComplete:Z

.field private mIsSupposedToBePlaying:Z

.field private final mOnCastPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

.field private mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private mPlaybackState:I

.field private mPlayerState:I

.field private mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

.field private mSeekPosition:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    .line 41
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mDuration:J

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    .line 53
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsQueueComplete:Z

    .line 55
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mOnCastPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    .line 135
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    .line 136
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->stopInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->notifyPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->pauseInternal(J)V

    return-void
.end method

.method private notifyPlayerStateChanged(ZI)V
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    if-ne v0, p2, :cond_0

    return-void

    .line 370
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    .line 371
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    :cond_1
    return-void
.end method

.method private pauseInternal(J)V
    .locals 2

    .line 354
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "[pauseInternal] reset playerState due to not prepared."

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 356
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->stopTimer(J)V

    return-void
.end method

.method private stopInternal()V
    .locals 3

    const/4 v0, 0x1

    .line 362
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->stopTimer(J)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public fade(FLcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 0

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mDuration:J

    return-wide v0
.end method

.method public getPlaySpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isBuffering()Z
    .locals 2

    .line 340
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 315
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 325
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .line 320
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPlaySpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->getCurrentPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->pauseInternal(J)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->pause()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->release()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v1, ""

    const/16 v2, 0x67

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public reset(Z)V
    .locals 0

    return-void
.end method

.method public seekTo(J)J
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->updateCurrentPosition(J)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->seek(J)V

    .line 234
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    return-wide p1
.end method

.method public setCrossFade(I)V
    .locals 0

    return-void
.end method

.method public setCurrentVolume(F)V
    .locals 0

    return-void
.end method

.method public setCustomAction(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsQueueComplete:Z

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 4

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getQueueItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->setCurrentItemId(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPositionCalculator:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->updateCurrentPosition(J)V

    .line 195
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsQueueComplete:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsQueueComplete:Z

    .line 197
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 200
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const/4 p1, 0x6

    .line 201
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->isSessionActivated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->play(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;J)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->requestStartSession()V

    :goto_0
    return-void
.end method

.method public setDmrId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0

    return-void
.end method

.method public setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
    .locals 1

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 216
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mOnCastPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->setOnCastPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 0

    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 0

    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    return-void
.end method

.method public setSupposedToBePlaying(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mIsSupposedToBePlaying:Z

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] mPlayerState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPlaybackState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mPlaybackState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 154
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->resume()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "Ignore start in playing state."

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->stopInternal()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->notifyPlayerStateChanged(ZI)V

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mSeekPosition:J

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->mClient:Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->stop()V

    return-void
.end method
