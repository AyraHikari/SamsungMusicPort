.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;
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

    .line 24
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mProjMatrix:[F

    .line 26
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mViewMatrix:[F

    return-void
.end method

.method public static getCameraDistance(IF)F
    .locals 4

    int-to-double v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v2

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double p0, p0, v2

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static physicalToScreen(FFFF)I
    .locals 0

    mul-float p0, p0, p1

    add-float/2addr p1, p2

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static screenToPhysical(IFFF)F
    .locals 0

    add-float/2addr p2, p1

    int-to-float p0, p0

    mul-float p2, p2, p0

    div-float/2addr p2, p1

    return p2
.end method


# virtual methods
.method public doGetMatrix([F)V
    .locals 20

    move-object/from16 v0, p0

    .line 30
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mProjMatrix:[F

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLeft:F

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mRight:F

    iget v5, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mBottom:F

    iget v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mTop:F

    iget v7, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mNear:F

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mFar:F

    const/4 v2, 0x0

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 32
    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mViewMatrix:[F

    iget v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mX:F

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mY:F

    iget v13, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mZ:F

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLookX:F

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLookY:F

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLookZ:F

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move/from16 v16, v1

    invoke-static/range {v9 .. v19}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 34
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mProjMatrix:[F

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mViewMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mNeedUpdateMatrix:Z

    return-void
.end method
