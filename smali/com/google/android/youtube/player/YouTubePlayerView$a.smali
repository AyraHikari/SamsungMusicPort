.class final Lcom/google/android/youtube/player/YouTubePlayerView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/YouTubePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayerView;


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Lcom/google/android/youtube/player/YouTubePlayerView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {p2}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Lcom/google/android/youtube/player/YouTubePlayerView;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/youtube/player/internal/s;->e()V

    :cond_0
    return-void
.end method
