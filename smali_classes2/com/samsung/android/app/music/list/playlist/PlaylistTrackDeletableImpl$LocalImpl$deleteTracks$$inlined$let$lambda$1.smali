.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->deleteTracks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ids$inlined:[J

.field final synthetic $playlistId$inlined:J

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;[JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$ids$inlined:[J

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$playlistId$inlined:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;->access$getFragment$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$ids$inlined:[J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-wide v2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$playlistId$inlined:J

    const-wide/16 v5, -0xe

    const-wide/16 v7, -0xd

    const-wide/16 v9, -0xc

    const/4 v11, 0x1

    cmp-long v12, v2, v9

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v12, v2, v7

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v2, v2, v5

    if-nez v2, :cond_6

    .line 78
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 79
    iget-wide v12, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$playlistId$inlined:J

    const/4 v3, 0x0

    cmp-long v9, v12, v9

    if-nez v9, :cond_3

    const-string v5, "most_played"

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 80
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_3
    cmp-long v7, v12, v7

    if-nez v7, :cond_4

    const-string v5, "recently_played"

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    cmp-long v3, v12, v5

    if-nez v3, :cond_5

    const-string v3, "recently_added_remove_flag"

    .line 87
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 86
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :goto_1
    const-string v3, "context"

    .line 92
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v5, "MediaContents.Tracks.CONTENT_URI"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {v0, v3, v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_6
    const-string v2, "context"

    .line 98
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-wide v2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$playlistId$inlined:J

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {v0, v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 102
    sget-object v1, Lcom/samsung/android/app/music/main/LocalSyncTask;->a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;->a(I)V

    :goto_2
    const-string v1, "Playlist-RemovePlaylistTracks"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove tracks done. playlistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl$deleteTracks$$inlined$let$lambda$1;->$playlistId$inlined:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", numRemoved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
