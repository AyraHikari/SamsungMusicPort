.class public abstract Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/airbnb/lottie/value/LottieValueCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TA;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private e:F

.field private f:Lcom/airbnb/lottie/value/Keyframe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->c:Z

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    .line 32
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    return-void
.end method

.method private g()Lcom/airbnb/lottie/value/Keyframe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TK;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->f:Lcom/airbnb/lottie/value/Keyframe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->f:Lcom/airbnb/lottie/value/Keyframe;

    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/value/Keyframe;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->f:Lcom/airbnb/lottie/value/Keyframe;

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 70
    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->b()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 73
    iget v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/value/Keyframe;->a(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->f:Lcom/airbnb/lottie/value/Keyframe;

    return-object v0
.end method

.method private h()F
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->g()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->c()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private i()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->b()F

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract a(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->c:Z

    return-void
.end method

.method public a(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->i()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->i()F

    move-result p1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d()F

    move-result p1

    .line 50
    :cond_1
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-void

    .line 53
    :cond_2
    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->b()V

    return-void
.end method

.method public a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .param p1    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TA;>;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->b:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/value/LottieValueCallback;->a(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()F
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->g()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 96
    :cond_1
    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->b()F

    move-result v2

    sub-float/2addr v1, v2

    .line 97
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->b()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method d()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->c()F

    move-result v0

    :goto_0
    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->g()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->h()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->a(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->e:F

    return v0
.end method
