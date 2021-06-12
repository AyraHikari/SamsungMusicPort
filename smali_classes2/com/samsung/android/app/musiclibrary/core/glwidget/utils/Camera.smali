.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mBottom:F

.field protected mFar:F

.field protected mLeft:F

.field protected mLookX:F

.field protected mLookY:F

.field protected mLookZ:F

.field private mMatrix:[F

.field protected mNear:F

.field protected mNeedUpdateMatrix:Z

.field protected mRight:F

.field protected mTop:F

.field protected mX:F

.field protected mY:F

.field protected mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 29
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mMatrix:[F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    return-void
.end method


# virtual methods
.method protected abstract doGetMatrix([F)V
.end method

.method public getMatrix()[F
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mMatrix:[F

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->doGetMatrix([F)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mMatrix:[F

    return-object v0
.end method

.method public getPosX()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mX:F

    return v0
.end method

.method public getPosY()F
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mY:F

    return v0
.end method

.method public getPosZ()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mZ:F

    return v0
.end method

.method public setDistance(FF)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNear:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mFar:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNear:F

    .line 179
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mFar:F

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    return-void
.end method

.method public setLookAt(FFF)V
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLookX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLookY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLookZ:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLookX:F

    .line 139
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLookY:F

    .line 140
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLookZ:F

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    .line 97
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mY:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mZ:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mX:F

    .line 101
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mY:F

    .line 102
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mZ:F

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    return-void
.end method

.method public setViewport(FF)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    neg-float v0, p1

    .line 66
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLeft:F

    .line 67
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mRight:F

    .line 68
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mTop:F

    neg-float p1, p2

    .line 69
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mBottom:F

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    return-void
.end method

.method public setViewport(FFFF)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mLeft:F

    .line 83
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mRight:F

    .line 84
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mBottom:F

    .line 85
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mTop:F

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->mNeedUpdateMatrix:Z

    return-void
.end method
