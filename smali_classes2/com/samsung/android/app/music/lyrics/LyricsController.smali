.class public Lcom/samsung/android/app/music/lyrics/LyricsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;,
        Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;,
        Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;,
        Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;,
        Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LyricsController"


# instance fields
.field private mActiveQueueType:I

.field private final mContext:Landroid/content/Context;

.field private mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

.field private mHasLyrics:Z

.field private mIsOnStart:Z

.field private mIsPlaying:Z

.field private mIsStateVisible:Z

.field private mListenQueueType:I

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

.field private final mLyricDownOut:Landroid/view/animation/Animation;

.field private final mLyricUpIn:Landroid/view/animation/Animation;

.field private mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private mLyricsContainerId:I

.field private final mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

.field private mLyricsLastModified:J

.field private mLyricsTextSizeBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

.field private mLyricsViewBuilder:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field private final mParent:Landroid/view/View;

.field private mPlaySpeed:F

.field private mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

.field private mWasStateVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mPlaySpeed:F

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mContext:Landroid/content/Context;

    const v1, 0x7f05001b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricDownOut:Landroid/view/animation/Animation;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mContext:Landroid/content/Context;

    const v1, 0x7f05001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricUpIn:Landroid/view/animation/Animation;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricDownOut:Landroid/view/animation/Animation;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricUpIn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mParent:Landroid/view/View;

    .line 117
    iput p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsContainerId:I

    .line 118
    iput-object p3, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsViewBuilder:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/lyrics/LyricsController;)Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/lyrics/LyricsController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkNeedToReloadLyrics(Ljava/lang/String;)Z
    .locals 6

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 286
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsLastModified:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private handleLyrics(Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;)V
    .locals 3

    const-string v0, "LyricsController"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLyrics - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mHasLyrics:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v1, "key_title"

    iget-object v2, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v1, "extra_artist"

    iget-object v2, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->artist:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->destroy()V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    .line 388
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v2, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object p1, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 394
    iget-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsStateVisible:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateLyricsViewVisibillity(ZZ)V

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateSyncInternal()Z

    return-void
.end method

.method private initializeTextSizeButton()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsTextSizeBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsTextSizeBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsTextSizeBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    new-instance v1, Lcom/samsung/android/app/music/lyrics/LyricsController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$3;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->setOnTextMagnificationChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    :cond_0
    return-void
.end method

.method private recordLyricsWhenModified(Ljava/lang/String;)V
    .locals 2

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 275
    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsLastModified:J

    return-void

    .line 278
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsLastModified:J

    return-void
.end method

.method private updateLyricsViewVisibillity(ZZ)V
    .locals 3

    const-string v0, "LyricsController"

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLyricsViewVisibillity - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 404
    iget-boolean v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mHasLyrics:Z

    if-nez v2, :cond_2

    const-string p1, "LyricsController"

    const-string p2, "updateLyricsViewVisibillity - no lyrics to show"

    .line 405
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;->onLyricConditionChanged(Z)V

    .line 409
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mWasStateVisible:Z

    return-void

    :cond_2
    if-nez p1, :cond_4

    .line 413
    iget-boolean v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mHasLyrics:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mWasStateVisible:Z

    if-eqz v2, :cond_4

    const-string p1, "LyricsController"

    const-string p2, "updateLyricsViewVisibillity - lyrics was shown"

    .line 414
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    if-eqz p1, :cond_3

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;->onLyricConditionChanged(Z)V

    .line 418
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mWasStateVisible:Z

    return-void

    .line 422
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    if-eqz p2, :cond_8

    .line 427
    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricUpIn:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricDownOut:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 430
    iput-boolean v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mWasStateVisible:Z

    .line 432
    :cond_9
    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setVisibility(I)V

    return-void
.end method

.method private updateMediaChangeObservable(Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;",
            ")V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    instance-of v0, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;

    .line 185
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;->onMediaChangeObservableChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    :cond_0
    return-void
.end method

.method private updateSyncInternal()Z
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 439
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mListenQueueType:I

    iget v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mActiveQueueType:I

    if-eq v0, v2, :cond_1

    return v1

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    iget v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mPlaySpeed:F

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->setSlowDownFactor(F)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->refresh()V

    .line 448
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsOnStart:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsStateVisible:Z

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->stop()V

    .line 450
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsPlaying:Z

    if-eqz v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->start()V

    const-string v0, "LyricsController"

    const-string v1, "updateSyncInternal() - true, update repeat"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->invalidate()V

    const-string v0, "LyricsController"

    const-string v1, "updateSyncInternal() - true, update once"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    const-string v0, "LyricsController"

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSyncInternal() - false, lyric-view showing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsStateVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsOnStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsOnStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->stop()V

    return v1
.end method


# virtual methods
.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 137
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsStateVisible:Z

    return v0
.end method

.method public hasLyrics()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mHasLyrics:Z

    return v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "LyricsController"

    const-string v0, "onCreateCalled"

    .line 311
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyCalled()V
    .locals 2

    const-string v0, "LyricsController"

    const-string v1, "onDestroyCalled"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 305
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mActiveQueueType:I

    :cond_0
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 2

    .line 365
    iget-object p4, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz p4, :cond_0

    .line 366
    iget-object p4, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 368
    :cond_0
    iget-object p4, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-wide v0, p4, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->audioId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 369
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iput-object p3, p1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 370
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mHasLyrics:Z

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->handleLyrics(Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;)V

    :cond_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 7

    const-string v0, "LyricsController"

    const-string v1, "onMetadataChanged"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mHasLyrics:Z

    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mListenQueueType:I

    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-wide v1, v1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->audioId:J

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-object v0, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->checkNeedToReloadLyrics(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LyricsController"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reload lyrics : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-object v2, v2, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-wide v1, v1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->audioId:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->remove(J)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 242
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->title:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->artist:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->album:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->cpAttrs:I

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->audioId:J

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->user:Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-object v0, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->recordLyricsWhenModified(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget v2, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->cpAttrs:I

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-wide v3, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->audioId:J

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;

    iget-object v6, v0, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricsData;->user:Ljava/lang/Object;

    move-object v5, p0

    .line 257
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateSyncInternal()Z

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->updateTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mPlaySpeed:F

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsPlaying:Z

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setRestorePositionEnabled(Z)V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateSyncInternal()Z

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResumeCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsOnStart:Z

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateSyncInternal()Z

    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->startMarquee()V

    :cond_0
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsOnStart:Z

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->stop()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->stopMarquee()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "LyricsController"

    const-string v1, "release"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->destroy()V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mSyncUpdateController:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->removeOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    :cond_1
    return-void
.end method

.method public setLyricConditionChangeListener(Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricConditionChangeListener:Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mParent:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsContainerId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040108

    const/4 v3, 0x1

    .line 146
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130341

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsViewBuilder:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const v0, 0x7f130126

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$1;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricsViewBuilder:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->hasFixedHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    new-instance p1, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsController$2;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mFixedHeaderController:Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->initializeTextSizeButton()V

    goto :goto_0

    .line 174
    :cond_1
    const-class v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateMediaChangeObservable(Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 176
    const-class v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateMediaChangeObservable(Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    :goto_0
    return-void
.end method

.method public setState(Z)V
    .locals 3

    const-string v0, "LyricsController"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController;->mIsStateVisible:Z

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateLyricsViewVisibillity(ZZ)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsController;->updateSyncInternal()Z

    return-void
.end method
