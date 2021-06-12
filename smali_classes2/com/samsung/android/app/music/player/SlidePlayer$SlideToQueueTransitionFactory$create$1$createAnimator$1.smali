.class final Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1$createAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1$createAnimator$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1$createAnimator$1;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const-string v1, "FullPlayer"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ani"

    .line 448
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    mul-float v1, v1, p1

    sub-float/2addr v2, v1

    .line 451
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 448
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
