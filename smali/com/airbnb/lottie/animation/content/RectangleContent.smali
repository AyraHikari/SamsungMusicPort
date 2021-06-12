.class public Lcom/airbnb/lottie/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/RectF;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/airbnb/lottie/LottieDrawable;

.field private final e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/airbnb/lottie/animation/content/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    .line 35
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->c:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->d:Lcom/airbnb/lottie/LottieDrawable;

    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->d()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->c()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->b()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 42
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 46
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 47
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->i:Z

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->d:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/RectangleContent;->c()V

    return-void
.end method

.method public a(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->a(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 0
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 64
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 65
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 66
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 67
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->c()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 68
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->h:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->h:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 14

    .line 75
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->i:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->f:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 82
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 83
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    .line 84
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->g:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 85
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v6, v3, v5

    if-lez v6, :cond_2

    move v3, v5

    .line 91
    :cond_2
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 93
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    iget v8, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    sub-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    cmpl-float v8, v3, v4

    if-lez v8, :cond_3

    .line 98
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v1

    mul-float v11, v3, v2

    sub-float/2addr v10, v11

    iget v12, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v0

    sub-float/2addr v12, v11

    iget v11, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v1

    iget v13, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v4, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 105
    :cond_3
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    add-float/2addr v9, v3

    iget v10, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_4

    .line 108
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    iget v10, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    mul-float v11, v3, v2

    sub-float/2addr v10, v11

    iget v12, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v1

    add-float/2addr v12, v11

    iget v11, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v4, v9, v10, v12, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    invoke-virtual {v4, v9, v7, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 115
    :cond_4
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    iget v10, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    add-float/2addr v10, v3

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_5

    .line 118
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    iget v10, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    iget v11, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v1

    mul-float v12, v3, v2

    add-float/2addr v11, v12

    iget v13, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v0

    add-float/2addr v13, v12

    invoke-virtual {v4, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v4, v9, v10, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 125
    :cond_5
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v1

    sub-float/2addr v9, v3

    iget v10, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_6

    .line 128
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v1

    mul-float v3, v3, v2

    sub-float/2addr v8, v3

    iget v2, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    iget v9, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v1

    iget v1, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    add-float/2addr v1, v3

    invoke-virtual {v4, v8, v2, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->b:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 136
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->h:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/Utils;->a(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->i:Z

    .line 139
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->a:Landroid/graphics/Path;

    return-object v0
.end method
