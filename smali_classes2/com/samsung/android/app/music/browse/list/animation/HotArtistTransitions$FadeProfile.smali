.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;
.super Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FadeProfile"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;-><init>()V

    const-string v0, "profile"

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    const-wide/16 v0, 0x96

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;->setStartDelay(J)Landroid/support/transition/Transition;

    const-wide/16 v0, 0x12c

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;->setDuration(J)Landroid/support/transition/Transition;

    .line 94
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    return-void
.end method


# virtual methods
.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p3, :cond_0

    .line 101
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string p1, "HotArtistTransitions.Profile"

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAnimator. view - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alpha - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "alpha"

    const/4 p2, 0x1

    .line 104
    new-array v0, p2, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 105
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, p2, v2

    .line 106
    invoke-static {v0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 107
    new-instance p2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;

    iget-object p3, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    .line 110
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
