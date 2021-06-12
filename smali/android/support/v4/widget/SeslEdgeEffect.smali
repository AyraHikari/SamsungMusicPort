.class public Landroid/support/v4/widget/SeslEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final ATTRS:[I

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final EPSILON:F = 0.001f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MSG_CALL_ONRELEASE:I = 0x1

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x1c2

.field private static final SESL_APPEAR_TIME:I = 0xfa

.field private static final SESL_KEEP_TIME:I = 0x0

.field private static final SESL_STATE_APPEAR:I = 0x5

.field private static final SESL_STATE_KEEP:I = 0x6

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "SeslEdgeEffect"


# instance fields
.field private SESL_MAX_ALPHA:F

.field private SESL_MAX_SCALE:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mForceCallOnRelease:Ljava/lang/Runnable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOnReleaseCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mSeslHostView:Landroid/view/View;

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F

.field private mTempDeltaDistance:F

.field private mTempDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/support/v4/widget/SeslEdgeEffect;->SIN:F

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v4/widget/SeslEdgeEffect;->COS:F

    const/4 v0, 0x1

    .line 146
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10104ce

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SeslEdgeEffect;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 159
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    const v0, 0x3e19999a    # 0.15f

    .line 86
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 121
    iput-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 126
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 127
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    .line 128
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 136
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    .line 283
    new-instance v1, Landroid/support/v4/widget/SeslEdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/SeslEdgeEffect$1;-><init>(Landroid/support/v4/widget/SeslEdgeEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    .line 294
    new-instance v1, Landroid/support/v4/widget/SeslEdgeEffect$2;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SeslEdgeEffect$2;-><init>(Landroid/support/v4/widget/SeslEdgeEffect;)V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    .line 161
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroid/support/v4/widget/SeslEdgeEffect;->ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, -0x99999a

    .line 163
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 164
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, 0x33000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 p1, 0x42aa0000    # 85.0f

    .line 170
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeight:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 171
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    return-void
.end method

.method static synthetic access$002(Landroid/support/v4/widget/SeslEdgeEffect;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SeslEdgeEffect;)F
    .locals 0

    .line 68
    iget p0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    return p0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SeslEdgeEffect;)F
    .locals 0

    .line 68
    iget p0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDisplacement:F

    return p0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SeslEdgeEffect;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dipToPixels(F)F
    .locals 2

    .line 181
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private isEdgeEffectRunning()Z
    .locals 2

    .line 277
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private update()V
    .locals 5

    .line 497
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 498
    iget-wide v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 500
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 502
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    .line 503
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 504
    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 506
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 507
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 543
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x43e10000    # 450.0f

    .line 544
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    .line 546
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 547
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 549
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 550
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 533
    :pswitch_1
    iput v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 534
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    .line 535
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    .line 537
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 538
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 554
    :pswitch_2
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    goto :goto_0

    .line 557
    :pswitch_3
    iput v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    goto :goto_0

    .line 509
    :pswitch_4
    iput v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 510
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    .line 511
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    .line 513
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 514
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    .line 518
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 519
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x437a0000    # 250.0f

    .line 520
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    .line 522
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 523
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 525
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 526
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 528
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 529
    iput-boolean v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12

    .line 450
    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->update()V

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 454
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 456
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 458
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 461
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    iget v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    add-float v9, v2, v3

    .line 463
    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v3

    .line 464
    iget-object v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 465
    iget-object v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 466
    iget-object v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    iget-object v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    sub-float v6, v1, v2

    add-float v8, v1, v2

    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 469
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    iget v11, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    move v7, v9

    .line 467
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 470
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 473
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 478
    iget p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    .line 479
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 483
    :goto_0
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 493
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 232
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 3

    .line 390
    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    const/16 v1, 0x1c

    invoke-static {v1}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    const/4 v1, 0x2

    .line 400
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/16 v1, 0x64

    .line 401
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x2710

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 403
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 p1, 0x437a0000    # 250.0f

    .line 404
    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    const/4 p1, 0x0

    .line 406
    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 407
    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 409
    iget p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 410
    iget p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 412
    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 415
    iget-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 259
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 6

    .line 317
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 321
    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    .line 326
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 327
    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 328
    iget p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-wide v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float p2, v4

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return-void

    .line 331
    :cond_1
    iget p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 332
    iget p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 335
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    if-nez p2, :cond_3

    goto :goto_0

    .line 340
    :cond_3
    iget-object p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz p2, :cond_4

    const/16 p2, 0x1c

    .line 341
    invoke-static {p2}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 343
    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 347
    :cond_4
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 348
    iput-wide v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 p2, 0x43270000    # 167.0f

    .line 349
    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    .line 350
    iget p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public onPullCallOnRelease(FFI)V
    .locals 2

    .line 310
    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    .line 311
    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDisplacement:F

    .line 312
    iget-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x1

    .line 362
    iput-boolean v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 363
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 367
    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    .line 368
    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 369
    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 371
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 372
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x43e10000    # 450.0f

    .line 375
    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 425
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSeslHostView(Landroid/view/View;)V
    .locals 0

    .line 176
    iput-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    return-void
.end method

.method public setSize(II)V
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, v0

    .line 192
    sget v2, Landroid/support/v4/widget/SeslEdgeEffect;->SIN:F

    div-float/2addr v1, v2

    .line 193
    sget v2, Landroid/support/v4/widget/SeslEdgeEffect;->COS:F

    mul-float v2, v2, v1

    sub-float/2addr v1, v2

    int-to-float p2, p2

    .line 195
    sget v2, Landroid/support/v4/widget/SeslEdgeEffect;->SIN:F

    .line 196
    sget v2, Landroid/support/v4/widget/SeslEdgeEffect;->COS:F

    .line 212
    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeight:F

    iget v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    .line 213
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    const/high16 v0, 0x41980000    # 19.0f

    .line 214
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    .line 216
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    const/high16 v0, 0x41e80000    # 29.0f

    .line 217
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    .line 220
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
