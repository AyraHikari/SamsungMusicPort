.class final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 10

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x3

    int-to-long p1, p1

    const/4 v0, 0x1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "UiList"

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " onItemClick() already handled, so return"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;Z)V

    .line 102
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v1, -0x8

    int-to-long v1, v1

    const/4 v3, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_3

    if-nez p2, :cond_2

    .line 104
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 105
    new-instance p1, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;

    move-object v5, p2

    check-cast v5, Landroid/app/Activity;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)[J

    move-result-object v6

    const/4 v7, 0x1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->c(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->d(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Z

    move-result v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZLjava/lang/String;Z)V

    new-array p2, v3, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_3
    const/16 v1, -0x9

    int-to-long v1, v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_6

    .line 107
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "activity!!.applicationContext"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    .line 108
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)[J

    move-result-object p3

    if-nez p3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 109
    :cond_5
    new-instance p4, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;

    check-cast p2, Landroid/support/v7/app/AppCompatActivity;

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p4, p2, v0, v0}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;ZZ)V

    check-cast p4, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 107
    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_8

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_7

    .line 113
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const-string p2, "Playlist-CreatePlaylist"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_b

    .line 114
    new-instance p2, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

    invoke-direct {p2}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;-><init>()V

    .line 115
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    check-cast p3, Landroid/support/v4/app/Fragment;

    const/16 p4, 0x7c0

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 116
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "key_ids"

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)[J

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string p3, "Playlist-CreatePlaylist"

    .line 117
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-gez p1, :cond_9

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;Z)V

    return-void

    .line 125
    :cond_9
    new-instance p1, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;

    if-nez p2, :cond_a

    .line 126
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    move-object v5, p2

    check-cast v5, Landroid/app/Activity;

    .line 128
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)[J

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, p1

    move-wide v6, p3

    .line 125
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZ)V

    .line 130
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v3, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_b
    :goto_0
    return-void
.end method
