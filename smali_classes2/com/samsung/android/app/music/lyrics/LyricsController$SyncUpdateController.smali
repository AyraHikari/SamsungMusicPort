.class final Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncUpdateController"
.end annotation


# static fields
.field private static final DELAY_FOR_PREPARING_VIEWS:I = 0x1f4


# instance fields
.field private final DELAY_REPEAT_UPDATE_DEFAULT:I

.field private final TAG:Ljava/lang/String;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mIsFirstTime:Z

.field private final mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private mOnceScrollType:I

.field private mRepeatScrollType:I

.field private final mRunnableOnceUpdater:Ljava/lang/Runnable;

.field private final mRunnableRepeatUpdater:Ljava/lang/Runnable;

.field private mSlowDownFactor:F

.field private mStarted:Z

.field private final mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

.field private final mUpdateHandler:Landroid/os/Handler;

.field private final mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V
    .locals 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SyncUpdateController"

    .line 500
    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 502
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->DELAY_REPEAT_UPDATE_DEFAULT:I

    .line 504
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mChoreographer:Landroid/view/Choreographer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 514
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSlowDownFactor:F

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mIsFirstTime:Z

    .line 524
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 549
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRunnableRepeatUpdater:Ljava/lang/Runnable;

    .line 557
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$3;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRunnableOnceUpdater:Ljava/lang/Runnable;

    .line 565
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 566
    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    .line 567
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SyncUpdateController"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateThread:Landroid/os/HandlerThread;

    .line 568
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 569
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)I
    .locals 0

    .line 496
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mOnceScrollType:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)I
    .locals 0

    .line 496
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRepeatScrollType:I

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;I)I
    .locals 0

    .line 496
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRepeatScrollType:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;I)J
    .locals 0

    .line 496
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->updateSyncPositionInternal(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Ljava/lang/Runnable;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRunnableRepeatUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/os/Handler;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;Z)Z
    .locals 0

    .line 496
    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mStarted:Z

    return p1
.end method

.method private updateSyncPositionInternal(I)J
    .locals 12

    .line 620
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v0

    .line 621
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->find(J)I

    move-result v2

    .line 628
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getCount()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 630
    iget v5, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSlowDownFactor:F

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v6, v5

    float-to-long v5, v6

    :goto_0
    if-ge v4, v3, :cond_1

    .line 632
    iget-object v7, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v7, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v7

    .line 633
    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 634
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 635
    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    long-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSlowDownFactor:F

    div-float/2addr v5, v6

    float-to-long v5, v5

    const-string v8, "SyncUpdateController"

    .line 636
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delay time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", org : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", slow down factor : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSlowDownFactor:F

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v0, 0x3d23d70a    # 0.04f

    .line 648
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->highlightLine(IIF)V

    if-lt v4, v3, :cond_3

    const-wide/16 v5, -0x1

    :cond_3
    return-wide v5
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->stop()V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "SyncUpdateController"

    const-string v1, "destroy()"

    .line 606
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public invalidate()V
    .locals 4

    const/4 v0, 0x2

    .line 610
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mOnceScrollType:I

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRunnableOnceUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRunnableOnceUpdater:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mIsFirstTime:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mIsFirstTime:Z

    return-void
.end method

.method public isStarted()Z
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mStarted:Z

    return v0
.end method

.method setSlowDownFactor(F)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mSlowDownFactor:F

    return-void
.end method

.method public start()V
    .locals 5

    .line 577
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mStarted:Z

    const/4 v1, 0x2

    .line 581
    iput v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mRepeatScrollType:I

    .line 583
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 585
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mIsFirstTime:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 587
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setKeepScreenOn(Z)V

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mIsFirstTime:Z

    const-string v0, "SyncUpdateController"

    const-string v1, "start()"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 3

    .line 594
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mStarted:Z

    .line 596
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 598
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setKeepScreenOn(Z)V

    const-string v0, "SyncUpdateController"

    const-string v1, "stop()"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
