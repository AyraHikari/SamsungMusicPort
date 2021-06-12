.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;
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
    name = "SyncImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;,
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;
    }
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

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->ids:[J

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

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

    .line 123
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 124
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "fragment.activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "fragment.activity!!.applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 122
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->favoriteManager:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 119
    check-cast p2, [J

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V

    return-void
.end method


# virtual methods
.method public deleteTracks()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->favoriteManager:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(I)[J

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->ids:[J

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;-><init>(Ljava/lang/ref/WeakReference;[J)V

    .line 137
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Lkotlin/Unit;

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 140
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;->ids:[J

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;-><init>(Ljava/lang/ref/WeakReference;[J)V

    .line 141
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Lkotlin/Unit;

    .line 140
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method
