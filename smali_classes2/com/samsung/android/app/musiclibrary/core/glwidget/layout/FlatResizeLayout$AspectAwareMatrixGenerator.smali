.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AspectAwareMatrixGenerator"
.end annotation


# instance fields
.field private final mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .line 1203
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 1204
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 19

    move-object/from16 v0, p0

    .line 1209
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1210
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1212
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmapRatio()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    .line 1218
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v5

    div-float v1, v4, v1

    sub-float/2addr v4, v1

    mul-float v4, v4, v5

    sub-float v1, v5, v4

    mul-float v1, v1, v3

    mul-float v3, v3, v5

    goto :goto_0

    .line 1224
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v5

    mul-float v6, v5, v3

    sub-float/2addr v4, v1

    mul-float v4, v4, v5

    sub-float v1, v5, v4

    mul-float v3, v3, v1

    move v1, v6

    .line 1230
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    .line 1232
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotX()F

    move-result v4

    .line 1233
    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotY()F

    move-result v7

    .line 1234
    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotZ()F

    move-result v8

    .line 1235
    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v10

    add-float/2addr v10, v4

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v11

    add-float/2addr v11, v7

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v12

    add-float/2addr v12, v8

    invoke-static {v9, v2, v10, v11, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1236
    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v15

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotX()F

    move-result v16

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotY()F

    move-result v17

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotZ()F

    move-result v18

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1237
    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    neg-float v3, v3

    sub-float/2addr v3, v4

    neg-float v1, v1

    sub-float/2addr v1, v7

    neg-float v4, v8

    invoke-static {v9, v2, v3, v1, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_1

    .line 1239
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v7

    sub-float/2addr v7, v3

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 1240
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v1

    .line 1239
    invoke-static {v4, v2, v7, v3, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1242
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    invoke-static {v1, v2, v5, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1244
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;->mMatrix:[F

    return-object v1
.end method
