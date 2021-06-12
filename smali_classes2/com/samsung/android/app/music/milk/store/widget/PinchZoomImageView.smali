.class public Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
.super Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;


# instance fields
.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Luk/co/senab/photoview/PhotoViewAttacher;

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->e:Z

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView$ScaleType;IIII)F
    .locals 2

    int-to-float p0, p1

    int-to-float p1, p2

    div-float p2, p0, p1

    int-to-float p3, p3

    int-to-float p4, p4

    div-float v0, p3, p4

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    move p0, p1

    move p3, p4

    :cond_0
    div-float/2addr p3, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float p3, p3, p0

    const-string p0, "PinchZoomImageView"

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "determineMaximumScaleFactor : scale - "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", device ratio - "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", bitmap ratio - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p3
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->d()V

    const-string v0, "window"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 116
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 117
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/DisplayCompat;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 118
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->f:I

    .line 119
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->g:I

    const-string v0, "PinchZoomImageView"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : screen width - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 129
    sget-object v3, Lcom/samsung/android/app/music/R$styleable;->MilkPinchZoom:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x41200000    # 10.0f

    :goto_0
    if-ge v3, p2, :cond_3

    .line 132
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 134
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_1

    :cond_0
    if-nez v7, :cond_1

    .line 136
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 138
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v5

    move v0, v6

    goto :goto_2

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 146
    :goto_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMinimumScale(F)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMaximumScale(F)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMediumScale(F)V

    .line 150
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->l:F

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->k:F

    return-void
.end method

.method private static b(Landroid/widget/ImageView$ScaleType;IIII)F
    .locals 2

    int-to-float p0, p1

    int-to-float p1, p2

    div-float p2, p0, p1

    int-to-float p3, p3

    int-to-float p4, p4

    div-float v0, p3, p4

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    move p0, p1

    move p3, p4

    :cond_0
    div-float/2addr p3, p0

    const/high16 p0, 0x40a00000    # 5.0f

    mul-float p3, p3, p0

    const-string p0, "PinchZoomImageView"

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "determineMaximumScaleFactor : scale - "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", device ratio - "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", bitmap ratio - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p3
.end method

.method private d()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    :cond_1
    return-void
.end method

.method private e()V
    .locals 7

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->f:I

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->g:I

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->h:I

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->i:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(Landroid/widget/ImageView$ScaleType;IIII)F

    move-result v0

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->f:I

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->g:I

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->h:I

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->i:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->b(Landroid/widget/ImageView$ScaleType;IIII)F

    move-result v1

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMinimumScale()F

    move-result v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "PinchZoomImageView"

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScaleFactor : maximum scale - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", minimum - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", medium - "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", can zoom - "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 433
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMaximumScale(F)V

    .line 434
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMediumScale(F)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMaximumScale(F)V

    .line 438
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setZoomable(Z)V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 3

    const-string v0, "PinchZoomImageView"

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleChange : scale - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", scale factor - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", focusX - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", focusY - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScale()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->l:F

    return-void
.end method

.method public a(FFFZ)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FFFZ)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 160
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->i:I

    .line 161
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->h:I

    const-string v0, "PinchZoomImageView"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOriginalImageSize : width - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->e()V

    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 0

    const-string p1, "PinchZoomImageView"

    const-string p2, "onPhotoTap : tab"

    .line 402
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setZoomable(Z)V

    .line 368
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 369
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 350
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 352
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setZoomable(Z)V

    .line 353
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 354
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setImageResource(I)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 358
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->h:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->i:I

    if-gtz v0, :cond_2

    .line 359
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(II)V

    const-string v0, "PinchZoomImageView"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsyncImageLoadingComplete : uri - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", width - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->e:Z

    return v0
.end method

.method public c()V
    .locals 3

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMinimumScale()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(FFFZ)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "PinchZoomImageView"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dispatchTouchEvent] mCurrentScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->l:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->k:F

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->l:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 448
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "933"

    const-string v2, "9352"

    .line 449
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->k:F

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 451
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "933"

    const-string v2, "9353"

    .line 452
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->l:F

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->k:F

    .line 457
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->k()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->b()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Luk/co/senab/photoview/IPhotoView;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->f()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->e()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->d()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->h()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->i()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v0

    return v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->d()V

    .line 336
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->onAttachedToWindow()V

    .line 337
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 338
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a()V

    .line 344
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScale()F

    move-result v0

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMediumScale()F

    move-result v2

    const/4 v3, 0x1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMediumScale()F

    move-result v0

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(FFFZ)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMinimumScale()F

    move-result v0

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(FFFZ)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Z)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->j()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->j()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->j()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageURI(Landroid/net/Uri;)V

    .line 320
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->j()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->c(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->d(F)V

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->j:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Z)V

    return-void
.end method
