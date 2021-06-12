.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;
.source "SourceFile"


# instance fields
.field private mAlpha:F

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapUpdated:Z

.field private mNeedUpdateRatio:Z

.field private mRatio:F

.field private mVBOFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAlpha:F

    .line 37
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAlpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapRatio()F
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    .line 85
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRectangular:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    .line 91
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    return v0
.end method

.method public getHSVCorrection()[F
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mHSV:[F

    return-object v0
.end method

.method public getVBO()Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mVBOFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;->getVBO(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    move-result-object v0

    return-object v0
.end method

.method public isBitmapMutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBitmapUpdated()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmapUpdated:Z

    return v0
.end method

.method public isTouched(FFI)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getScreenBoundsRect(I)Landroid/graphics/Rect;

    move-result-object p3

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resetBitmapUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmapUpdated:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAlpha:F

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isBitmapMutable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmapUpdated:Z

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    return-void
.end method

.method public setRectangular(Z)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->setRectangular(Z)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    return-void
.end method

.method public setVBAFactory(Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mVBOFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;

    return-void
.end method
