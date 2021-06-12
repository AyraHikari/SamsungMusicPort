.class public Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "CrossFade: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mEndPosition:J

.field private mFadeStartTime:J

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mIsActiveFadeTransition:Z

.field private mIsSupportMedia:Z

.field private mIsSupportNextMedia:Z

.field private final mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportMedia:Z

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportNextMedia:Z

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    return-void
.end method

.method private cancelTimer()V
    .locals 2

    const-string v0, "cancelTimer"

    .line 204
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->printLog(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private completedPlaying(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method private completedPlayingAndSkip(Landroid/media/MediaPlayer;F)V
    .locals 2

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->fadeInFrom0(Landroid/media/MediaPlayer;)V

    .line 225
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->setTimer(JF)V

    return-void
.end method

.method private disable()V
    .locals 2

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private enable()V
    .locals 2

    .line 240
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method private isSupportCrossFade()Z
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossFade: current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " next: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportNextMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportMedia:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportNextMedia:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportMedia(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Z
    .locals 0

    .line 137
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossFade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private release()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    return-void
.end method

.method private setTimer(JF)V
    .locals 4

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->isSupportCrossFade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    return-void

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossFade: setTimer currentPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mEndPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " playSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFadeStartTime:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p1

    long-to-double p1, v0

    float-to-double v0, p3

    div-double/2addr p1, v0

    double-to-long p1, p1

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    const-string p3, "SMUSIC-SV-PlayerMedia"

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossFade: setTimer triggerAtMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p3, :cond_3

    .line 197
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 199
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-interface {p3, p0, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_4
    :goto_0
    const-string p1, "SMUSIC-SV-PlayerMedia"

    const-string p2, "CrossFade: setTimer ignore this request. position error"

    .line 188
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    return v0
.end method

.method public onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "SV-PlayerMedia"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossFade: onMediaPlayerStateChanged() mediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 94
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->release()V

    goto/16 :goto_2

    .line 114
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->isSupportCrossFade()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "play_speed"

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->completedPlayingAndSkip(Landroid/media/MediaPlayer;F)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->completedPlaying(Landroid/media/MediaPlayer;)V

    .line 123
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportNextMedia:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportMedia:Z

    goto :goto_2

    .line 111
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    goto :goto_2

    .line 91
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    goto :goto_2

    :pswitch_5
    const-string p1, "current_position"

    .line 85
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "play_speed"

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    int-to-long v0, p1

    .line 87
    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->setTimer(JF)V

    goto :goto_2

    .line 80
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->disableOffload(Landroid/media/MediaPlayer;)Z

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->isSupportMedia(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportMedia:Z

    goto :goto_2

    .line 100
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 101
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->isSupportMedia(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsSupportNextMedia:Z

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->isSupportCrossFade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getCurrentPosition()J

    move-result-wide p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 105
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getPlaySpeed()F

    move-result v0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->setTimer(JF)V

    goto :goto_2

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->cancelTimer()V

    goto :goto_2

    .line 97
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getDuration()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onSeekTo(J)V
    .locals 2

    const-string v0, "SV-PlayerMedia"

    const-string v1, "CrossFade: onSeekTo()"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getPlaySpeed()F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->setTimer(JF)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getCurrentPosition()J

    move-result-wide v0

    const-string v2, "SMUSIC-SV-PlayerMedia"

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrossFade:  matched media almost end. Current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Targeted position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mEndPosition:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFadeStartTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->playingCompleted()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getPlaySpeed()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->setTimer(JF)V

    :goto_0
    return-void
.end method

.method public setNextMediaplayer(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setNextMediaPlayerInternal(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 5

    const-string v0, "SV-PlayerMedia"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossFade: setValue() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFadeStartTime:J

    .line 153
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object p1

    .line 154
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->setCrossFadeActivated(Z)V

    if-eqz v0, :cond_1

    .line 156
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFadeStartTime:J

    long-to-int v1, v1

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->setOptions(II)V

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    move-result-object p1

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mFadeStartTime:J

    long-to-int v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->setOptions(II)V

    .line 159
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-eq p1, v0, :cond_3

    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 163
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mIsActiveFadeTransition:Z

    if-eqz p1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->enable()V

    goto :goto_1

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->disable()V

    .line 170
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 172
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getPlaySpeed()F

    move-result p1

    .line 171
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/MediaCrossFadeController;->setTimer(JF)V

    :cond_4
    return-void
.end method
