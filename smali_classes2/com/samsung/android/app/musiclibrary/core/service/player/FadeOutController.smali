.class public Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FADE_DURATION:I = 0x1388

.field private static final FADE_INTERVAL:I = 0xfa

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;


# instance fields
.field private mDuration:I

.field private mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

.field private mInterval:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 12
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mDuration:I

    const/16 v0, 0xfa

    .line 14
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mInterval:I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;
    .locals 2

    .line 17
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->cancel()V

    :cond_0
    return-void
.end method

.method public setOptions(II)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mDuration:I

    .line 40
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mInterval:I

    return-void
.end method

.method public declared-synchronized start(Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V
    .locals 6

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->cancel()V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->isSamePlayer(Landroid/media/MediaPlayer;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getCurrentVolume()F

    move-result p3

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->cancel()V

    move v2, p3

    goto :goto_1

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mDuration:I

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->mInterval:I

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeController;->startFade(Landroid/media/MediaPlayer;FFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    throw p1
.end method
