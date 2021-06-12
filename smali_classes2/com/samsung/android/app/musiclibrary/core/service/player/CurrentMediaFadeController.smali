.class public Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FADE_DURATION:I = 0x3e8

.field private static final DEFAULT_FADE_INTERVAL:I = 0x14

.field static final DEFAULT_FADE_VOLUME:F = 1.0f

.field private static final FADE_DURATION:I = 0x1388

.field private static final FADE_INTERVAL:I = 0xfa

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;


# instance fields
.field private mDuration:I

.field private mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

.field private mInterval:I

.field private mIsCrossFadeActivated:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 32
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mDuration:I

    const/16 v0, 0xfa

    .line 34
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mInterval:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mIsCrossFadeActivated:Z

    return-void
.end method

.method private declared-synchronized fade(Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;FFII)V
    .locals 7

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->cancel()V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->startFade(Landroid/media/MediaPlayer;FFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;
    .locals 2

    .line 20
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->cancel()V

    :cond_0
    return-void
.end method

.method public declared-synchronized fade(Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;F)V
    .locals 7

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getCurrentVolume()F

    move-result v3

    const/16 v5, 0x3e8

    const/16 v6, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->fade(Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;FFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fadeInFrom0(Landroid/media/MediaPlayer;)V
    .locals 7

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 64
    :try_start_0
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mDuration:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mInterval:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->fade(Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;FFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    throw p1
.end method

.method public getCurrentVolume()F
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->getCurrentVolume()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getTargetVolume()F
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->getTargetVolume()F

    move-result v0

    :goto_0
    return v0
.end method

.method public isCrossFadeActivated()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mIsCrossFadeActivated:Z

    return v0
.end method

.method isSamePlayer(Landroid/media/MediaPlayer;)Z
    .locals 1
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->isSamePlayer(Landroid/media/MediaPlayer;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->cancel()V

    :cond_0
    return-void
.end method

.method public setCrossFadeActivated(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mIsCrossFadeActivated:Z

    return-void
.end method

.method public setCurrentVolume(Landroid/media/MediaPlayer;F)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setCurrentVolume(Landroid/media/MediaPlayer;F)V

    return-void
.end method

.method public setOptions(II)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mDuration:I

    .line 60
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->mInterval:I

    return-void
.end method
