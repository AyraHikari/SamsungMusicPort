.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->h(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->safeNotifyDataSetChanged()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    .line 251
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->g(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 252
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->safeNotifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
