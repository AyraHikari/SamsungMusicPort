.class public Landroid/support/transition/ChangeImageTransform;
.super Landroid/support/transition/Transition;
.source "SourceFile"


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeImageTransform:matrix"

    const-string v1, "android:changeImageTransform:bounds"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/support/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroid/support/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 61
    new-instance v0, Landroid/support/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 6

    .line 82
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 83
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 98
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeImageTransform:bounds"

    .line 99
    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android:changeImageTransform:matrix"

    .line 100
    invoke-static {v1}, Landroid/support/transition/ChangeImageTransform;->copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 5

    .line 216
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 218
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v3, v2, v1

    .line 221
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float v4, p0, v0

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v1, v1, v3

    mul-float v0, v0, v3

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 229
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-float/2addr p0, v0

    div-float/2addr p0, v1

    .line 230
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 232
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 233
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v2

    int-to-float p0, p0

    .line 234
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private static copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 2

    .line 188
    sget-object v0, Landroid/support/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    .line 192
    :pswitch_0
    invoke-static {p0}, Landroid/support/transition/ChangeImageTransform;->centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 190
    :pswitch_1
    invoke-static {p0}, Landroid/support/transition/ChangeImageTransform;->fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 183
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v1, Landroid/support/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Landroid/support/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 177
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v1, Landroid/support/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private static fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 4

    .line 203
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 207
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 205
    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v1
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeImageTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeImageTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 134
    :cond_0
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeImageTransform:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 135
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    if-nez v1, :cond_1

    goto :goto_3

    .line 140
    :cond_1
    iget-object p2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:matrix"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Matrix;

    .line 141
    iget-object v2, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeImageTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-nez p2, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    .line 144
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 146
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    return-object p1

    .line 150
    :cond_5
    iget-object p1, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    .line 151
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 152
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 153
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 155
    invoke-static {p1}, Landroid/support/transition/ImageViewUtils;->startAnimateTransform(Landroid/widget/ImageView;)V

    if-eqz v0, :cond_9

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    .line 162
    sget-object p2, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_7
    if-nez v2, :cond_8

    .line 165
    sget-object v2, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 167
    :cond_8
    sget-object p3, Landroid/support/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    invoke-virtual {p3, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0, p1, p2, v2}, Landroid/support/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    goto :goto_2

    .line 159
    :cond_9
    :goto_1
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 171
    :goto_2
    invoke-static {p1, p2}, Landroid/support/transition/ImageViewUtils;->reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V

    return-object p2

    :cond_a
    :goto_3
    return-object p1

    :cond_b
    :goto_4
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
