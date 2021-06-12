.class Landroid/support/transition/Visibility$DisappearListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 488
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 489
    iput-object p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 490
    iput p2, p0, Landroid/support/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 492
    iput-boolean p3, p0, Landroid/support/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    const/4 p1, 0x1

    .line 494
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    .line 559
    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 562
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 567
    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private suppressLayout(Z)V
    .locals 1

    .line 571
    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 572
    iput-boolean p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 573
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 517
    iput-boolean p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 530
    invoke-direct {p0}, Landroid/support/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 501
    iget-boolean p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez p1, :cond_0

    .line 502
    iget-object p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {p1, v0}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 510
    iget-boolean p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez p1, :cond_0

    .line 511
    iget-object p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 540
    invoke-direct {p0}, Landroid/support/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 541
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 550
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 555
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
