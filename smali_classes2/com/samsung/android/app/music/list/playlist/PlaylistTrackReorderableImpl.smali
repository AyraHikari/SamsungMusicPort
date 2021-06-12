.class public final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;,
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;
    }
.end annotation


# instance fields
.field private final impl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isUserPlaylist(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;->impl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 3

    const-string v0, "Playlist-ReorderTracks"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveItem(from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") impl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;->impl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;->impl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;->moveItem(II)V

    return-void
.end method
