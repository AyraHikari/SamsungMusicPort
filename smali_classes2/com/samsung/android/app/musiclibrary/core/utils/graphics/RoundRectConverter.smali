.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;
    }
.end annotation


# instance fields
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    .line 26
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    .line 28
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRound:I

    return-void
.end method

.method public static calibrateRound(FFFFF)F
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

.method public static createFromResource(III)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;
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

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;-><init>()V

    .line 63
    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidthResId:I

    .line 64
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeightResId:I

    .line 65
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRoundResId:I

    return-object v0
.end method

.method public static createFromSize(III)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;
    .locals 1

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;-><init>()V

    .line 53
    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    .line 54
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    .line 55
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRound:I

    return-object v0
.end method

.method private ensureInternal(Landroid/content/res/Resources;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidthResId:I

    if-eqz v0, :cond_1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidthResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    .line 147
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeightResId:I

    if-eqz v0, :cond_2

    .line 148
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeightResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    .line 150
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRound:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRoundResId:I

    if-eqz v0, :cond_3

    .line 151
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRoundResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRound:I

    :cond_3
    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->ensureInternal(Landroid/content/res/Resources;)V

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p2, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 116
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    int-to-float v4, v4

    int-to-float p1, p1

    int-to-float v0, v0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRound:I

    int-to-float v5, v5

    invoke-static {v3, v4, p1, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->calibrateRound(FFFFF)F

    move-result v3

    .line 117
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    :catch_0
    return-object p2

    :cond_1
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

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->ensureInternal(Landroid/content/res/Resources;)V

    .line 132
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 133
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 134
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mRound:I

    int-to-float v4, v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->calibrateRound(FFFFF)F

    move-result v0

    .line 135
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 136
    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p1
.end method

.method public setViewHeight(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewHeight:I

    return-void
.end method

.method public setViewWidth(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->mViewWidth:I

    return-void
.end method
