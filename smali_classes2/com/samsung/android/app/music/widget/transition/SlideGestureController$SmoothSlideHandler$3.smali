.class Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;
.source "SourceFile"


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

    .line 677
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 680
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;F)V

    .line 681
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Z)Z

    .line 682
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 683
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 684
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 685
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 686
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 687
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated frames : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diff rate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    .line 688
    invoke-static {v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;->b:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-static {v2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->d(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
