.class public Lcom/airbnb/lottie/model/content/Repeater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final c:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final d:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Repeater;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Repeater;->b:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 22
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Repeater;->c:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 23
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/Repeater;->d:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 43
    new-instance v0, Lcom/airbnb/lottie/animation/content/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/RepeaterContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/Repeater;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->b:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->c:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->d:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    return-object v0
.end method
