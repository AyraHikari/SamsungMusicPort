.class Landroid/support/design/widget/TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIndicatorTop:I

.field private mInterval:I

.field private mLayoutDirection:I

.field private mRadius:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field mSelectedPosition:I

.field mSelectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1

    .line 2303
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    .line 2304
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2287
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 2290
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mLayoutDirection:I

    .line 2292
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2293
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2295
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorTop:I

    const/4 p1, 0x0

    .line 2305
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 2306
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2308
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mRadius:I

    .line 2309
    iget p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mRadius:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mInterval:I

    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 8

    .line 2441
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 2444
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_5

    .line 2445
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2446
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2448
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 2450
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2451
    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    iget v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    int-to-float v2, v2

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 2453
    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v5, v4

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v7, v4

    int-to-float v3, v3

    mul-float v7, v7, v3

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 2457
    :cond_0
    move-object v4, v0

    check-cast v4, Landroid/support/design/widget/TabLayout$TabView;

    .line 2458
    invoke-static {v4}, Landroid/support/design/widget/TabLayout$TabView;->access$1900(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 2461
    :goto_0
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2462
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2463
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 2464
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2467
    :cond_1
    instance-of v7, v6, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 2468
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 2469
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v3, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2472
    :cond_3
    iput v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorTop:I

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    .line 2479
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 10

    .line 2492
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2496
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2499
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2502
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void

    .line 2506
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2507
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    .line 2511
    move-object v4, v3

    check-cast v4, Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout$TabView;->access$1900(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2513
    :goto_1
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$TabView;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 2514
    invoke-virtual {v4, v1}, Landroid/support/design/widget/TabLayout$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2515
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2516
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 2517
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr p2, v2

    move v9, p2

    move v7, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2521
    :cond_4
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 2522
    iput v7, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2523
    iput v9, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2524
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->invalidate()V

    return-void

    .line 2531
    :cond_5
    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_6

    .line 2533
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2534
    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v6, v0

    move v8, v1

    goto :goto_5

    .line 2537
    :cond_6
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    .line 2538
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v2, :cond_8

    if-eqz v0, :cond_7

    sub-int v0, v7, v1

    :goto_2
    move v6, v0

    :goto_3
    move v8, v6

    goto :goto_5

    :cond_7
    add-int/2addr v1, v9

    :goto_4
    move v6, v1

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    add-int/2addr v1, v9

    goto :goto_4

    :cond_9
    sub-int v0, v7, v1

    goto :goto_2

    :goto_5
    if-ne v6, v7, :cond_a

    if-eq v8, v9, :cond_b

    .line 2556
    :cond_a
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2557
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p2

    .line 2558
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    .line 2559
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2560
    new-instance p2, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2569
    new-instance p2, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2576
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 2328
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2329
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2330
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2582
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getIndicatorPosition()F
    .locals 2

    .line 2348
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2425
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2427
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2430
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2431
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    .line 2432
    iget p3, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 p4, 0x3f800000    # 1.0f

    iget-object p5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2433
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float p4, p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2432
    invoke-virtual {p0, p3, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0

    .line 2436
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 2368
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2370
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    .line 2376
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-ne v0, v1, :cond_8

    .line 2377
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2382
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2383
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2384
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gtz v4, :cond_3

    return-void

    .line 2393
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v3

    mul-int v5, v4, v0

    .line 2396
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 2401
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2402
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v4, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 2403
    :cond_4
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2404
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    .line 2411
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    iput v2, v0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 2412
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    :goto_2
    if-eqz v1, :cond_8

    .line 2418
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 2353
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2359
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 2360
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->requestLayout()V

    .line 2361
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mLayoutDirection:I

    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1

    .line 2483
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 2485
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2486
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2487
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    .line 2338
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2342
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 2343
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 2344
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    .line 2314
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2315
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2316
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    .line 2321
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 2322
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 2323
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
