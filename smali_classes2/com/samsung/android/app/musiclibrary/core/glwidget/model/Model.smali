.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;
    }
.end annotation


# instance fields
.field private mAdapterIndex:I

.field protected mAngle:F

.field private mBiggestSize:F

.field protected mHSV:[F

.field protected mHeight:F

.field protected mMatrix:[F

.field protected mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

.field private mModelRatio:F

.field private mModified:Z

.field private mRatioCalculated:Z

.field protected mRectangular:Z

.field private mRotPivotX:F

.field private mRotPivotY:F

.field private mRotPivotZ:F

.field protected mRotX:F

.field protected mRotY:F

.field protected mRotZ:F

.field protected final mScreenBounds:Landroid/graphics/Rect;

.field private mVisible:Z

.field protected mWidth:F

.field protected mX:F

.field protected mY:F

.field protected mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    const/16 v0, 0x10

    .line 63
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrix:[F

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mScreenBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAdapterIndex:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static resetModified([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 3

    .line 547
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->resetModified()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAdapterIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAdapterIndex:I

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 253
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    return v0
.end method

.method public getBiggestSize()F
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    if-eqz v0, :cond_0

    .line 579
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    return v0

    .line 581
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    return v0
.end method

.method public getDebugState()Ljava/lang/String;
    .locals 4

    const-string v0, "{V<-%b X<-%.2f Y<-%.2f Z<-%.2f W<-%.2f H<-%.2f Angle<-%.2f}"

    const/4 v1, 0x7

    .line 529
    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mVisible:Z

    .line 530
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    .line 531
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 530
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    return v0
.end method

.method public getHueCorrection()F
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;->getMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public getMatrixGenerator()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    return-object v0
.end method

.method public getModelRatio()F
    .locals 2

    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    .line 335
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 336
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModelRatio:F

    goto :goto_0

    .line 338
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModelRatio:F

    .line 341
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModelRatio:F

    return v0
.end method

.method public getRotX()F
    .locals 1

    .line 234
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotX:F

    return v0
.end method

.method public getRotY()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    return v0
.end method

.method public getRotZ()F
    .locals 1

    .line 196
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotZ:F

    return v0
.end method

.method public getRotationPivotX()F
    .locals 1

    .line 298
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotX:F

    return v0
.end method

.method public getRotationPivotY()F
    .locals 1

    .line 307
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotY:F

    return v0
.end method

.method public getRotationPivotZ()F
    .locals 1

    .line 316
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotZ:F

    return v0
.end method

.method public getSaturationCorrection()F
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected getScreenBoundsRect(I)Landroid/graphics/Rect;
    .locals 5

    int-to-float p1, p1

    .line 566
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v2

    div-float/2addr v2, v1

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sub-float v3, p1, v0

    float-to-int v3, v3

    .line 571
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v4

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 574
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mScreenBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getValueCorrection()F
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 379
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 360
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 325
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    return v0
.end method

.method public isInsideModel(FF)Z
    .locals 1

    .line 518
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isModified()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModified:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mVisible:Z

    return v0
.end method

.method public resetModified()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getMatrix()[F

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModified:Z

    return-void
.end method

.method public setAdapterIndex(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAdapterIndex:I

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setHSVCorrection(FFF)V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 460
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 461
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 p2, 0x2

    aput p3, p1, p2

    return-void
.end method

.method public setHSVCorrection([F)V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x2

    aget p1, p1, v1

    aput p1, v0, v1

    return-void
.end method

.method public setHeight(F)V
    .locals 1

    .line 142
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    .line 143
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setHueCorrection(F)V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    return-void
.end method

.method protected setModified()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModified:Z

    return-void
.end method

.method public setPosition(FFF)V
    .locals 0

    .line 400
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    .line 401
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    .line 402
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRectangular(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotX(F)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotX:F

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotY(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotZ(F)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotZ:F

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotation(FFFF)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    .line 276
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotX:F

    .line 277
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    .line 278
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotZ:F

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotationPivot(FFF)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotX:F

    .line 287
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotY:F

    .line 288
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotZ:F

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotationPivotX(F)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotX:F

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotationPivotY(F)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotY:F

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setRotationPivotZ(F)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotZ:F

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setSaturationCorrection(F)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    .line 184
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    .line 185
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setValueCorrection(F)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mVisible:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 170
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    .line 171
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRatioCalculated:Z

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 388
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public setZ(F)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    return-void
.end method

.method public updateBoundsRect(Landroid/graphics/Rect;I)V
    .locals 0

    .line 559
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getScreenBoundsRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
