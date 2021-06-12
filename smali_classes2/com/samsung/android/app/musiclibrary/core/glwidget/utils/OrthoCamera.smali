.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;
.source "SourceFile"


# instance fields
.field private mProjMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;-><init>()V

    const/16 v0, 0x10

    .line 25
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mProjMatrix:[F

    .line 27
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mViewMatrix:[F

    return-void
.end method


# virtual methods
.method public doGetMatrix([F)V
    .locals 20

    move-object/from16 v0, p0

    .line 31
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mProjMatrix:[F

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLeft:F

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mRight:F

    iget v5, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mBottom:F

    iget v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mTop:F

    iget v7, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mNear:F

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mFar:F

    const/4 v2, 0x0

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 33
    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mViewMatrix:[F

    iget v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mX:F

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mY:F

    iget v13, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mZ:F

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLookX:F

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLookY:F

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLookZ:F

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move/from16 v16, v1

    invoke-static/range {v9 .. v19}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 35
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mProjMatrix:[F

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mViewMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mNeedUpdateMatrix:Z

    return-void
.end method
