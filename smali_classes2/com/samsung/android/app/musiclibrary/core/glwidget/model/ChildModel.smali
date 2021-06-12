.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
    }
.end annotation


# instance fields
.field private mInheritAlpha:Z

.field private mOriginalModelSize:I

.field private mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;-><init>()V

    return-void
.end method

.method private injectParentToMatrixGenerator()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;->setParent(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mInheritAlpha:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getAlpha()F

    move-result v1

    mul-float v0, v0, v1

    return v0

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getScreenBoundsRect(I)Landroid/graphics/Rect;
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getBiggestSize()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mOriginalModelSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getY()F

    move-result v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 39
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getX()F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float v2, v2, v0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getWidth()F

    move-result v4

    div-float/2addr v4, v3

    mul-float v4, v4, v0

    sub-float v0, v1, v4

    float-to-int v0, v0

    sub-float v3, p1, v2

    float-to-int v3, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr p1, v2

    float-to-int p1, p1

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mScreenBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method public isVisible()Z
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInheritAlpha(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mInheritAlpha:Z

    return-void
.end method

.method public setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->injectParentToMatrixGenerator()V

    return-void
.end method

.method setOriginalModelSize(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mOriginalModelSize:I

    return-void
.end method

.method setParent(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->injectParentToMatrixGenerator()V

    return-void
.end method
