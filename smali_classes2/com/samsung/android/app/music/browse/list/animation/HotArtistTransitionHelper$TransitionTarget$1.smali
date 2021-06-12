.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;Landroid/view/View;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)I

    const-string v0, "HotArtistTransitionHelper.Target"

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPostponedEnterTransitionAfterDependencyViewReady. remain - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    .line 568
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", visible - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", alpha - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->a:Landroid/view/View;

    .line 569
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", view - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "startPostponedEnterTransitionAfterDependencyViewReady. transition started"

    .line 571
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    :cond_0
    return-void
.end method
