.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalImpl"
.end annotation


# instance fields
.field private final favoriteManager:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private final fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final ids:[J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;[J)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->ids:[J

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p2, "key_playlist_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "fragment.activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    .line 53
    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->favoriteManager:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 49
    check-cast p2, [J

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method


# virtual methods
.method public deleteTracks()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->favoriteManager:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(I)[J

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v4, v2, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->ids:[J

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(I)[J

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_6

    .line 66
    array-length v6, v2

    if-nez v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    .line 70
    :cond_4
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;[JJ)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 110
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v0, "Playlist-RemovePlaylistTracks"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ids\' count is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
