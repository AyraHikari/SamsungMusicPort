.class public Landroid/support/v4/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircularProgressDrawable$Ring;,
        Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;,
        Landroid/support/v4/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x693

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_SCALE_DURATION_OFFSET:F = 0.2f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final FINISHING_ANIMATION_DURATION:I = 0x3e8

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.4f

.field static final SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimationEndCallback:Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;

.field private mAnimator:Landroid/animation/Animator;

.field mEnding:Z

.field private mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 73
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4, v3, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [I

    const-string v1, "#008cff"

    .line 105
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#06b485"

    .line 106
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;

    .line 155
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 157
    new-instance p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 158
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    sget-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColors([I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 160
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 161
    invoke-direct {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->setupAnimators()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CircularProgressDrawable;->applyTransformation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F
    .locals 0

    .line 67
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F
    .locals 0

    .line 67
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p0
.end method

.method static synthetic access$302(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p1
.end method

.method private applyFinishTranslation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 4

    .line 545
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 552
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 554
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 557
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 558
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v2, v3

    sget-object v3, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 559
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 560
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 561
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 563
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 564
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 565
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    .line 566
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 569
    sget-object p2, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const p2, 0x3f333333    # 0.7f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mEnding:Z

    if-nez p1, :cond_1

    .line 571
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;

    invoke-interface {p1}, Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;->OnAnimationEnd()V

    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mEnding:Z

    :cond_1
    return-void
.end method

.method private applyTransformation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .locals 6

    .line 580
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 585
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result p3

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3f4a3d71    # 0.79f

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_2

    div-float v0, p1, v3

    .line 592
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    sget-object v3, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 594
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 595
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    .line 596
    sget-object v4, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 597
    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    sub-float v3, p1, v3

    const v4, 0x3f19999a    # 0.6f

    div-float/2addr v3, v4

    .line 601
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    sget-object v4, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 602
    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 604
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    add-float/2addr v4, v2

    .line 605
    sget-object v5, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 606
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v0, v3

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sub-float v3, v4, v0

    move v0, v4

    :goto_0
    const/high16 v1, 0x3e800000    # 0.25f

    .line 611
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 612
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr p3, v2

    const/high16 v1, 0x43580000    # 216.0f

    .line 613
    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr p1, v2

    mul-float p1, p1, v1

    .line 615
    invoke-virtual {p2, v3}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 616
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 618
    invoke-virtual {p2, p3}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 619
    invoke-direct {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private getRotation()F
    .locals 1

    .line 444
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    return v0
.end method

.method private setRotation(F)V
    .locals 0

    .line 440
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 168
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 169
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v1

    .line 171
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-float p1, p1, v1

    .line 172
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    const/4 p1, 0x0

    .line 173
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    mul-float p3, p3, v1

    mul-float p4, p4, v1

    .line 174
    invoke-virtual {v0, p3, p4}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 624
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x2

    .line 625
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 626
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$1;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 635
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 636
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 637
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 638
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$2;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    iput-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 530
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    .line 531
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v1

    .line 529
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 415
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 418
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getArrowEnabled()Z
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getShowArrow()Z

    move-result v0

    return v0
.end method

.method public getArrowHeight()F
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getArrowHeight()F

    move-result v0

    return v0
.end method

.method public getArrowScale()F
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getArrowScale()F

    move-result v0

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getArrowWidth()F

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getCenterRadius()F
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getCenterRadius()F

    move-result v0

    return v0
.end method

.method public getColorSchemeColors()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 398
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getProgressRotation()F
    .locals 1

    .line 357
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getRotation()F

    move-result v0

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 325
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 454
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 424
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 425
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 297
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 388
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCenterRadius(F)V
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 229
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 436
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 409
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 410
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setOnAnimationEndCallback(Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;)V
    .locals 0
    .param p1    # Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 501
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 367
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 347
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 348
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint$Cap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 239
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41300000    # 11.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 185
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40f00000    # 7.5f

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 188
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 190
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 5

    .line 462
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 465
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    .line 468
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 470
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 476
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mEnding:Z

    .line 477
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 479
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 480
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 481
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x693

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 482
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 491
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    .line 493
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 494
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 495
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 496
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
