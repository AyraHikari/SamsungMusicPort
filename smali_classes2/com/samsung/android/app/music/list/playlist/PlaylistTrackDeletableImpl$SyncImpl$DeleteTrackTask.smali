.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeleteTrackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        "Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final ids:[J

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;>;[J)V"
        }
    .end annotation

    const-string v0, "weakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->ids:[J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;[JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 149
    check-cast p2, [J

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;-><init>(Ljava/lang/ref/WeakReference;[J)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lkotlin/Unit;)Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 158
    iget-object v2, v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    const-string v4, "weakReference.get() ?: return null"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v5, "fg.activity ?: return null"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 162
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v7, "key_playlist_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v6, "context"

    .line 163
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v14, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 164
    iget-object v6, v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->ids:[J

    const/4 v12, 0x0

    if-eqz v6, :cond_1

    :goto_0
    move-object v2, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v12}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(I)[J

    move-result-object v6

    goto :goto_0

    .line 165
    :goto_1
    invoke-static {v5, v14, v15, v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistTrackSeqIds(Landroid/content/Context;J[J)Ljava/util/ArrayList;

    move-result-object v6

    const/16 v7, -0x64

    const/4 v11, 0x1

    if-nez v6, :cond_2

    const-string v1, "Playlist-RemovePlaylistTracks"

    const-string v2, "seqIds is null. maybe removed from db already."

    .line 167
    invoke-static {v11, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    invoke-direct {v1, v7, v12}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;-><init>(IZ)V

    return-object v1

    .line 171
    :cond_2
    move-object/from16 v25, v3

    check-cast v25, Ljava/lang/String;

    const-wide/16 v26, 0x0

    const/16 v10, 0x106c

    const/16 v9, 0x29

    if-eqz v13, :cond_9

    .line 175
    sget-object v8, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v8, v4}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 176
    sget-object v4, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 178
    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Iterable;

    const-string v6, "@"

    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    const/16 v24, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-static {v5, v14, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getLastSyncedDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-interface {v4, v13, v6, v8}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->deletePlaylistTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 180
    invoke-static {v4}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 181
    invoke-virtual {v4}, Lretrofit2/Response;->d()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 182
    invoke-virtual {v4}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v6, "it.body()!!"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;

    .line 183
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;->getResultCode()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v10, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 207
    :cond_4
    invoke-static {v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-static {v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)J

    move-result-wide v16

    .line 209
    invoke-static {v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->modifiedState(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)I

    move-result v4

    move-object/from16 v25, v6

    move-wide/from16 v26, v16

    :goto_2
    move v7, v8

    move-object/from16 v31, v13

    move-wide/from16 v32, v14

    const/16 v3, 0x29

    const/16 v29, 0x1

    const/16 v30, 0x0

    goto/16 :goto_4

    .line 188
    :cond_5
    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->a(J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "MediaContents.Playlists.\u2026                        )"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id IN ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3f

    const/16 v24, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v24}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-static {v5, v6, v7, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 194
    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    array-length v7, v2

    if-ne v6, v7, :cond_7

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 197
    invoke-static {v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 198
    invoke-static {v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x19c

    const/16 v23, 0x0

    move-object v6, v5

    move/from16 v24, v8

    move-wide v7, v14

    const/16 v3, 0x29

    move-object v9, v10

    move-object/from16 v10, v16

    const/16 v29, 0x1

    move-object/from16 v11, v17

    const/16 v30, 0x0

    move-object/from16 v12, v18

    move-object/from16 v31, v13

    move-object v13, v4

    move-wide/from16 v32, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move-object/from16 v18, v23

    .line 195
    invoke-static/range {v6 .. v18}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move/from16 v7, v24

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v31, v13

    move-wide/from16 v32, v14

    const/16 v3, 0x29

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/4 v4, 0x0

    const/16 v7, -0x64

    goto :goto_3

    :cond_8
    move-object/from16 v31, v13

    move-wide/from16 v32, v14

    const/16 v3, 0x29

    const/16 v29, 0x1

    const/16 v30, 0x0

    .line 213
    invoke-virtual {v4}, Lretrofit2/Response;->a()I

    move-result v7

    const/4 v4, 0x0

    :goto_3
    const/4 v12, 0x0

    :goto_4
    move/from16 v28, v4

    move v4, v7

    move v15, v12

    goto :goto_5

    :cond_9
    move-object/from16 v31, v13

    move-wide/from16 v32, v14

    const/16 v3, 0x29

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/4 v4, -0x1

    const/4 v15, 0x0

    const/16 v28, 0x0

    :goto_5
    if-eqz v4, :cond_c

    .line 220
    invoke-static/range {v32 .. v33}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->a(J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "MediaContents.Playlists.\u2026getContentUri(playlistId)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3f

    const/16 v24, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v24}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 219
    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 224
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    array-length v2, v2

    if-ne v1, v2, :cond_c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v6, v3

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    .line 229
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x15c

    const/16 v18, 0x0

    move-object v6, v5

    move-wide/from16 v7, v32

    move v2, v15

    move-object v15, v1

    .line 225
    invoke-static/range {v6 .. v18}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    const/16 v1, 0x106c

    if-ne v4, v1, :cond_b

    .line 234
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    invoke-direct {v1, v5}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v18, 0xa

    const/16 v19, 0x0

    move-object v8, v1

    move-wide/from16 v9, v32

    move-object/from16 v12, v31

    move-object/from16 v14, v25

    move-wide/from16 v15, v26

    move/from16 v17, v28

    .line 235
    invoke-static/range {v8 .. v19}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    .line 242
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->execute()V

    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    move v2, v15

    .line 249
    :goto_6
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;-><init>(IZ)V

    return-object v1

    :cond_d
    move-object v1, v3

    return-object v1

    :cond_e
    move-object v1, v3

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->doInBackground([Lkotlin/Unit;)Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    move-result-object p1

    return-object p1
.end method

.method public final getWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;>;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Playlist-RemovePlaylistTracks"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove tracks failed. resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->getResultCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Playlist-RemovePlaylistTracks"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove tracks success. isSynced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$DeleteTrackTask;->onPostExecute(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;)V

    return-void
.end method
