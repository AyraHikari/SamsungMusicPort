.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;
.super Landroid/support/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionAdapter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
