.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V

    .line 290
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->g(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_2

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f()V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g()V

    .line 296
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    return-void
.end method
