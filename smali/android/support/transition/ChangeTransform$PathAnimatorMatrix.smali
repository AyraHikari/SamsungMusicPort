.class Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 557
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 558
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 559
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 p2, 0x2

    aget p1, p1, p2

    iput p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 560
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 p2, 0x5

    aget p1, p1, p2

    iput p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 561
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method private setAnimationMatrix()V
    .locals 3

    .line 576
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 577
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 578
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 579
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 583
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .locals 1

    .line 570
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 571
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 572
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method setValues([F)V
    .locals 3

    .line 565
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method
