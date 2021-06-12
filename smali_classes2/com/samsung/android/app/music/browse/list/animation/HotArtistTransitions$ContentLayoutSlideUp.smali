.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ContentLayoutSlideUp;
.super Landroid/support/transition/TransitionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentLayoutSlideUp"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 178
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 179
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 180
    new-instance v1, Landroid/support/transition/Slide;

    invoke-direct {v1}, Landroid/support/transition/Slide;-><init>()V

    .line 181
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    const-string v2, "listContainer"

    .line 182
    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ContentLayoutSlideUp;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$1;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ContentLayoutSlideUp;-><init>()V

    return-void
.end method
