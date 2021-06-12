.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerMatrix"
.end annotation


# static fields
.field private static final Z_FIGHT_CONST:F = 20.0f


# instance fields
.field private mOriginalModelSize:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 16

    move-object/from16 v0, p0

    .line 104
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 106
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v1

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getBiggestSize()F

    move-result v3

    mul-float v1, v1, v3

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mOriginalModelSize:F

    div-float/2addr v1, v3

    .line 107
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getBiggestSize()F

    move-result v4

    mul-float v3, v3, v4

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mOriginalModelSize:F

    div-float/2addr v3, v4

    .line 108
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v4

    div-float v4, v3, v4

    .line 109
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v5

    div-float v5, v1, v5

    .line 110
    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v1, v7

    div-float v7, v3, v7

    .line 114
    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v12

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v15, 0x0

    cmpl-float v10, v12, v15

    if-eqz v10, :cond_1

    .line 116
    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v10

    mul-float v4, v4, v10

    .line 117
    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v10

    mul-float v5, v5, v10

    .line 118
    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v11

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v13}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v13

    add-float/2addr v6, v9

    invoke-static {v10, v2, v11, v13, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 120
    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v11, 0x0

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotX()F

    move-result v13

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotY()F

    move-result v14

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 121
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotZ()F

    move-result v6

    const/4 v9, 0x0

    move v15, v6

    .line 120
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 122
    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    sub-float/2addr v4, v7

    neg-float v5, v5

    sub-float/2addr v5, v8

    invoke-static {v6, v2, v4, v5, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 124
    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v12

    mul-float v4, v4, v12

    add-float/2addr v11, v4

    .line 125
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v4

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v12

    mul-float v5, v5, v12

    sub-float/2addr v4, v5

    .line 126
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    sub-float/2addr v11, v7

    sub-float/2addr v4, v8

    add-float/2addr v6, v9

    invoke-static {v5, v2, v11, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 128
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    invoke-static {v4, v2, v3, v1, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 130
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    return-object v1
.end method

.method setOriginalModelSize(F)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mOriginalModelSize:F

    return-void
.end method
