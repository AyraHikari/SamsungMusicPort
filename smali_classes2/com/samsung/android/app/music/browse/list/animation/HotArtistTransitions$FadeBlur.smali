.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;
.super Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FadeBlur"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;-><init>()V

    const-string v0, "blurFade"

    .line 144
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    const-string v0, "hueFade"

    .line 145
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    const-wide/16 v0, 0x190

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;->setDuration(J)Landroid/support/transition/Transition;

    .line 147
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    return-void
.end method


# virtual methods
.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
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

    const-string p1, "alpha"

    const/4 p2, 0x2

    .line 155
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 161
    iget-object p2, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object p2, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
