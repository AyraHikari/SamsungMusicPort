.class public Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field private static final EXTRA_REASON_EMERGENCY:Ljava/lang/String; = "reason"

.field private static final GUARANTEE_END_GAP:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "AppSkipSilence: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"

.field private static final URI_WEB_CONTENTS:Ljava/lang/String; = "http"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mIsActiveSkipSilences:Z

.field private final mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

.field private final mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 78
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "SV-PlayerMedia"

    const-string v1, "AppSkipSilence: constructor"

    .line 96
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;ZLjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilences(ZLjava/lang/String;)V

    return-void
.end method

.method private cancelScheduledExecutor()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private cancelSkipSilenceTimer()V
    .locals 2

    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "AppSkipSilence: cancelSkipSilenceTimer"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelScheduledExecutor()V

    return-void
.end method

.method private completePlaying()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getCurrentPosition()J

    move-result-wide v0

    const-string v2, "SMUSIC-SV-PlayerMedia"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSkipSilence:  matched media end. Current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Targeted position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 112
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->playingCompleted()V

    :cond_0
    return-void
.end method

.method private completedPlaying(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->start(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method private completedPlayingAndSkip(Landroid/media/MediaPlayer;F)V
    .locals 2

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v0

    .line 222
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->skip(J)V

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->start(Landroid/media/MediaPlayer;)V

    long-to-int p1, v0

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimer(IF)V

    :cond_0
    return-void
.end method

.method private disable()V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private enable(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SV-PlayerMedia"

    const-string v1, "AppSkipSilence: enable"

    .line 254
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_2

    const-string v0, "SV-PlayerMedia"

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: enable mNextData.endPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->isSupportedMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processSkipSilence(Ljava/lang/String;)[J

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setExistNextMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_2
    return-void
.end method

.method private isSupportedMedia(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "http"

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private processAndUpdateSkipSilence(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SV-PlayerMedia"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: processAndUpdateSkipSilence nextPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->isSupportedMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processSkipSilence(Ljava/lang/String;)[J

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    :cond_0
    return-void
.end method

.method private processSkipSilence(Ljava/lang/String;)[J
    .locals 7

    .line 193
    new-instance v0, Lcom/samsung/android/media/mir/SemSilenceDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;-><init>(Ljava/lang/String;)V

    .line 194
    sget-wide v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->DEFAULT_THRESHOLD:D

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePosition(D)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "SMUSIC-SV-PlayerMedia"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSkipSilence: processSkipSilence THRESHOLD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/samsung/android/media/mir/SemSilenceDetector;->DEFAULT_THRESHOLD:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " FrontFindPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "us / RearFindPosition : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "us"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    aget-wide v1, p1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    aput-wide v1, p1, v3

    .line 200
    aget-wide v1, p1, v4

    div-long/2addr v1, v5

    aput-wide v1, p1, v4

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->release()V

    return-object p1
.end method

.method private release()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private setSkipSilenceTimer(IF)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimerInternal(IF)V

    :cond_0
    return-void
.end method

.method private setSkipSilenceTimerInternal(IF)V
    .locals 6

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: setSkipSilenceTimerInternal currentPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mEndPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 126
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " playSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 128
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    int-to-long v0, p1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    float-to-double p1, p2

    div-double/2addr v0, p1

    double-to-long p1, v0

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: setSkipSilenceTimerInternal triggerAtMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->startScheduledExecutor(J)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-SV-PlayerMedia"

    const-string p2, "AppSkipSilence: setSkipSilenceTimerInternal ignore this request. position error"

    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSkipSilences(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: setSkipSilences isOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eq v0, p1, :cond_1

    .line 271
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    .line 272
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz p1, :cond_0

    .line 274
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->disable()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpSkipSilence(Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->clear()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->clear()V

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setUpSkipSilenceInternal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setUpSkipSilenceInternal(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SV-PlayerMedia"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: setUpSkipSilenceInternal currentPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->isSupportedMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processSkipSilence(Ljava/lang/String;)[J

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    :cond_0
    return-void
.end method

.method private skip(J)V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->seekTo(J)J

    :cond_0
    return-void
.end method

.method private start(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private startScheduledExecutor(J)V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelScheduledExecutor()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    return v0
.end method

.method public onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
    .locals 7

    const-string v0, "SV-PlayerMedia"

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: onMediaPlayerStateChanged() mediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 322
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->release()V

    goto/16 :goto_0

    .line 341
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "play_speed"

    .line 345
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 347
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v6

    .line 346
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->setData(ZJJZ)V

    .line 348
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->clear()V

    .line 349
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->completedPlayingAndSkip(Landroid/media/MediaPlayer;F)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->completedPlaying(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    goto :goto_0

    .line 317
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "current_position"

    .line 310
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "play_speed"

    .line 311
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimer(IF)V

    goto :goto_0

    :pswitch_5
    const-string p1, "current_file_path"

    .line 305
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setUpSkipSilence(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "next_file_path"

    .line 332
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processAndUpdateSkipSilence(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 328
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->skip(J)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onSeekTo(J)V
    .locals 2

    const-string v0, "SV-PlayerMedia"

    const-string v1, "AppSkipSilence: onSeekTo()"

    .line 361
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-int p1, p1

    .line 363
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getPlaySpeed()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimer(IF)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->completePlaying()V

    return-void
.end method

.method public setNextMediaplayer(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->setNextMediaPlayerInternal(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 2

    const-string v0, "SV-PlayerMedia"

    const-string v1, "AppSkipSilence: setValue()"

    .line 369
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_2

    .line 373
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eq p1, v0, :cond_1

    .line 374
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    :cond_1
    return-void

    .line 378
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilences(ZLjava/lang/String;)V

    return-void
.end method
