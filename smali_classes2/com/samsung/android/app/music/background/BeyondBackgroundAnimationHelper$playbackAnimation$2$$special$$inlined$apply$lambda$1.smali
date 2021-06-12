.class final Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->invoke()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "it"

    .line 631
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->b(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->d(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(FILcom/samsung/android/app/music/background/BeyondBackgroundDrawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 635
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    :cond_0
    return-void

    .line 631
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
