.class Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "CrossFade: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mCurrentVolume:F

.field private mDeltaVolume:F

.field private mDirection:I

.field private mFuture:Ljava/util/concurrent/Future;

.field private mInterval:I

.field private mIsCompleted:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNumberOfSteps:F

.field private mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;

.field private mTargetVolume:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    return-void
.end method

.method private fade(Landroid/media/MediaPlayer;F)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setVolume(Landroid/media/MediaPlayer;F)V

    .line 120
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossFade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setVolume(Landroid/media/MediaPlayer;F)V
    .locals 1

    .line 144
    :try_start_0
    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fade is fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;->onFadeFinished(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method

.method public getCurrentVolume()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    return v0
.end method

.method public getTargetVolume()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    return v0
.end method

.method isSamePlayer(Landroid/media/MediaPlayer;)Z
    .locals 1
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mDeltaVolume:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->fade(Landroid/media/MediaPlayer;F)V

    .line 100
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mDeltaVolume:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    .line 103
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    if-eqz v1, :cond_3

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setCurrentVolume(Landroid/media/MediaPlayer;F)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fade finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->printLog(Ljava/lang/String;)V

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;->onFadeFinished(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 98
    monitor-exit p0

    throw v0
.end method

.method public setCurrentVolume(Landroid/media/MediaPlayer;F)V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->printLog(Ljava/lang/String;)V

    .line 137
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    .line 138
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setVolume(Landroid/media/MediaPlayer;F)V

    return-void
.end method

.method public declared-synchronized setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 0

    monitor-enter p0

    .line 48
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startFade(Landroid/media/MediaPlayer;FFII)V
    .locals 7

    monitor-enter p0

    if-lez p5, :cond_3

    if-lez p4, :cond_3

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->cancel()V

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fade start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mIsCompleted:Z

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    div-int/2addr p4, p5

    int-to-float p4, p4

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mNumberOfSteps:F

    .line 82
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mInterval:I

    .line 83
    iget p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    cmpl-float p4, p4, p2

    if-eqz p4, :cond_1

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setVolume(Landroid/media/MediaPlayer;F)V

    .line 86
    :cond_1
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    .line 87
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    .line 88
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mDirection:I

    .line 89
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mDirection:I

    int-to-float p1, p1

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mTargetVolume:F

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mCurrentVolume:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mNumberOfSteps:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mDeltaVolume:F

    .line 91
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 93
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mInterval:I

    int-to-long v2, p1

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mInterval:I

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 72
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid request interval: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    throw p1
.end method
