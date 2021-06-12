.class public Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final a:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

.field private final b:Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

.field private final d:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final e:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final f:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 25
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    invoke-direct {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>()V

    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-direct {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>()V

    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    invoke-direct {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>()V

    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-direct {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>()V

    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-direct {v7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p6    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->a:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 41
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->b:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 42
    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->c:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 43
    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->d:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 44
    iput-object p5, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->e:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 45
    iput-object p6, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->f:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 46
    iput-object p7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->g:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->a:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->b:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->c:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->d:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->e:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->f:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->g:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public h()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .locals 1

    .line 78
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    return-object v0
.end method
