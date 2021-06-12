.class final Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final MSG_CLEAR_REPEAT_COUNT:I = 0x2

.field private static final MSG_READY:I = 0x1

.field private static final SUB_TAG:Ljava/lang/String; = "ServiceForwardRewindController"

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final TIME_SKIP_MIDDLE_INDEX:I = 0x2


# instance fields
.field private mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mIsForwardRewindReady:Z

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mRepeatCount:I

.field private mRequestTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    const/16 v0, 0x64

    .line 63
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRequestTag:I

    .line 65
    new-instance v0, Landroid/os/Handler;

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    .line 235
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    return p1
.end method

.method private getSkippingTime()I
    .locals 5

    .line 88
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 90
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 91
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    aget v0, v1, v0

    return v0
.end method

.method private isReady()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    return v0
.end method

.method private isSupportForward()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->isSupportForward()Z

    move-result v0

    return v0
.end method

.method private isSupportRewind()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->isSupportRewind()Z

    move-result v0

    return v0
.end method

.method private isWorking()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method forward()V
    .locals 7

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isSupportForward()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isGoingToOtherSong()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    return-void

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->getSkippingTime()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 166
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "Try to seek position exceed duration, thus go to next song"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->completePlayingInternal(Z)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    :goto_0
    return-void
.end method

.method rewind()V
    .locals 9

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isSupportRewind()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isGoingToOtherSong()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    return-void

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->getSkippingTime()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_6

    .line 195
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRepeat()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    return-void

    .line 200
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 204
    invoke-virtual {v5}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.music.mediasession.music_metadata"

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/MediaMetadata;

    const-string v1, "android.media.metadata.DURATION"

    .line 206
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 207
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;->a:[I

    aget v2, v5, v2

    int-to-long v5, v2

    cmp-long v2, v0, v5

    if-lez v2, :cond_5

    sub-long v3, v0, v5

    .line 211
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->E_:Z

    if-eqz v2, :cond_5

    .line 212
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v5, "cross_fade"

    const/4 v6, 0x0

    .line 213
    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    :cond_5
    const-string v2, "SMUSIC-SV-Player"

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rewind() go to prev item, calculated time  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " prev duration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->prev(J)Z

    return-void

    .line 228
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    return-void
.end method

.method public seek(J)J
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV-Player"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ignore this, our ff/rew task is working now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    move-result-wide p1

    return-wide p1
.end method

.method startForward(I)V
    .locals 5

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isWorking()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a(I)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->SUB_TAG:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRequestTag:I

    return-void
.end method

.method startRewind(I)V
    .locals 5

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isWorking()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a(I)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->SUB_TAG:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRequestTag:I

    return-void
.end method

.method stop(I)V
    .locals 3

    .line 111
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRequestTag:I

    const/16 v1, 0x64

    if-eq v0, p1, :cond_0

    if-eq v1, p1, :cond_0

    const-string v0, "SV-Player"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() Request Tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    .line 119
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRequestTag:I

    return-void
.end method

.method waitReady()V
    .locals 4

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    const/16 v0, 0x64

    .line 128
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->stop(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
