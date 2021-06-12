.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x3

.field private static final USE_VIGNETTE:Z


# instance fields
.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private mRoundX:F

.field private mRoundY:F

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;FFZ)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mHeight:I

    .line 47
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundX:F

    .line 48
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundY:F

    .line 50
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, p3, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p4, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 57
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundX:F

    iget p4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundY:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float p3, p3, p4

    int-to-float p1, p1

    div-float/2addr p3, p1

    .line 62
    invoke-virtual {p2, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;FFZ)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;
    .locals 1

    .line 138
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;FFZ)V

    return-object v0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;FFZ)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;
    .locals 1

    if-eqz p0, :cond_1

    .line 143
    instance-of v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;

    if-eqz v0, :cond_0

    .line 145
    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;

    return-object p0

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 150
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;FFZ)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundX:F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundY:F

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getRounds()[F
    .locals 3

    const/4 v0, 0x2

    .line 68
    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundY:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setRounds([F)V
    .locals 2

    if-eqz p1, :cond_1

    .line 72
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    aget v0, p1, v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundX:F

    const/4 v0, 0x1

    .line 76
    aget p1, p1, v0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundedDrawable;->mRoundY:F

    return-void

    :cond_1
    :goto_0
    return-void
.end method
