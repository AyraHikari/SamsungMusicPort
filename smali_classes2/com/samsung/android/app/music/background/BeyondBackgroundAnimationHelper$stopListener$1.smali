.class final Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$stopListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$stopListener$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    .line 739
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 744
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$stopListener$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void

    .line 739
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
