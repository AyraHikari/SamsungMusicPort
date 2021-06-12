.class public Lcom/samsung/android/app/music/browse/widget/RoundedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "RoundedImageView"


# instance fields
.field private final b:I

.field private c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43480000    # 200.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->b:I

    const/4 p2, 0x2

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->d:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 54
    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->b:I

    .line 55
    iput p2, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    .line 56
    iput p3, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->d:I

    :goto_0
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 136
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, p1, :cond_2

    int-to-float v3, p1

    int-to-float v2, v2

    div-float/2addr v3, v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 150
    sget-object v2, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertDrawableToBitmap. w - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", targetSize - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageBitmap. w - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", view w - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", radius - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 77
    invoke-static {p1, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 80
    invoke-static {p1, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 85
    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 86
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    if-nez v1, :cond_4

    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->b:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 92
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 116
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageResource. drawable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type circle - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->getClipToOutline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->setClipToOutline(Z)V

    :cond_0
    const v0, 0x7f020270

    .line 122
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 128
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->d:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->c:I

    return-void
.end method
