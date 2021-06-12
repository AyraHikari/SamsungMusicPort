.class public Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->b(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Integer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 15
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 19
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 21
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v2, :cond_0

    .line 23
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v4, p1, Lcom/airbnb/lottie/value/Keyframe;->d:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->e:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->c()F

    move-result v9

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->f()F

    move-result v10

    move v8, p2

    .line 23
    invoke-virtual/range {v3 .. v10}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    return-object p1

    .line 30
    :cond_0
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/utils/GammaEvaluator;->a(FII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
