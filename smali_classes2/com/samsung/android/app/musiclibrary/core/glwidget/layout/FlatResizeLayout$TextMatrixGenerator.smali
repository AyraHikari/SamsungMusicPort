.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextMatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0

    .line 1048
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 5

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 1058
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1059
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v4

    invoke-static {v3, v1, v0, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    return-object v0
.end method
