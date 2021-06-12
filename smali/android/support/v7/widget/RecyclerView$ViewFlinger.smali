.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v7/widget/SeslOverScroller;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 6822
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6813
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 6817
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 6820
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 6823
    new-instance v0, Landroid/support/v7/widget/SeslOverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    return-void
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/support/v7/widget/SeslOverScroller;
    .locals 0

    .line 6809
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    return-object p0
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    .line 7034
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 7035
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int p3, p3, p3

    mul-int p4, p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 7037
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 7038
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-eqz v2, :cond_1

    .line 7039
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    .line 7040
    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 7041
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 7043
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p1

    mul-float p1, p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    .line 7047
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    .line 7052
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 6991
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    .line 6992
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 7030
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 6996
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 6997
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 6998
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    .line 7012
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 7013
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 7014
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/support/v7/widget/SeslOverScroller;->fling(IIIIIIII)V

    .line 7016
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 7003
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 7004
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 7006
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7007
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 6828
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 6829
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    return-void

    .line 6832
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 6833
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 6836
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    .line 6837
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 6838
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 6839
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$5200(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v3

    .line 6840
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->getCurrX()I

    move-result v11

    .line 6841
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->getCurrY()I

    move-result v12

    .line 6842
    iget v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v13, v11, v5

    .line 6843
    iget v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v12, v5

    .line 6846
    iput v11, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 6847
    iput v12, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 6850
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, v13

    move v7, v14

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 6851
    aget v5, v3, v4

    sub-int/2addr v13, v5

    .line 6852
    aget v5, v3, v6

    sub-int/2addr v14, v5

    .line 6853
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    aget v3, v3, v6

    invoke-static {v5, v3}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    .line 6855
    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v14}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 6858
    :goto_0
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_7

    .line 6859
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 6860
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v3, "RV Scroll"

    .line 6861
    invoke-static {v3}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6862
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    if-eqz v13, :cond_2

    .line 6864
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v13, v5, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    sub-int v5, v13, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v14, :cond_3

    .line 6868
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7, v14, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    sub-int v8, v14, v7

    .line 6872
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    if-nez v9, :cond_4

    .line 6873
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v6}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;I)V

    .line 6874
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v6}, Landroid/support/v7/widget/RecyclerView;->access$4100(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6878
    :cond_4
    :goto_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6879
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 6881
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 6882
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v4}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz v2, :cond_8

    .line 6884
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_8

    .line 6885
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 6886
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 6888
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_3

    .line 6889
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_6

    sub-int/2addr v9, v6

    .line 6890
    invoke-virtual {v2, v9}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v9, v13, v5

    sub-int v10, v14, v8

    .line 6891
    invoke-static {v2, v9, v10}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$5400(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_3

    :cond_6
    sub-int v9, v13, v5

    sub-int v10, v14, v8

    .line 6893
    invoke-static {v2, v9, v10}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$5400(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6897
    :cond_8
    :goto_3
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 6898
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 6900
    :cond_9
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_a

    .line 6901
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v13, v14}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 6905
    :cond_a
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v5

    move/from16 v19, v8

    invoke-virtual/range {v15 .. v21}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 6910
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$5500(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v15

    aput v4, v15, v4

    .line 6911
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$5500(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v15

    aput v4, v15, v6

    :cond_b
    if-nez v5, :cond_c

    if-eqz v8, :cond_16

    .line 6915
    :cond_c
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v15

    float-to-int v15, v15

    if-eq v5, v11, :cond_e

    if-gez v5, :cond_d

    neg-int v4, v15

    goto :goto_4

    :cond_d
    if-lez v5, :cond_e

    move v4, v15

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    :goto_4
    if-eq v8, v12, :cond_10

    if-gez v8, :cond_f

    neg-int v15, v15

    goto :goto_5

    :cond_f
    if-lez v8, :cond_10

    goto :goto_5

    :cond_10
    const/4 v15, 0x0

    :goto_5
    if-eqz v9, :cond_11

    if-ltz v8, :cond_12

    .line 6927
    :cond_11
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 6928
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v6

    if-eq v6, v10, :cond_12

    .line 6929
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4, v15}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    :cond_12
    if-eqz v9, :cond_13

    if-ltz v8, :cond_16

    :cond_13
    if-nez v4, :cond_14

    if-eq v5, v11, :cond_14

    .line 6933
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->getFinalX()I

    move-result v4

    if-nez v4, :cond_16

    :cond_14
    if-nez v15, :cond_15

    if-eq v8, v12, :cond_15

    .line 6934
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->getFinalY()I

    move-result v4

    if-nez v4, :cond_16

    .line 6935
    :cond_15
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->abortAnimation()V

    :cond_16
    if-nez v3, :cond_17

    if-eqz v7, :cond_18

    .line 6939
    :cond_17
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3, v7}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 6942
    :cond_18
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$5600(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 6943
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_19
    if-eqz v14, :cond_1a

    .line 6946
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-ne v7, v14, :cond_1a

    const/4 v4, 0x1

    goto :goto_6

    :cond_1a
    const/4 v4, 0x0

    :goto_6
    if-eqz v13, :cond_1b

    .line 6948
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_1b

    if-ne v3, v13, :cond_1b

    const/4 v3, 0x1

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    :goto_7
    if-nez v13, :cond_1c

    if-eqz v14, :cond_1e

    :cond_1c
    if-nez v3, :cond_1e

    if-eqz v4, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v3, 0x0

    goto :goto_9

    :cond_1e
    :goto_8
    const/4 v3, 0x1

    .line 6953
    :goto_9
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_20

    if-nez v3, :cond_1f

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    .line 6954
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_a

    .line 6972
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 6973
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v1, :cond_25

    .line 6974
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v13, v14}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_c

    .line 6957
    :cond_20
    :goto_a
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    if-eq v3, v10, :cond_22

    if-eqz v9, :cond_22

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$5700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 6958
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-lez v8, :cond_21

    .line 6960
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    goto :goto_b

    :cond_21
    const/4 v4, 0x0

    if-gez v8, :cond_23

    .line 6962
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    neg-int v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    goto :goto_b

    :cond_22
    const/4 v4, 0x0

    .line 6966
    :cond_23
    :goto_b
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 6967
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$5800()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 6968
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 6970
    :cond_24
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_25
    :goto_c
    if-eqz v2, :cond_27

    .line 6980
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 6981
    invoke-static {v2, v1, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$5400(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 6983
    :cond_26
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v1, :cond_27

    .line 6984
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 6987
    :cond_27
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 7020
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    .line 7056
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 0

    .line 7024
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 7066
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 7067
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7068
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_1

    .line 7069
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7070
    new-instance v0, Landroid/support/v7/widget/SeslOverScroller;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    .line 7072
    :cond_1
    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p4, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    .line 7073
    iput p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 7074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 7075
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-ge p1, p3, :cond_2

    .line 7079
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslOverScroller;->computeScrollOffset()Z

    .line 7081
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 7083
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 7060
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 7087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v7/widget/SeslOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->abortAnimation()V

    return-void
.end method
