.class final Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

.field final synthetic c:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    iput-object p3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;->c:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 710
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 711
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;->c:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(I)V

    .line 712
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    return-void

    .line 710
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
