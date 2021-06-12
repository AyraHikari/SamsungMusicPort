.class final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedShadowColor:I

.field private mExpandedShadowDx:F

.field private mExpandedShadowDy:F

.field private mExpandedShadowRadius:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    .line 50
    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 51
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 65
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 66
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 67
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 68
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 112
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    .line 114
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 116
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 685
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 686
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 687
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 688
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 689
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 11

    .line 396
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 399
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 400
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 401
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 402
    :goto_0
    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    iget-boolean v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 413
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 414
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 415
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 406
    :cond_1
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 409
    :cond_2
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    .line 427
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 423
    :cond_3
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 420
    :cond_4
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 431
    :goto_2
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 432
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 433
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 434
    :cond_5
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    iget-boolean v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    invoke-static {v1, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v3, v1, 0x70

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    .line 445
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    .line 446
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    .line 447
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 438
    :cond_6
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 441
    :cond_7
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    .line 459
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 455
    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 452
    :cond_9
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 464
    :goto_4
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 466
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    .line 346
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 511
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 513
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 515
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private calculateOffsets(F)V
    .locals 6

    .line 350
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 351
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 353
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 356
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 359
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 363
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 362
    invoke-static {v1, v2, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 368
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    const/4 v3, 0x0

    .line 369
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 370
    invoke-static {v2, v4, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 371
    invoke-static {v4, v5, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 372
    invoke-static {v4, v5, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result p1

    .line 368
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 374
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 8

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 533
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 539
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 540
    iget p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 541
    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 542
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v2, p1

    move v6, v1

    goto :goto_3

    .line 548
    :cond_2
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 549
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 550
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 553
    :goto_1
    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v7}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 555
    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_2

    .line 558
    :cond_4
    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v7

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 561
    :goto_2
    iget p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 570
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_8

    .line 578
    iget p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    iget-boolean p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    if-nez p1, :cond_7

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x1

    .line 579
    :goto_5
    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 580
    iput-boolean v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 583
    :cond_8
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v6, :cond_b

    .line 584
    :cond_9
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 585
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 587
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 590
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 592
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 593
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 594
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    :cond_b
    return-void
.end method

.method private clearTexture()V
    .locals 1

    .line 655
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 9

    .line 600
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 605
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    .line 607
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    .line 609
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 610
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 618
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 619
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 621
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 623
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 3
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 379
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private interpolateBounds(F)V
    .locals 4

    .line 470
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 472
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 474
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 476
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 666
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 695
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 697
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 4

    .line 261
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 264
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    throw v0
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 701
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 0

    .line 519
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 521
    iget-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 483
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v1, :cond_1

    .line 484
    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 485
    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 490
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 491
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 499
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 500
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    invoke-virtual {p1, v1, v2, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 503
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 507
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCollapsedTextGravity()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 1

    .line 338
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 294
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 670
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getExpandedTextGravity()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    return v0
.end method

.method getExpandedTextSize()F
    .locals 1

    .line 342
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    return v0
.end method

.method getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method getExpansionFraction()F
    .locals 1

    .line 334
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .line 651
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 330
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onBoundsChanged()V
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    return-void
.end method

.method public recalculate()V
    .locals 1

    .line 628
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 631
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 632
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 171
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 3

    .line 203
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 205
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 209
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 214
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 216
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 218
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 220
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 222
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 225
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 228
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 147
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 1

    .line 192
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 193
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 194
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 1

    .line 139
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 277
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 163
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 3

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 234
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 238
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 243
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    .line 245
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    .line 247
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    .line 249
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    .line 251
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 254
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 257
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 154
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 155
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 1

    .line 181
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 182
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 183
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1

    .line 132
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 133
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 134
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 282
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 284
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 309
    invoke-static {p1, v0, v1}, Landroid/support/v4/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 311
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 312
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    .line 313
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 127
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method final setState([I)Z
    .locals 0

    .line 318
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    .line 320
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 642
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 644
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 645
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 646
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 290
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method
