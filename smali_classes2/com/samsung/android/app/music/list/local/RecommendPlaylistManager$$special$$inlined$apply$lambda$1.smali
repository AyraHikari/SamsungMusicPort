.class public final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0xfa

    const v4, 0x3f933333    # 1.15f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 114
    invoke-static {v1, v5, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 122
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/widget/ImageView;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 121
    invoke-static {v6, v4, v5, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    .line 128
    new-array v3, v3, [Landroid/animation/Animator;

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v3, v0

    const/4 v1, 0x1

    check-cast v2, Landroid/animation/Animator;

    aput-object v2, v3, v1

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 129
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
