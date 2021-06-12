.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v1, p0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v2, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v2, 0x0

    .line 107
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 111
    sget-object v6, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    iget-object v7, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->getFragment()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v8, "fragment.activity!!"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v6

    const/16 v7, 0x106f

    const/16 v8, 0x106c

    const/16 v10, 0x44e

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_8

    .line 112
    iget-object v6, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v13

    const-string v6, "context"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v6, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v14

    const-string v6, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "server_track_seq_id"

    .line 114
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "play_order"

    .line 112
    invoke-static/range {v13 .. v18}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    move-object v13, v6

    check-cast v13, Ljava/io/Closeable;

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v14, v13

    check-cast v14, Landroid/database/Cursor;

    if-nez v6, :cond_2

    goto :goto_0

    .line 209
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    .line 117
    :cond_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 214
    :goto_0
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-static {v13, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 120
    sget-object v2, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    iget-object v6, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v6

    const-string v13, "context"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 123
    iget-object v6, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v6

    const-string v13, "context"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v13}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J

    move-result-wide v13

    invoke-static {v6, v13, v14}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getLastSyncedDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 124
    new-instance v13, Lcom/samsung/android/app/music/list/playlist/ReorderTracksRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {v13, v0}, Lcom/samsung/android/app/music/list/playlist/ReorderTracksRequest;-><init>(Ljava/util/List;)V

    .line 121
    invoke-interface {v2, v9, v6, v13}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->reorderPlaylistTracks(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/ReorderTracksRequest;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 125
    invoke-static {v0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {v0}, Lretrofit2/Response;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    invoke-virtual {v0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v2, "it.body()!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_6

    if-eq v2, v10, :cond_5

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_5

    const-string v0, "Playlist-ReorderTracks"

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reorderPlaylistTracks : Unknown result Code "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-static {v12, v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "Playlist-ReorderTracks"

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reorderPlaylistTracks result is not OK["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->modifiedState(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v12, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)J

    move-result-wide v4

    .line 150
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->modifiedState(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)I

    move-result v11

    goto :goto_1

    .line 133
    :cond_6
    iget-object v6, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v13

    const-string v6, "context"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 134
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 135
    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x19c

    const/16 v25, 0x0

    .line 132
    invoke-static/range {v13 .. v25}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    goto :goto_1

    .line 161
    :cond_7
    invoke-virtual {v0}, Lretrofit2/Response;->a()I

    move-result v2

    :goto_1
    move v14, v11

    move-object v11, v3

    move-wide v3, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 198
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v13, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/4 v2, -0x1

    move-object v11, v3

    move-wide v3, v4

    const/4 v14, 0x0

    :goto_3
    if-eqz v2, :cond_9

    .line 168
    iget-object v0, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v15

    const-string v0, "context"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v0, 0x3e8

    int-to-long v7, v0

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x0

    .line 171
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x15c

    const/16 v27, 0x0

    .line 167
    invoke-static/range {v15 .. v27}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    :cond_9
    if-eq v2, v10, :cond_a

    const/16 v0, 0x106c

    if-eq v2, v0, :cond_a

    const/16 v0, 0x106f

    if-eq v2, v0, :cond_a

    goto :goto_4

    .line 180
    :cond_a
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    iget-object v2, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v2, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl$onListActionModeFinished$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;->access$getPlaylistId$p(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$SyncImpl;)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x0

    move-object v5, v0

    move-wide v12, v3

    .line 181
    invoke-static/range {v5 .. v16}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    .line 188
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->execute()V

    :goto_4
    return-void
.end method
