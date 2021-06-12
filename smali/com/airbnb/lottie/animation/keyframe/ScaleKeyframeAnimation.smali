.class public Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Lcom/airbnb/lottie/value/ScaleXY;",
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
            "Lcom/airbnb/lottie/value/ScaleXY;",
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

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->b(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/value/ScaleXY;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/value/ScaleXY;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/value/ScaleXY;"
        }
    .end annotation

    .line 15
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->a:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 19
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/airbnb/lottie/value/ScaleXY;

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v2, p1, Lcom/airbnb/lottie/value/Keyframe;->d:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->e:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->c()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->f()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/value/ScaleXY;

    if-eqz p1, :cond_0

    return-object p1

    .line 31
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 32
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->a()F

    move-result v1

    invoke-virtual {v9}, Lcom/airbnb/lottie/value/ScaleXY;->a()F

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->a(FFF)F

    move-result v1

    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->b()F

    move-result v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/value/ScaleXY;->b()F

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->a(FFF)F

    move-result p2

    invoke-direct {p1, v1, p2}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
