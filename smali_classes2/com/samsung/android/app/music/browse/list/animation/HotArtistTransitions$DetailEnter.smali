.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$DetailEnter;
.super Landroid/support/transition/TransitionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailEnter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeBlur;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$DetailEnter;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeToolbar;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeToolbar;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$DetailEnter;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-void
.end method
