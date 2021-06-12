.class public Lcom/mz/common/Flip3dAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private e:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    iput p1, p0, Lcom/mz/common/Flip3dAnimation;->a:F

    .line 17
    iput p2, p0, Lcom/mz/common/Flip3dAnimation;->b:F

    .line 18
    iput p3, p0, Lcom/mz/common/Flip3dAnimation;->c:F

    .line 19
    iput p4, p0, Lcom/mz/common/Flip3dAnimation;->d:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 32
    iget v0, p0, Lcom/mz/common/Flip3dAnimation;->a:F

    .line 33
    iget v1, p0, Lcom/mz/common/Flip3dAnimation;->b:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 35
    iget p1, p0, Lcom/mz/common/Flip3dAnimation;->c:F

    .line 36
    iget v1, p0, Lcom/mz/common/Flip3dAnimation;->d:F

    .line 37
    iget-object v2, p0, Lcom/mz/common/Flip3dAnimation;->e:Landroid/graphics/Camera;

    .line 39
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 43
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 45
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float v0, p1

    neg-float v2, v1

    .line 48
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 49
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 26
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/mz/common/Flip3dAnimation;->e:Landroid/graphics/Camera;

    return-void
.end method
