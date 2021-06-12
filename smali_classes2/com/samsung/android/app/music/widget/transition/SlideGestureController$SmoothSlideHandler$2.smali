.class Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

.field final synthetic b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 672
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 673
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;F)V

    .line 674
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)I

    return-void
.end method
