.class public abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HighlightController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_SPEED_FACTOR:F = 1.0f

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mHighlightPosition:I

.field private final mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder<",
            "*>;"
        }
    .end annotation
.end field

.field private mLockAutoScroll:Z

.field private mLockAutoScrollRunnable:Ljava/lang/Runnable;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMilliSecondsPerPixel:F

.field private mRestorePositionEnabled:Z

.field private final mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

.field private final mScrollRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsUx-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 652
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder<",
            "*>;)V"
        }
    .end annotation

    .line 689
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 656
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    .line 660
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    .line 662
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    const/4 v0, -0x1

    .line 669
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    .line 675
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScrollRunnable:Ljava/lang/Runnable;

    .line 690
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMilliSecondsPerPixel:F

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->detach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I
    .locals 0

    .line 648
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    return p0
.end method

.method static synthetic access$2102(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)Z
    .locals 0

    .line 648
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Z
    .locals 0

    .line 648
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mRestorePositionEnabled:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Ljava/util/LinkedList;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;IIF)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->highlightLine(IIF)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;II)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPositionInternal(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V
    .locals 0

    .line 648
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->setRestorePositionEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->attach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private attach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private detach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x0

    .line 743
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    .line 744
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private highlightLine(IIF)V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 764
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highlightLine position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scrollAction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", request size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    .line 772
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    .line 774
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    invoke-interface {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;->onHighlightChanged(II)V

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    .line 777
    invoke-static {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->obtain(IIF)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPositionInternal(II)V

    return-void

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    .line 785
    iget v2, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    if-lt p2, v2, :cond_1

    .line 786
    iput p1, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->position:I

    .line 787
    iput p3, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->speedFactor:F

    .line 788
    iput p2, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    const/4 p3, 0x1

    if-ne v0, p3, :cond_2

    .line 792
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->clearRequest()V

    .line 793
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPositionInternal(II)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    .line 797
    invoke-static {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->obtain(IIF)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private requestReHighlightLine(J)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollToHighlightPositionInternal(II)V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 806
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPosition(II)V

    return-void
.end method

.method private setRestorePositionEnabled(Z)V
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mRestorePositionEnabled:Z

    return-void
.end method


# virtual methods
.method protected final calculateTimeForScrolling(I)I
    .locals 4

    .line 722
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 725
    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 728
    :cond_0
    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->speedFactor:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 730
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMilliSecondsPerPixel:F

    mul-float p1, p1, v2

    div-float/2addr v1, v0

    mul-float p1, p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected abstract delayScrollLock()J
.end method

.method protected onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method protected onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)V
    .locals 0

    .line 705
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    .line 706
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->isAutoScrolled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 709
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->delayScrollLock()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->requestReHighlightLine(J)V

    return-void
.end method

.method protected onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 716
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    .line 717
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->postRequestConsume()V

    return-void
.end method

.method protected abstract scrollToHighlightPosition(II)V
.end method

.method public final stopSelf()V
    .locals 0

    .line 696
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    return-void
.end method
