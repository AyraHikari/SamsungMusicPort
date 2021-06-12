.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/graphics/PointF;

.field private final d:[F

.field private e:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

.field private f:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->c:Landroid/graphics/PointF;

    const/4 p1, 0x2

    .line 13
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->d:[F

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->b(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 23
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->a()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25
    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz p1, :cond_1

    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v3, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->d:F

    iget-object p1, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->e:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->a:Ljava/lang/Object;

    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->c()F

    move-result v7

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->f()F

    move-result v9

    move v8, p2

    .line 29
    invoke-virtual/range {v2 .. v9}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    return-object p1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->e:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    .line 38
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->f:Landroid/graphics/PathMeasure;

    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->e:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->f:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->d:[F

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->c:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->d:[F

    aget p2, p2, v2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->d:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 44
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->c:Landroid/graphics/PointF;

    return-object p1
.end method
