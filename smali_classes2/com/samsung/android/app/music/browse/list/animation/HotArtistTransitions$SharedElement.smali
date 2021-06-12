.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$SharedElement;
.super Landroid/support/transition/TransitionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedElement"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$SharedElement;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 77
    new-instance p1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ContentLayoutSlideUp;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ContentLayoutSlideUp;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$1;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$SharedElement;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 78
    new-instance p1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;

    invoke-direct {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeProfile;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$SharedElement;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-void
.end method
