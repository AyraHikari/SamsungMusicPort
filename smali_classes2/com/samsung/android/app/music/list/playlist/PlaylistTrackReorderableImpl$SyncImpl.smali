.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncImpl"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private isItemMoved:Z

.field private final playlistId:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "fragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->context:Landroid/content/Context;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "key_playlist_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->playlistId:J

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->playlistId:J

    return-wide v0
.end method

.method public static final synthetic access$setContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;Landroid/content/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getFragment()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method public moveItem(II)V
    .locals 3

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->isItemMoved:Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->f(I)I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->f(I)I

    move-result p2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->playlistId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(Landroid/content/Context;JII)Z

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_1
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_1
    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 96
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->isItemMoved:Z

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->context:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->playlistId:J

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isModified(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->context:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->playlistId:J

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 100
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->isItemMoved:Z

    return-void
.end method
