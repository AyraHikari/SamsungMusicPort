.class Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISTANCE_M1:F = 3.0f

.field private static final DISTANCE_M2:F = 1.5f

.field private static final DURATION_M1:F = 3.0f

.field private static final DURATION_M2:F = 1.8f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final HIGHER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final HIGHER_TIME_GAP_MARGIN:J = 0x1L

.field private static INFLEXION:F = 0.0f

.field private static final INFLEXIONS:[F

.field private static final LOWER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final LOWER_TIME_GAP_MARGIN:J = 0x1L

.field private static final MARGIN_COMPENSATION_STARTING_COUNT:I = 0x1e

.field private static final NB_SAMPLES:I = 0x64

.field public static final ORIGINAL_MODE:I = 0x0

.field public static final SMOOTH_MODE:I = 0x1

.field private static final SPLINE:I = 0x0

.field private static SPLINE_POSITION:[F = null

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F = null

.field private static final SPLINE_TIMES:[[F

.field private static final START_TENSION:F = 0.5f

.field private static sEnableSmoothFling:Z

.field private static sRegulateCurrentTimeInterval:Z


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsDVFSBoosting:Z

.field private mMaximumVelocity:I

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mPrevTime:J

.field private mPrevTimeGap:J

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 623
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/4 v0, 0x2

    .line 630
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    .line 631
    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    const/16 v1, 0x65

    .line 640
    filled-new-array {v0, v1}, [I

    move-result-object v3

    const-class v4, F

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    .line 641
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v3, F

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    .line 642
    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 643
    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 651
    sput-boolean v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 652
    sput-boolean v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 676
    sget-object v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v3, v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    .line 677
    sget-object v5, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v5, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    mul-float v5, v5, v6

    sub-float v5, v6, v5

    const/4 v7, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x64

    if-ge v7, v10, :cond_4

    int-to-float v10, v7

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v11, v10, v11

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_2
    sub-float v12, v10, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v8

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v12, v14

    sub-float v16, v6, v12

    mul-float v15, v15, v16

    mul-float v17, v16, v3

    mul-float v18, v12, v5

    add-float v17, v17, v18

    mul-float v17, v17, v15

    mul-float v18, v12, v12

    mul-float v18, v18, v12

    add-float v17, v17, v18

    sub-float v19, v17, v11

    .line 691
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v13, v0

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v13, v20

    if-gez v0, :cond_2

    .line 698
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v2

    mul-float v16, v16, v4

    add-float v16, v16, v12

    mul-float v15, v15, v16

    add-float v15, v15, v18

    aput v15, v0, v7

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    sub-float v10, v0, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    add-float/2addr v10, v9

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v12, v10, v14

    sub-float v15, v6, v10

    mul-float v12, v12, v15

    mul-float v16, v15, v4

    add-float v16, v16, v10

    mul-float v16, v16, v12

    mul-float v17, v10, v10

    mul-float v17, v17, v10

    add-float v16, v16, v17

    sub-float v18, v16, v11

    .line 707
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    cmpg-double v1, v13, v20

    if-gez v1, :cond_0

    .line 714
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, v2

    mul-float v15, v15, v3

    mul-float v10, v10, v5

    add-float/2addr v15, v10

    mul-float v12, v12, v15

    add-float v12, v12, v17

    aput v12, v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    cmpl-float v1, v16, v11

    if-lez v1, :cond_1

    move v0, v10

    goto :goto_3

    :cond_1
    move v9, v10

    goto :goto_3

    :cond_2
    cmpl-float v0, v17, v11

    if-lez v0, :cond_3

    move v10, v12

    :goto_4
    const/4 v0, 0x2

    goto/16 :goto_2

    :cond_3
    move v8, v12

    goto :goto_4

    .line 720
    :cond_4
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v2

    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    aput v6, v1, v10

    aput v6, v0, v10

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 665
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    const-wide/16 v1, 0x0

    .line 666
    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    .line 667
    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 671
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    const/4 v0, 0x1

    .line 752
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 754
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float v0, v0, v1

    .line 755
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 761
    sget-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v0, :cond_0

    .line 762
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 763
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z
    .locals 0

    .line 574
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;Z)Z
    .locals 0

    .line 574
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 0

    .line 574
    iget p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F
    .locals 0

    .line 574
    iget p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 0

    .line 574
    iget p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 0

    .line 574
    iget p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 0

    .line 574
    iget p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)J
    .locals 2

    .line 574
    iget-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 0

    .line 574
    iget p0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method private adjustDuration(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 786
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 791
    sget-object p2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p2, p2, p3

    .line 792
    sget-object p3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p3, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    .line 794
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    .line 967
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float p3, p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    .line 970
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 971
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    .line 972
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 973
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 972
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 974
    iget-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 975
    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 976
    iget p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    .line 919
    sget v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float p1, p1, v1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .line 923
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 924
    sget v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 927
    sget-boolean v4, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v4, :cond_1

    .line 928
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    const/16 v4, 0x64

    if-le p1, v4, :cond_0

    const/16 p1, 0x64

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 933
    sget-object v5, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget p1, v5, p1

    sub-float/2addr v4, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v4, v4, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    add-float/2addr v4, p1

    float-to-double v4, v4

    .line 936
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    float-to-double v6, p1

    mul-double v4, v4, v6

    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    float-to-double v6, p1

    mul-double v4, v4, v6

    sget p1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    return-wide v4

    .line 940
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float p1, p1, v4

    float-to-double v4, p1

    sget p1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 9

    .line 945
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 946
    sget v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 949
    sget-boolean v4, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-eqz v4, :cond_1

    .line 950
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    const/16 v4, 0x64

    if-le p1, v4, :cond_0

    const/16 p1, 0x64

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 955
    sget-object v7, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget p1, v7, p1

    sub-float/2addr v4, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v4, v4, p1

    const p1, 0x3fe66666    # 1.8f

    add-float/2addr v4, p1

    float-to-double v7, v4

    mul-double v7, v7, v5

    div-double/2addr v0, v2

    .line 958
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v7, v7, v0

    double-to-int p1, v7

    return p1

    :cond_1
    div-double/2addr v0, v2

    .line 962
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v0, v0, v5

    double-to-int p1, v0

    return p1
.end method

.method private onEdgeReached()V
    .locals 5

    .line 1022
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 1023
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    div-float v1, v0, v1

    .line 1024
    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 1026
    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    neg-float v1, v3

    mul-float v1, v1, v0

    .line 1028
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    div-float/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 1029
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v0

    :cond_0
    float-to-int v0, v1

    .line 1032
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    const/4 v0, 0x2

    .line 1033
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 1034
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    neg-float v1, v1

    :goto_0
    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 1035
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 1037
    sget-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1038
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_2
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 10

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const-string p1, "OverScroller"

    const-string p2, "startAfterEdge called from a valid position"

    .line 987
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    move v3, p3

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 997
    invoke-direct {p0, p1, v3, p4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 999
    :cond_4
    invoke-direct {p0, p4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 1000
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    if-eqz v2, :cond_5

    move v7, p2

    goto :goto_3

    :cond_5
    move v7, p1

    :goto_3
    if-eqz v2, :cond_6

    move v8, p1

    goto :goto_4

    :cond_6
    move v8, p3

    .line 1001
    :goto_4
    iget v9, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 1003
    :cond_7
    invoke-direct {p0, p1, v3, p4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 980
    :goto_0
    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 981
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 982
    invoke-direct {p0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    const/4 p3, 0x0

    .line 857
    iput-boolean p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    .line 858
    iput p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 859
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 860
    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr p1, p2

    .line 862
    invoke-static {p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    .line 864
    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 865
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    mul-double p1, p1, v0

    .line 866
    iget p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .line 1044
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1061
    :pswitch_0
    iget-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 1062
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :pswitch_1
    return v1

    .line 1047
    :pswitch_2
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 1049
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1051
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 1052
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 1053
    iget-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 1054
    invoke-direct {p0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    :cond_0
    return v1

    .line 1068
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->update()Z

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 4

    .line 831
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 832
    iget-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    .line 833
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 834
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .locals 1

    .line 813
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 814
    invoke-static {v0}, Landroid/support/v4/os/SeslPerfManagerReflector;->onSmoothScrollEvent(Z)Z

    .line 815
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 818
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 822
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .locals 5

    .line 870
    iput p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    .line 871
    iput-boolean p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 872
    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 873
    iput p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 874
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 875
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    iput p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    .line 886
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 887
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 890
    sget-boolean v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-nez v3, :cond_2

    const/16 v3, 0x320

    if-ge p2, v3, :cond_1

    const/16 v3, -0x320

    if-gt p2, v3, :cond_2

    :cond_1
    const/4 p2, 0x1

    .line 892
    invoke-static {p2}, Landroid/support/v4/os/SeslPerfManagerReflector;->onSmoothScrollEvent(Z)Z

    .line 893
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 897
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double v1, v1, v3

    double-to-int p2, v1

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    .line 898
    iget p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 901
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    if-ge p1, p3, :cond_3

    .line 902
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 903
    iput p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 906
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    if-le p1, p4, :cond_4

    .line 907
    iget p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 908
    iput p4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 912
    :cond_4
    sget-boolean p1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    if-eqz p1, :cond_5

    .line 913
    iput p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_5
    return-void

    .line 878
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2

    .line 1010
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1011
    iput p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    .line 1012
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 1015
    iget p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int p3, p3

    invoke-direct {p0, p1, p2, p2, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 0

    .line 826
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    const/4 p1, 0x0

    .line 827
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method setFriction(F)V
    .locals 0

    .line 748
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method public setMode(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 731
    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 732
    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    goto :goto_0

    .line 734
    :cond_1
    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 735
    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    .line 737
    :goto_0
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    .line 738
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 739
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object p1, v0, p1

    sput-object p1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setRegulationEnabled(Z)V
    .locals 1

    .line 743
    sget-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    return-void
.end method

.method springback(III)Z
    .locals 4

    const/4 v0, 0x1

    .line 838
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 840
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v1, 0x0

    .line 841
    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 843
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 844
    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    .line 847
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    .line 849
    invoke-direct {p0, p1, p3, v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 852
    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method startScroll(III)V
    .locals 1

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 801
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int/2addr p1, p2

    .line 802
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 804
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 805
    iput p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 808
    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 809
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .locals 12

    .line 1078
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1082
    iget-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    .line 1085
    sget-boolean v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    if-nez v2, :cond_4

    .line 1086
    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    if-lez v2, :cond_0

    .line 1087
    iget-wide v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    add-long/2addr v6, v0

    const-wide/16 v0, 0x2

    div-long v0, v6, v0

    .line 1089
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    const/16 v6, 0x1e

    if-le v2, v6, :cond_2

    .line 1090
    iget-wide v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v6, v0, v6

    .line 1092
    iget-wide v8, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    .line 1093
    iget-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    iget-wide v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    add-long/2addr v0, v6

    add-long/2addr v0, v10

    goto :goto_0

    .line 1094
    :cond_1
    iget-wide v8, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    sub-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-gez v2, :cond_2

    .line 1095
    iget-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    iget-wide v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    add-long/2addr v0, v6

    sub-long/2addr v0, v10

    :cond_2
    :goto_0
    cmp-long v2, v0, v3

    if-gez v2, :cond_3

    move-wide v0, v3

    .line 1103
    :cond_3
    iget-wide v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v6, v0, v6

    iput-wide v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 1104
    iput-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    .line 1105
    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/2addr v2, v5

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_4
    const/4 v2, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_6

    .line 1111
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    if-lez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1113
    :cond_6
    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_7

    return v2

    :cond_7
    const-wide/16 v2, 0x0

    .line 1118
    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const/high16 v6, 0x447a0000    # 1000.0f

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 1140
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1141
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v2, v2, v0

    mul-float v2, v2, v0

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    float-to-double v2, v1

    goto :goto_1

    :pswitch_1
    long-to-float v0, v0

    .line 1146
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    .line 1148
    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 1149
    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v1

    mul-float v7, v7, v0

    mul-float v7, v7, v1

    sub-float/2addr v4, v7

    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 1150
    iget v6, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v6, v6

    mul-float v2, v2, v6

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float v2, v2, v6

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float v2, v2, v0

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v2, v3

    goto :goto_1

    :pswitch_2
    long-to-float v0, v0

    .line 1120
    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v7, 0x64

    if-ge v2, v7, :cond_8

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-int/lit8 v4, v2, 0x1

    int-to-float v7, v4

    div-float/2addr v7, v1

    .line 1127
    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v1, v1, v2

    .line 1128
    sget-object v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v2, v4

    sub-float/2addr v2, v1

    sub-float/2addr v7, v3

    div-float v4, v2, v7

    sub-float/2addr v0, v3

    mul-float v0, v0, v4

    add-float v3, v1, v0

    .line 1133
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v0, v0

    mul-float v3, v3, v0

    float-to-double v2, v3

    .line 1134
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v0, v0

    mul-float v4, v4, v0

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    mul-float v4, v4, v6

    iput v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1155
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3

    .line 769
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
