.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;


# instance fields
.field private mBitmapMask:Landroid/graphics/Bitmap;

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mBufferPaint:Landroid/graphics/Paint;

.field private final mMaskResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 33
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mMaskResId:I

    .line 34
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mSizeResId:I

    return-void
.end method

.method private applyRoundMaskToFitBackground(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 51
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mSizeResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    .line 52
    invoke-static {p2, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 53
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 56
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 57
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 60
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 63
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 65
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mMaskResId:I

    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2
.end method

.method private convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 85
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->applyRoundMaskToFitBackground(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method
