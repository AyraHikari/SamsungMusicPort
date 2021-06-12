.class public Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final b:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->a:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 16
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->b:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->a:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 21
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->b:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->a()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-object v0
.end method
