.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;->b(Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->c:Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->a:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
