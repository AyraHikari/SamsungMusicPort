.class public Lcom/airbnb/lottie/animation/content/StrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "SourceFile"


# instance fields
.field private final b:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeStroke;)V
    .locals 11

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->h()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->i()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->c()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->d()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->e()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->f()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 29
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->b:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 30
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->b()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 32
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
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

    .line 51
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->a(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 52
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->x:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->e:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->b:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->d:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/StrokeContent;->c:Ljava/lang/String;

    return-object v0
.end method
