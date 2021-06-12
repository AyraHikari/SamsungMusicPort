.class public Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->b(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

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

    .line 17
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 22
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/graphics/PointF;

    .line 24
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v2, p1, Lcom/airbnb/lottie/value/Keyframe;->d:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->e:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->c()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->f()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->c:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    mul-float p2, p2, v3

    add-float/2addr v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->c:Landroid/graphics/PointF;

    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
