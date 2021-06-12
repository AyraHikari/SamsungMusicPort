.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeToolbar;
.super Landroid/support/transition/Fade;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FadeToolbar"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroid/support/transition/Fade;-><init>()V

    .line 170
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeToolbar;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 171
    const-class v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeToolbar;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    return-void
.end method
