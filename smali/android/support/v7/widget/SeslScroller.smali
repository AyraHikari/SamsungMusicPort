.class Landroid/support/v7/widget/SeslScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/support/v7/widget/SeslScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 74
    new-array v1, v0, [F

    sput-object v1, Landroid/support/v7/widget/SeslScroller;->SPLINE_POSITION:[F

    .line 75
    new-array v0, v0, [F

    sput-object v0, Landroid/support/v7/widget/SeslScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_4

    int-to-float v3, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float v12, v12, v9

    mul-float v14, v6, v6

    mul-float v14, v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 125
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    .line 129
    sget-object v3, Landroid/support/v7/widget/SeslScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    sub-float v6, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float v12, v12, v9

    mul-float v14, v6, v6

    mul-float v14, v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 137
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    .line 141
    sget-object v3, Landroid/support/v7/widget/SeslScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float v10, v10, v7

    mul-float v6, v6, v13

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_1
    move v2, v6

    goto :goto_3

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto/16 :goto_1

    :cond_3
    move v0, v6

    goto/16 :goto_1

    .line 143
    :cond_4
    sget-object v0, Landroid/support/v7/widget/SeslScroller;->SPLINE_POSITION:[F

    sget-object v1, Landroid/support/v7/widget/SeslScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 159
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mFlingFriction:F

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    if-nez p2, :cond_0

    .line 170
    new-instance p2, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/SeslScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 172
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 174
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float p1, p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mPpi:F

    .line 175
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mDeceleration:F

    .line 176
    iput-boolean p3, p0, Landroid/support/v7/widget/SeslScroller;->mFlywheel:Z

    const p1, 0x3f570a3d    # 0.84f

    .line 178
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mPhysicalCoeff:F

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .line 194
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 2

    .line 472
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float p1, p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFlingFriction:F

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mPhysicalCoeff:F

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8

    .line 482
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 483
    sget p1, Landroid/support/v7/widget/SeslScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 484
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFlingFriction:F

    iget v4, p0, Landroid/support/v7/widget/SeslScroller;->mPhysicalCoeff:F

    mul-float p1, p1, v4

    float-to-double v4, p1

    sget p1, Landroid/support/v7/widget/SeslScroller;->DECELERATION_RATE:F

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 6

    .line 476
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 477
    sget p1, Landroid/support/v7/widget/SeslScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 478
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 495
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    .line 496
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .line 298
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v7/widget/SeslScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 304
    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 305
    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    int-to-float v0, v0

    .line 312
    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v0, v1

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v3, v6, :cond_1

    int-to-float v4, v3

    div-float/2addr v4, v1

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 319
    sget-object v1, Landroid/support/v7/widget/SeslScroller;->SPLINE_POSITION:[F

    aget v1, v1, v3

    .line 320
    sget-object v3, Landroid/support/v7/widget/SeslScroller;->SPLINE_POSITION:[F

    aget v3, v3, v5

    sub-float/2addr v3, v1

    sub-float/2addr v6, v4

    div-float v5, v3, v6

    sub-float/2addr v0, v4

    mul-float v0, v0, v5

    add-float v4, v1, v0

    .line 325
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mDistance:I

    int-to-float v0, v0

    mul-float v5, v5, v0

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v5, v5, v0

    iput v5, p0, Landroid/support/v7/widget/SeslScroller;->mCurrVelocity:F

    .line 327
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iget v3, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    .line 329
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    .line 330
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    .line 332
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iget v3, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    .line 334
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    .line 335
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    .line 337
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    if-ne v0, v1, :cond_3

    .line 338
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslScroller;->mDurationReciprocal:F

    mul-float v0, v0, v3

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 308
    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    iget v3, p0, Landroid/support/v7/widget/SeslScroller;->mDeltaX:F

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    .line 309
    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    iget v3, p0, Landroid/support/v7/widget/SeslScroller;->mDeltaY:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    goto :goto_0

    .line 344
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    .line 345
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    .line 346
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    :cond_3
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1

    .line 509
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslScroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    .line 510
    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    .line 511
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 7

    .line 419
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslScroller;->getCurrVelocity()F

    move-result v0

    .line 422
    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iget v2, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 423
    iget v2, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iget v3, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    float-to-double v3, v1

    float-to-double v5, v2

    .line 424
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v0

    mul-float v2, v2, v0

    int-to-float v0, p3

    .line 431
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    .line 432
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    add-float/2addr v0, v1

    float-to-int p3, v0

    add-float/2addr v3, v2

    float-to-int p4, v3

    :cond_0
    const/4 v0, 0x1

    .line 438
    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mMode:I

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    int-to-double v0, p3

    int-to-double v2, p4

    .line 441
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 443
    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mVelocity:F

    .line 444
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslScroller;->getSplineFlingDuration(F)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    .line 445
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslScroller;->mStartTime:J

    .line 446
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    .line 447
    iput p2, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    div-float/2addr p3, v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p4, p4

    div-float v2, p4, v0

    .line 452
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslScroller;->getSplineFlingDistance(F)D

    move-result-wide v3

    .line 453
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-double v0, p4

    mul-double v0, v0, v3

    double-to-int p4, v0

    iput p4, p0, Landroid/support/v7/widget/SeslScroller;->mDistance:I

    .line 455
    iput p5, p0, Landroid/support/v7/widget/SeslScroller;->mMinX:I

    .line 456
    iput p6, p0, Landroid/support/v7/widget/SeslScroller;->mMaxX:I

    .line 457
    iput p7, p0, Landroid/support/v7/widget/SeslScroller;->mMinY:I

    .line 458
    iput p8, p0, Landroid/support/v7/widget/SeslScroller;->mMaxY:I

    float-to-double p3, p3

    mul-double p3, p3, v3

    .line 460
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    .line 462
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iget p3, p0, Landroid/support/v7/widget/SeslScroller;->mMaxX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    .line 463
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iget p3, p0, Landroid/support/v7/widget/SeslScroller;->mMinX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    float-to-double p3, v2

    mul-double v3, v3, p3

    .line 465
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    .line 467
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iget p2, p0, Landroid/support/v7/widget/SeslScroller;->mMaxY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    .line 468
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iget p2, p0, Landroid/support/v7/widget/SeslScroller;->mMinY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 253
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrVelocity:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mVelocity:F

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mDeceleration:F

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 234
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 243
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 281
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 272
    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 2

    .line 554
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iget v1, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 555
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setFinalX(I)V
    .locals 1

    .line 532
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    .line 533
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mDeltaX:F

    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 1

    .line 545
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    .line 546
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    iget v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mDeltaY:F

    const/4 p1, 0x0

    .line 547
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    .line 189
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mDeceleration:F

    .line 190
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFlingFriction:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 366
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/SeslScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Landroid/support/v7/widget/SeslScroller;->mMode:I

    .line 385
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslScroller;->mFinished:Z

    .line 386
    iput p5, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    .line 387
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/SeslScroller;->mStartTime:J

    .line 388
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mStartX:I

    .line 389
    iput p2, p0, Landroid/support/v7/widget/SeslScroller;->mStartY:I

    add-int/2addr p1, p3

    .line 390
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 391
    iput p2, p0, Landroid/support/v7/widget/SeslScroller;->mFinalY:I

    int-to-float p1, p3

    .line 392
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mDeltaX:F

    int-to-float p1, p4

    .line 393
    iput p1, p0, Landroid/support/v7/widget/SeslScroller;->mDeltaY:F

    .line 394
    iget p1, p0, Landroid/support/v7/widget/SeslScroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/SeslScroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 521
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v7/widget/SeslScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
