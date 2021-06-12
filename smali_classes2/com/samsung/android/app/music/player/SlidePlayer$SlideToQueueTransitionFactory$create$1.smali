.class public final Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory;->a()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 437
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 446
    sget-object p2, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    new-instance p3, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1$createAnimator$1;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1$createAnimator$1;-><init>(Landroid/view/ViewGroup;)V

    check-cast p3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/player/SlidePlayer$Companion;->a(Lcom/samsung/android/app/music/player/SlidePlayer$Companion;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    return-object p1
.end method
