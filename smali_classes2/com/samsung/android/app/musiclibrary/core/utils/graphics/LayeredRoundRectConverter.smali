.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;


# instance fields
.field private mColor:I

.field private mColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mRound:I

.field private mRoundResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private mViewHeight:I

.field private mViewHeightResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private mViewWidth:I

.field private mViewWidthResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidth:I

    .line 30
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeight:I

    .line 32
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRound:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    return-void
.end method

.method private static calibrateRound(FFFFF)F
    .locals 2

    mul-float v0, p2, p1

    mul-float v1, p0, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    div-float/2addr p2, p0

    goto :goto_0

    :cond_0
    div-float p2, p3, p1

    :goto_0
    mul-float p4, p4, p2

    return p4
.end method

.method public static createFromResource(IIII)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 72
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;-><init>()V

    .line 74
    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidthResId:I

    .line 75
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeightResId:I

    .line 76
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRoundResId:I

    .line 77
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColorResId:I

    return-object v0
.end method

.method public static createFromSize(IIII)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;
    .locals 1

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;-><init>()V

    .line 63
    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidth:I

    .line 64
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeight:I

    .line 65
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRound:I

    .line 66
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    return-object v0
.end method

.method private ensureInternal(Landroid/content/res/Resources;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidthResId:I

    if-eqz v0, :cond_1

    .line 140
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidthResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidth:I

    .line 142
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeight:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeightResId:I

    if-eqz v0, :cond_2

    .line 143
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeightResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeight:I

    .line 145
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRound:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRoundResId:I

    if-eqz v0, :cond_3

    .line 146
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRoundResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRound:I

    .line 148
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColorResId:I

    if-eqz v0, :cond_4

    .line 149
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColorResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    :cond_4
    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->ensureInternal(Landroid/content/res/Resources;)V

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 96
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 102
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeight:I

    int-to-float v5, v5

    int-to-float p1, p1

    int-to-float v0, v0

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRound:I

    int-to-float v6, v6

    invoke-static {v4, v5, p1, v0, v6}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->calibrateRound(FFFFF)F

    move-result v4

    .line 103
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_1

    .line 106
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 107
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v8, v8, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v4, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v8, v8, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    :catch_0
    return-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public convertBitmapToDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->ensureInternal(Landroid/content/res/Resources;)V

    .line 124
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 126
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mViewHeight:I

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mRound:I

    int-to-float v4, v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->calibrateRound(FFFFF)F

    move-result v0

    .line 127
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 129
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 130
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/LayeredRoundRectConverter;->mColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-object p1
.end method
