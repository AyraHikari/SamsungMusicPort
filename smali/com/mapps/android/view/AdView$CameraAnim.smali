.class Lcom/mapps/android/view/AdView$CameraAnim;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraAnim"
.end annotation


# instance fields
.field cx:F

.field cy:F

.field private mCamera:Landroid/graphics/Camera;

.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 2540
    iput-object p1, p0, Lcom/mapps/android/view/AdView$CameraAnim;->this$0:Lcom/mapps/android/view/AdView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float p1, p1, v0

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float/2addr p1, v0

    .line 2557
    iget v0, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cx:F

    .line 2558
    iget v1, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cy:F

    .line 2559
    iget-object v2, p0, Lcom/mapps/android/view/AdView$CameraAnim;->mCamera:Landroid/graphics/Camera;

    .line 2561
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 2562
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 2564
    invoke-virtual {v2, p1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 2565
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 2566
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float p1, v0

    neg-float v2, v1

    .line 2568
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2569
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 2545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2546
    new-instance p3, Landroid/graphics/Camera;

    invoke-direct {p3}, Landroid/graphics/Camera;-><init>()V

    iput-object p3, p0, Lcom/mapps/android/view/AdView$CameraAnim;->mCamera:Landroid/graphics/Camera;

    .line 2547
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cx:F

    .line 2548
    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    iput p1, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cy:F

    const-wide/16 p1, 0x1f4

    .line 2549
    invoke-virtual {p0, p1, p2}, Lcom/mapps/android/view/AdView$CameraAnim;->setDuration(J)V

    .line 2550
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdView$CameraAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
