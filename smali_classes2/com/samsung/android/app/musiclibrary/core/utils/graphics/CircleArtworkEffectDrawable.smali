.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEBUG_BOUNDS:Z = false

.field private static final SEGMENT_COUNT:I = 0x5a

.field private static sLines:[F


# instance fields
.field private final mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mBoundsRectF:Landroid/graphics/RectF;

.field private final mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

.field private final mGradientPaint:Landroid/graphics/Paint;

.field private final mInset:I

.field private final mOriginalHeight:I

.field private mStrokeWidthConversionK:F

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 49
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mOriginalHeight:I

    .line 50
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    .line 51
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p1, p3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapWidth:I

    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapHeight:I

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->setupGradientPaint()V

    return-void
.end method

.method private drawCircularLine(Landroid/graphics/Canvas;F)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p2

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, p2

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getRotationDegrees()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    div-float/2addr p2, v0

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->ensureLineArray()V

    .line 97
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private ensureLineArray()V
    .locals 13

    .line 102
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    if-nez v0, :cond_0

    const/16 v0, 0x2d0

    .line 104
    new-array v0, v0, [F

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    const/4 v0, 0x0

    const v1, 0x3d8efa35

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x5b

    if-ge v2, v4, :cond_0

    add-float v4, v0, v1

    .line 111
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v6, v3, 0x0

    const v7, 0x3c0efa35

    sub-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v11

    double-to-float v0, v9

    aput v0, v5, v6

    .line 112
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v5, v3, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v11

    double-to-float v6, v6

    aput v6, v0, v5

    .line 113
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v5, v3, 0x2

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v11

    double-to-float v8, v8

    aput v8, v0, v5

    .line 114
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v5, v3, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v11

    double-to-float v6, v6

    aput v6, v0, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x4

    move v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getIntrinsicSize()I
    .locals 2

    .line 170
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapWidth:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapHeight:I

    if-ge v0, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapWidth:I

    return v0

    .line 173
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapHeight:I

    return v0
.end method

.method private setupGradientPaint()V
    .locals 4

    .line 121
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getColors()[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 122
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getPositions()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 62
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mStrokeWidthConversionK:F

    mul-float v0, v0, v1

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    if-lez v1, :cond_0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->drawCircularLine(Landroid/graphics/Canvas;F)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mOriginalHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mStrokeWidthConversionK:F

    .line 153
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mStrokeWidthConversionK:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setFilterBitmap(Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->invalidateSelf()V

    return-void
.end method
