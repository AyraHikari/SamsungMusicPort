.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;
.super Landroid/support/transition/TransitionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Thumbnail"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    .line 196
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 197
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 198
    new-instance v1, Landroid/support/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/support/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 199
    new-instance v1, Landroid/support/transition/ChangeClipBounds;

    invoke-direct {v1}, Landroid/support/transition/ChangeClipBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 200
    new-instance v1, Landroid/support/transition/ChangeTransform;

    invoke-direct {v1}, Landroid/support/transition/ChangeTransform;-><init>()V

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v1, v2}, Landroid/support/transition/ChangeTransform;->setReparentWithOverlay(Z)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 203
    new-instance v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ChangeImageAlpha;

    invoke-direct {v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ChangeImageAlpha;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 204
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    const-wide/16 v1, 0x190

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    const-string v3, "thumbnail"

    .line 207
    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;

    const-string v3, "listContainer"

    .line 208
    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;

    .line 209
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 211
    new-instance v0, Landroid/support/transition/Fade;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/support/transition/Fade;-><init>(I)V

    const-wide/16 v3, 0x96

    .line 212
    invoke-virtual {v0, v3, v4}, Landroid/support/transition/Fade;->setStartDelay(J)Landroid/support/transition/Transition;

    const-string v3, "thumbnail"

    .line 213
    invoke-virtual {v0, v3}, Landroid/support/transition/Fade;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Fade;->setDuration(J)Landroid/support/transition/Transition;

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 217
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method
