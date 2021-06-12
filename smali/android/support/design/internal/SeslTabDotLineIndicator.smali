.class public Landroid/support/design/internal/SeslTabDotLineIndicator;
.super Landroid/support/design/internal/SeslAbsIndicatorView;
.source "SourceFile"


# static fields
.field private static final CIRCLE_INTERVAL:F = 2.5f

.field private static final DIAMETER_SIZE:F = 2.5f

.field private static final SESL_DOT_LINE_HIDE_DURATION:I = 0x64

.field private static final SESL_DOT_LINE_PRESS_DURATION:I = 0x32

.field private static final SESL_DOT_LINE_RELEASE_DURATION:I = 0x12c

.field private static final SESL_DOT_LINE_SCALE_DIFF:I = 0x5


# instance fields
.field private mDiameter:I

.field private mInterval:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPressAnimationSet:Landroid/view/animation/AnimationSet;

.field private mReleaseAnimationSet:Landroid/view/animation/AnimationSet;

.field private mScaleFrom:F

.field private final mScaleFromDiff:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/internal/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    .line 30
    iput p2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    const/4 p2, 0x1

    .line 31
    iput p2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x40200000    # 2.5f

    invoke-static {p2, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-static {p2, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    .line 67
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    .line 68
    iget-object p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFromDiff:F

    return-void
.end method

.method private updateDotLineScaleFrom()V
    .locals 2

    .line 121
    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    if-nez v0, :cond_2

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    .line 123
    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    if-gtz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    .line 124
    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFrom:F

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFromDiff:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFrom:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 138
    invoke-super {p0, p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-direct {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->updateDotLineScaleFrom()V

    .line 141
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getHeight()I

    move-result v1

    .line 145
    iget v2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    iget v4, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, -0x1

    .line 148
    iget v4, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 149
    iget v6, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    iget v7, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    add-int/2addr v6, v7

    mul-int v6, v6, v3

    sub-int/2addr v0, v6

    .line 150
    iget v6, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const/4 v6, 0x0

    if-lez v3, :cond_2

    .line 158
    div-int v7, v0, v3

    .line 159
    rem-int/2addr v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    add-int v8, v4, v3

    int-to-float v8, v8

    .line 164
    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    iget v10, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    iget-object v11, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    iget v8, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    iget v9, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v3, v8

    if-ge v6, v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method onHide()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->setAlpha(F)V

    return-void
.end method

.method onPressed()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->setAlpha(F)V

    .line 103
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->invalidate()V

    return-void
.end method

.method onReleased()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->setAlpha(F)V

    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method onShow()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->onReleased()V

    return-void
.end method

.method public setHideImmediatly()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->setAlpha(F)V

    return-void
.end method

.method public showImmediatly()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->onReleased()V

    return-void
.end method
