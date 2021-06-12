.class public Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->b(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Float;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 15
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v2, p1, Lcom/airbnb/lottie/value/Keyframe;->d:F

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    iget-object v5, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->c()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->f()F

    move-result v8

    move v6, p2

    .line 21
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->a(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
