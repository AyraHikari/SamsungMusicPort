.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.source "SourceFile"


# static fields
.field private static final DELAY_RESTORE_AUTO_SCROLL_POSITION:J = 0x7d0L

.field private static final MILLISECONDS_PER_INCH:F = 50.0f


# instance fields
.field private mAdapterView:Landroid/support/v7/widget/RecyclerView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder<",
            "*>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V

    return-void
.end method

.method private calculateDyToMakeCenter(Landroid/view/View;)I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 70
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    const/4 v2, 0x1

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 125
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    if-eq v2, p1, :cond_3

    const/4 v1, -0x1

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public delayScrollLock()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method protected onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateDyToMakeCenter(Landroid/view/View;)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_0

    neg-int p2, p2

    neg-int p1, p1

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected scrollToHighlightPosition(II)V
    .locals 1

    .line 50
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->stop()V

    return-void

    .line 61
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 51
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - maybe is not initialized or detached from recycler-view. ignore request!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->stop()V

    return-void
.end method

.method protected updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->normalize(Landroid/graphics/PointF;)V

    .line 79
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mTargetVector:Landroid/graphics/PointF;

    .line 80
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x459c4000    # 5000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDx:I

    .line 81
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDy:I

    const/16 v0, 0x1388

    .line 82
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateTimeForScrolling(I)I

    move-result v0

    .line 83
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->getTargetPosition()I

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->stop()V

    :goto_0
    return-void
.end method
