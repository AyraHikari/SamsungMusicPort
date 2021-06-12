.class public Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        "Lcom/airbnb/lottie/model/DocumentData;",
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
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->b()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;
    .locals 2

    .line 16
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
