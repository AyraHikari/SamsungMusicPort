.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x2bc


# instance fields
.field private lastStartedType:I

.field private mDiffY_Touch:F

.field private mIsCollapsed:Z

.field private mIsFlingScrollDown:Z

.field private mIsFlingScrollUp:Z

.field private mIsScrollHold:Z

.field mIsSetStaticDuration:Z

.field private mLastMotionY_Touch:F

.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mToolisMouse:Z

.field private mTouchSlop:I

.field private mVelocity:F

.field private touchX:F

.field private touchY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1061
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 1035
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    const/4 v1, 0x0

    .line 1042
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1043
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1045
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsScrollHold:Z

    .line 1056
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    const/4 v0, 0x0

    .line 1057
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    .line 1058
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsSetStaticDuration:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 1035
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    const/4 p2, 0x0

    .line 1042
    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1043
    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1045
    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsScrollHold:Z

    .line 1056
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    const/4 p1, 0x0

    .line 1057
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    .line 1058
    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsSetStaticDuration:Z

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 0

    .line 1009
    iget p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return p0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 6

    .line 1315
    iget p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v0, 0x0

    const/16 v1, 0xfa

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    iget p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const v2, 0x453b8000    # 3000.0f

    cmpg-float p4, p4, v2

    if-gtz p4, :cond_0

    .line 1316
    iget p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sub-float/2addr v2, p4

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v2, v2, v4

    double-to-int p4, v2

    goto :goto_0

    :cond_0
    const/16 p4, 0xfa

    :goto_0
    if-gt p4, v1, :cond_1

    const/16 p4, 0xfa

    .line 1325
    :cond_1
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsSetStaticDuration:Z

    if-eqz v2, :cond_2

    const/4 p4, 0x0

    .line 1327
    iput-boolean p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsSetStaticDuration:Z

    const/16 p4, 0xfa

    .line 1331
    :cond_2
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1332
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 1334
    :cond_3
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    return-void
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 3

    .line 1340
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 1342
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1343
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    .line 1348
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 1349
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 1351
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/design/widget/AppBarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1352
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 1360
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1363
    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x2bc

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1364
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1365
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 1760
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1761
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1762
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1763
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 5

    .line 1369
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1370
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1371
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8

    .line 1658
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1660
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1661
    invoke-virtual {p1, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1662
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1663
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1665
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_2

    if-eqz v6, :cond_3

    .line 1668
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 1671
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1677
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1681
    :cond_0
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1682
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_1
    if-lez v2, :cond_3

    .line 1686
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 1688
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float p1, p1, v0

    .line 1687
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1691
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    mul-int p2, p2, v0

    return p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private isScrollHoldMode(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 3

    .line 1273
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mToolisMouse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1278
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    .line 1279
    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1282
    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1284
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result p1

    const/16 v2, 0x128

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 10

    .line 1379
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1380
    invoke-direct {p0, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v1

    const/4 v2, 0x1

    .line 1381
    invoke-virtual {p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ltz v1, :cond_c

    .line 1384
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1385
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1386
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v5

    and-int/lit8 v6, v5, 0x64

    const/16 v7, 0x64

    if-ne v6, v7, :cond_0

    return-void

    .line 1395
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    .line 1396
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    neg-int v7, v7

    .line 1398
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v2

    if-ne v1, v8, :cond_1

    .line 1400
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v7, v1

    :cond_1
    const/4 v1, 0x2

    .line 1403
    invoke-static {v5, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    .line 1406
    invoke-static {v5, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1410
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v7

    if-ge v0, v1, :cond_3

    move v6, v1

    goto :goto_0

    :cond_3
    move v7, v1

    :cond_4
    :goto_0
    int-to-double v0, v0

    add-int v2, v7, v6

    int-to-double v4, v2

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double v8, v8, v4

    cmpg-double v2, v0, v8

    .line 1422
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsCollapsed:Z

    if-eqz v2, :cond_7

    const-wide v8, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v4, v4, v8

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    :cond_5
    move v0, v6

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v7

    goto :goto_2

    :cond_7
    const-wide v8, 0x3fdb851eb851eb85L    # 0.43

    mul-double v4, v4, v8

    cmpg-double v0, v0, v4

    if-gez v0, :cond_5

    goto :goto_1

    .line 1432
    :goto_2
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->isScrollHoldMode(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 1433
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    if-eqz v1, :cond_8

    .line 1435
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1436
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    move v0, v7

    .line 1439
    :cond_8
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->access$000()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    .line 1441
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    goto :goto_3

    .line 1444
    :cond_9
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    if-eqz v1, :cond_a

    .line 1446
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1447
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    move v0, v7

    .line 1450
    :cond_a
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->access$000()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    .line 1452
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    :goto_3
    move v0, v6

    .line 1459
    :cond_b
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    const/4 v1, 0x0

    .line 1458
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    :cond_c
    return-void
.end method

.method private stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 1262
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 1264
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    .line 1265
    :cond_1
    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 5

    .line 1706
    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1708
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1709
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1713
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_0

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_0

    neg-int p3, p3

    .line 1719
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_1

    neg-int p3, p3

    .line 1723
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    goto :goto_0

    .line 1727
    :cond_1
    :goto_1
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result p3

    .line 1729
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_3

    if-nez p5, :cond_2

    if-eqz p3, :cond_3

    .line 1730
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1733
    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_3
    return-void
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    .line 1547
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1

    .line 1553
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1555
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 1557
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 1009
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getLastInterceptTouchEventEvent()I
    .locals 1

    .line 1009
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastTouchEventEvent()I
    .locals 1

    .line 1009
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLastTouchEventEvent()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .line 1009
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 0

    .line 1599
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 1009
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .locals 0

    .line 1604
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 1009
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .line 1009
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1772
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1654
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    return-void
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 7

    .line 1491
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 1497
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    .line 1498
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 1499
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 1501
    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_0

    .line 1502
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_0

    .line 1504
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 1506
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1510
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_3

    .line 1512
    invoke-direct {p0, p1, p2, v0, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    .line 1514
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 1518
    invoke-direct {p0, p1, p2, v2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    .line 1520
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1526
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    .line 1527
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1532
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    .line 1531
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1537
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1540
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    return p3
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 6

    .line 1473
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1474
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    .line 1480
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1479
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    .line 1485
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/design/widget/AppBarLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1572
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FF)Z
    .locals 3
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/design/widget/AppBarLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1579
    iput p5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpg-float v2, p5, v2

    if-gez v2, :cond_0

    .line 1581
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1582
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_1

    .line 1584
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1585
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1593
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/HeaderBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 1587
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    .line 1588
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1589
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    return v0
.end method

.method public bridge synthetic onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p5

    if-eqz v7, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-gez v7, :cond_2

    .line 1160
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    .line 1161
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    add-int/2addr v3, v2

    .line 1162
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1163
    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1166
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v9, v9, v11

    cmpl-double v4, v4, v9

    if-ltz v4, :cond_0

    .line 1167
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsSetStaticDuration:Z

    :cond_0
    const/16 v4, -0x1e

    if-ge v7, v4, :cond_1

    .line 1171
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    goto :goto_0

    .line 1173
    :cond_1
    iput v0, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    .line 1174
    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    :goto_0
    move v4, v2

    move v5, v3

    goto :goto_2

    .line 1179
    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v2

    neg-int v2, v2

    .line 1183
    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1184
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1187
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v5

    int-to-double v9, v5

    const-wide v11, 0x3fdb851eb851eb85L    # 0.43

    mul-double v9, v9, v11

    cmpg-double v3, v3, v9

    if-gtz v3, :cond_3

    .line 1188
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsSetStaticDuration:Z

    :cond_3
    const/16 v3, 0x1e

    if-le v7, v3, :cond_4

    .line 1192
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    goto :goto_1

    .line 1194
    :cond_4
    iput v0, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mVelocity:F

    .line 1195
    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1197
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1198
    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsScrollHold:Z

    :cond_5
    move v4, v2

    const/4 v5, 0x0

    :goto_2
    if-eq v4, v5, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    .line 1203
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v8

    :cond_6
    move-object v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p7

    .line 1207
    invoke-direct {p0, v7, p2, v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 6

    .line 1213
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->isScrollHoldMode(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-gez p7, :cond_0

    .line 1214
    iget-boolean p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsScrollHold:Z

    if-nez p4, :cond_0

    .line 1218
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 1217
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 1219
    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1221
    invoke-static {p3, p1}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-gez p7, :cond_2

    .line 1228
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 1227
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 1229
    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    .line 1801
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 1802
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1803
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1804
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1805
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1806
    iget-boolean p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_0

    .line 1808
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 1809
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 7

    .line 1777
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1778
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    .line 1781
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1782
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1783
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 1785
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 1786
    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1787
    iput v3, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1789
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v5

    .line 1790
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1125
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1126
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p4

    if-gt p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1128
    iget-object p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result p4

    if-ne p3, p4, :cond_1

    .line 1130
    iget-object p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1134
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->access$000()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_2

    .line 1135
    iput-boolean p5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsCollapsed:Z

    .line 1136
    iget-boolean p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsCollapsed:Z

    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout;->access$102(Landroid/support/design/widget/AppBarLayout;Z)Z

    const/4 p2, 0x0

    .line 1140
    iput p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    goto :goto_1

    .line 1143
    :cond_2
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsCollapsed:Z

    .line 1144
    iget-boolean p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsCollapsed:Z

    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout;->access$102(Landroid/support/design/widget/AppBarLayout;Z)Z

    :goto_1
    const/4 p2, 0x0

    .line 1148
    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1150
    iput p6, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastStartedType:I

    return p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 3

    .line 1238
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 1239
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1240
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getLastTouchEventEvent()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1241
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getLastTouchEventEvent()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1242
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1245
    :cond_1
    iget p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastStartedType:I

    if-eqz p1, :cond_2

    if-ne p4, v2, :cond_3

    .line 1248
    :cond_2
    iget-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsScrollHold:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1249
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsScrollHold:Z

    .line 1256
    :cond_3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1069
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 1070
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    .line 1073
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p3, :cond_1

    const/16 v0, 0x2002

    .line 1084
    invoke-static {p3, v0}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mToolisMouse:Z

    .line 1085
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1086
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastMotionY_Touch:F

    sub-float v1, v0, v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 1087
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastMotionY_Touch:F

    sub-float v1, v0, v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    .line 1089
    :cond_2
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1090
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastMotionY_Touch:F

    goto :goto_2

    .line 1097
    :pswitch_1
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x41a80000    # 21.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 1098
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 1099
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1100
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    goto :goto_1

    .line 1101
    :cond_3
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 1102
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1103
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    goto :goto_1

    .line 1106
    :cond_4
    iput v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->touchX:F

    .line 1107
    iput v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->touchY:F

    .line 1108
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollUp:Z

    .line 1109
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mIsFlingScrollDown:Z

    .line 1110
    iput v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastMotionY_Touch:F

    .line 1112
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    goto :goto_2

    .line 1077
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->touchX:F

    .line 1078
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->touchY:F

    .line 1079
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->touchY:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastMotionY_Touch:F

    .line 1080
    iput v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mDiffY_Touch:F

    .line 1116
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1299
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 8

    .line 1610
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    .line 1616
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v5

    if-eq v0, v5, :cond_4

    .line 1618
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1619
    invoke-direct {p0, p2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v5

    .line 1622
    :goto_0
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    .line 1627
    iput p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    if-nez p4, :cond_1

    .line 1629
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1634
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1638
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v5, v0, :cond_2

    const/4 p3, -0x1

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1641
    invoke-direct/range {v2 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    goto :goto_2

    .line 1646
    :cond_3
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    :cond_4
    :goto_2
    return v1
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 1009
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    .line 1009
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    .line 1009
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method
