.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;Landroid/animation/Animator;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$2;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$2;->a:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "HotArtistTransitions.AlphaScale"

    const-string v0, "onDisappear.onAnimationStart"

    .line 331
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$2;->a:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method
