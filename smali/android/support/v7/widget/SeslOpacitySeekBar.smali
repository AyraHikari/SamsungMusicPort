.class Landroid/support/v7/widget/SeslOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# static fields
.field private static final SEEKBAR_MAX_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SeslOpacitySeekBar"


# instance fields
.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 27
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    .line 32
    iput-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method private initColor(I)V
    .locals 4

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [F

    .line 46
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 49
    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    aput v3, v1, v2

    .line 50
    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    const/16 v2, 0xff

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 51
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgress(I)V

    return-void
.end method

.method private initProgressDrawable()V
    .locals 2

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initThumb()V
    .locals 2

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_seekbar_cursor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setThumbOffset(I)V

    return-void
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 p1, 0x0

    if-lez p2, :cond_1

    int-to-float p2, p2

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-lez p3, :cond_2

    int-to-float p1, p3

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 100
    :cond_2
    invoke-virtual {v5, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 101
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 104
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 63
    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 65
    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1

    const/16 v0, 0xff

    .line 37
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setMax(I)V

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initProgressDrawable()V

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initThumb()V

    return-void
.end method

.method restoreColor(I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 56
    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 57
    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
