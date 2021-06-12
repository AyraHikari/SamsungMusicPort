.class Lcom/samsung/android/app/music/list/local/QueueFragment$9;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b(J)V

    .line 758
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(I)V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 731
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 732
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 737
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz p1, :cond_3

    .line 738
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    .line 744
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Lcom/samsung/android/app/music/list/local/QueueFragment;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "UiList"

    const-string p2, "onExtrasChanged() : list is not changed"

    .line 745
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 749
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d(Lcom/samsung/android/app/music/list/local/QueueFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result p2

    .line 750
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result p1

    invoke-static {v0, p2, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;II)V

    .line 751
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    .line 752
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    .line 751
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a(II)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "UiList"

    const-string p2, "onExtrasChanged() : Cursor is closed"

    .line 739
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 665
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;I)I

    .line 666
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz p1, :cond_2

    .line 667
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d(Lcom/samsung/android/app/music/list/local/QueueFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v0

    .line 673
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result p1

    .line 674
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;II)V

    .line 676
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Lcom/samsung/android/app/music/list/local/QueueFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->b(J)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-UiList"

    const-string v0, "onMetadataChanged cursor is null or empty. "

    .line 668
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Lcom/samsung/android/app/music/list/local/QueueFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(I)V

    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 696
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 697
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    if-nez p2, :cond_1

    .line 699
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;I)I

    goto :goto_0

    .line 701
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    const-string v0, "extra.list_position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;I)I

    .line 702
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;Landroid/os/Bundle;)Z

    .line 704
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v3, "SMUSIC-UiList"

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueueChanged count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 708
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d(Lcom/samsung/android/app/music/list/local/QueueFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v1

    .line 709
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v2, v1, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;II)V

    .line 710
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    .line 711
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    .line 710
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a(II)V

    .line 712
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->e(Lcom/samsung/android/app/music/list/local/QueueFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->F()Z

    move-result p1

    if-nez p1, :cond_4

    .line 713
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Lcom/samsung/android/app/music/list/local/QueueFragment;I)V

    goto :goto_2

    .line 716
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z

    .line 717
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z

    .line 720
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 722
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->e(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V

    .line 723
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    xor-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V

    .line 725
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Z)V

    .line 726
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d()V

    return-void
.end method
