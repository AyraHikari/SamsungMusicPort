.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->b:Z

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 132
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->b:Z

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->a:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->a:Landroid/view/View;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "HotArtistTransitions"

    const-string v0, "onAnimationStart. change layer type"

    .line 125
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->b:Z

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$FadeAnimatorListener;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
