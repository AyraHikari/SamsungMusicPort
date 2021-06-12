.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;


# instance fields
.field private mCircleRoundEffectInset:I

.field private mCircleRoundEffectInsetResId:I

.field private mCircleSize:I

.field private mCircleSizeResId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSize:I

    .line 21
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInset:I

    return-void
.end method

.method public static createFromResource(II)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;-><init>()V

    .line 38
    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSizeResId:I

    .line 39
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInsetResId:I

    return-object v0
.end method

.method public static createFromSize(II)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;-><init>()V

    .line 30
    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSize:I

    .line 31
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInset:I

    return-object v0
.end method

.method private ensureSizeInternal(Landroid/content/res/Resources;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSizeResId:I

    if-eqz v0, :cond_1

    .line 74
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSizeResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSize:I

    .line 76
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInset:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInsetResId:I

    if-eqz v0, :cond_2

    .line 77
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInsetResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInset:I

    :cond_2
    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->ensureSizeInternal(Landroid/content/res/Resources;)V

    .line 53
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSize:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInset:I

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 57
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public convertBitmapToDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->ensureSizeInternal(Landroid/content/res/Resources;)V

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSize:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInset:I

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    return-object v0
.end method
