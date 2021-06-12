.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelMatrix"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 18

    move-object/from16 v0, p0

    .line 591
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 594
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 595
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v4

    div-float/2addr v4, v3

    .line 596
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    .line 598
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotX()F

    move-result v3

    .line 599
    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotY()F

    move-result v6

    .line 600
    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotZ()F

    move-result v7

    .line 601
    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v9

    add-float/2addr v9, v3

    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v10

    add-float/2addr v10, v6

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v11

    add-float/2addr v11, v7

    invoke-static {v8, v2, v9, v10, v11}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 602
    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v14

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotX()F

    move-result v15

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotY()F

    move-result v16

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotZ()F

    move-result v17

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 603
    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    neg-float v4, v4

    sub-float/2addr v4, v3

    neg-float v1, v1

    sub-float/2addr v1, v6

    neg-float v3, v7

    invoke-static {v8, v2, v4, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v4

    sub-float/2addr v4, v1

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 606
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v1

    .line 605
    invoke-static {v3, v2, v6, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 608
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 610
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    return-object v1
.end method
