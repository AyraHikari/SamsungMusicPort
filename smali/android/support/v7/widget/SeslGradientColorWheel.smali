.class Landroid/support/v7/widget/SeslGradientColorWheel;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslGradientColorWheel"


# instance fields
.field private final HUE_COLORS:[I

.field private cursorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorPaintSize:I

.field private mCursorPosX:F

.field private mCursorPosY:F

.field private final mCursorStrokeSize:I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

.field private mOrbitalRadius:I

.field private mRadius:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSaturationPaint:Landroid/graphics/Paint;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    .line 41
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->HUE_COLORS:[I

    .line 61
    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mContext:Landroid/content/Context;

    .line 62
    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    .line 64
    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    .line 67
    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_cursor_out_stroke_size:I

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorStrokeSize:I

    .line 72
    invoke-direct {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->init()V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private init()V
    .locals 11

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorStrokeSize:I

    add-int/2addr v0, v1

    .line 78
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    .line 79
    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorStrokeSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    .line 81
    new-instance v1, Landroid/graphics/SweepGradient;

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->HUE_COLORS:[I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 82
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    .line 83
    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 84
    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v2

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v6, v2

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v7, v2

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 88
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mStrokePaint:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget-boolean v4, Landroid/support/v7/widget/SeslColorPicker;->sIsLightTheme:Z

    if-eqz v4, :cond_0

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_color_picker_stroke_color_light:I

    goto :goto_0

    :cond_0
    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_action_bar_background_color_dark:I

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_gradient_wheel_cursor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 p1, 0x0

    if-lez p2, :cond_1

    int-to-float p2, p2

    .line 195
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

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 201
    :cond_2
    invoke-virtual {v5, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 202
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 205
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private updateCursorPosition(FF)V
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 175
    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    .line 177
    iget p2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-double v2, p2

    float-to-double p1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, p1

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    .line 178
    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    sub-double/2addr v2, p1

    double-to-int p1, v2

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    .line 180
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 151
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v3

    .line 115
    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslGradientColorWheel;->playSoundEffect(I)V

    .line 128
    :cond_1
    :goto_0
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    .line 131
    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    .line 132
    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float p1, p1

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    .line 133
    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float p1, p1

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    .line 136
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    if-eqz p1, :cond_3

    .line 137
    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-double v3, p1

    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float p1, p1

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    sub-float/2addr p1, v1

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v3, v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float p1, v3

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    .line 139
    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 141
    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;->onWheelColorChanged(FF)V

    goto :goto_1

    :cond_3
    const-string p1, "SeslGradientColorWheel"

    const-string v0, "Listener is not set."

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->invalidate()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setColor(I)V
    .locals 2

    const/4 v0, 0x3

    .line 168
    new-array v0, v0, [F

    .line 169
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    .line 170
    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslGradientColorWheel;->updateCursorPosition(FF)V

    return-void
.end method

.method setOnColorWheelInterface(Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    return-void
.end method

.method updateCursorColor(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
