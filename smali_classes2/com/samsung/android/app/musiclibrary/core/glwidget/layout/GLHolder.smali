.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-GLHolder"

.field protected static final MSG_ON_ANIMATION_FINISHED:I = 0x3

.field protected static final MSG_ON_ANIMATION_STARTED:I = 0x2

.field protected static final MSG_ON_ANIMATION_UPDATE:I = 0x4

.field protected static final MSG_ON_ITEM_CLICK:I = 0x1

.field protected static final MSG_ON_SELECTED_MODEL_SIZE_CHANGED:I = 0x5

.field protected static final MSG_ON_SELECTION_CHANGE:I = 0x0

.field private static final mAnimationUpdateDelta:J = 0xfL


# instance fields
.field private volatile mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field private mAdapterWrap:Z

.field private volatile mAnimationStarted:Z

.field private mDefaultAlbArt:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field public mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

.field private mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

.field private mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

.field private mParentView:Landroid/view/View;

.field private final mReloadView:Ljava/lang/Runnable;

.field private mSelected:I

.field private mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

.field private final mUIThreadId:J

.field private mUiHandlerCallback:Landroid/os/Handler$Callback;

.field private sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mReloadView:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    .line 123
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    .line 349
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUiHandlerCallback:Landroid/os/Handler$Callback;

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUIThreadId:J

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapterWrap:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnSelectionChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnItemClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnAnimationStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnAnimationFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnAnimationUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnSelectedModelSizeChanged(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    return p0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    return-object p0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    return-object p1
.end method

.method private ensureUIThread()V
    .locals 4

    .line 596
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUIThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureUiHandler()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUiHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private handleOnAnimationFinished()V
    .locals 2

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "handleOnAnimationFinished"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;->onAnimationFinished(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V

    :cond_0
    return-void
.end method

.method private handleOnAnimationStarted()V
    .locals 4

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "handleOnAnimationStarted"

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;->onAnimationStarted(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private handleOnAnimationUpdate()V
    .locals 5

    .line 475
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getSelection()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getChildDelta(I)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getMaxSelectedDelta()F

    move-result v2

    div-float/2addr v1, v2

    const-string v2, "SMUSIC-GLHolder"

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2, v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;->onAnimationUpdate(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;FI)V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private handleOnItemClick(I)V
    .locals 8

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const-string v0, "SMUSIC-GLHolder"

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireOnItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move v5, p1

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private handleOnSelectedModelSizeChanged(II)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;->onSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;II)V

    :cond_0
    return-void
.end method

.method private handleOnSelectionChange()V
    .locals 7

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 500
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getSelection()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getSelection()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    const-string v0, "SMUSIC-GLHolder"

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireOnSelectionChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    const-wide/16 v5, -0x1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private isUiThread()Z
    .locals 4

    .line 512
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUIThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveToNext()V
    .locals 3

    .line 314
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapterWrap:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAnimationIsNext(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    add-int/2addr v2, v1

    rem-int/2addr v2, v0

    .line 321
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    :goto_0
    return-void
.end method

.method private moveToPrev()V
    .locals 3

    .line 328
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapterWrap:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 333
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAnimationIsNext(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    rem-int/2addr v2, v0

    .line 335
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    :goto_0
    return-void
.end method

.method private obtainMotionRunnable(Landroid/view/MotionEvent;)Ljava/lang/Runnable;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;

    .line 250
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->event:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private registerAccessibilityListener()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 653
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;->enabled:Z

    .line 656
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method private unregisterAccessibilityListener()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 662
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 664
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public animationFinished()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->animationFinished()Z

    move-result v0

    return v0
.end method

.method public bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    return-void
.end method

.method public clearAccessibilityFocus()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public declared-synchronized fireOnAnimationFinished()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "fireOnAnimationFinished"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 442
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 445
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 437
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fireOnAnimationStarted()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "fireOnAnimationStarted"

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 422
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 425
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 417
    monitor-exit p0

    throw v0
.end method

.method public fireOnItemClick(I)V
    .locals 2

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnItemClick(I)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 407
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 408
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public fireOnSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)Z
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 621
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 622
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 623
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 625
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 626
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v1

    :cond_2
    return v0
.end method

.method public fireOnSelectionChange()V
    .locals 2

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnSelectionChange()V

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public getConfig()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getConfig()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAlbumArt()Landroid/graphics/Bitmap;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mDefaultAlbArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRenderer()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    return v0
.end method

.method public getSelectedItemUri()Landroid/net/Uri;
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public inAnimationThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;Landroid/util/AttributeSet;)V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 525
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    .line 526
    invoke-interface {p3, p0, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;->create(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Landroid/util/AttributeSet;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    .line 528
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 529
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    return-void
.end method

.method public isFlinging()Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->isFlinging()Z

    move-result v0

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;->enabled:Z

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->isTouched()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->onDraw(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    const-string p1, "SMUSIC-GLHolder"

    .line 271
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyDown: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    const-string p3, "SMUSIC-GLHolder"

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x42

    const/4 v0, 0x1

    if-eq p2, p3, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p2, 0x3

    .line 300
    invoke-virtual {p1, p2}, Landroid/view/View;->playSoundEffect(I)V

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->moveToNext()V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    return v0

    .line 295
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->moveToPrev()V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    return v0

    .line 306
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnItemClick(I)V

    return v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->unregisterAccessibilityListener()V

    .line 203
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->registerAccessibilityListener()V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->onResume()V

    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "additional request render after resume"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->obtainMotionRunnable(Landroid/view/MotionEvent;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;->postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadItem(I)V
    .locals 1

    .line 607
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadView()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mReloadView:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->requestRender()V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 141
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAdapterWrap(Z)V
    .locals 1

    .line 589
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 591
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnimationIsNext(Z)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setAnimationIsNext(Z)V

    return-void
.end method

.method public setDefaultAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mDefaultAlbArt:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 544
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 261
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOnSelectedAlbumSizeChangedListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 550
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 147
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;IZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSingleScroll(Z)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setSingleScroll(Z)V

    return-void
.end method
