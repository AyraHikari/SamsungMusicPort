.class final Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$ICreatePlaylist;
.implements Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncImpl"
.end annotation


# instance fields
.field private final fragment:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

.field private ids:[J

.field private listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

.field private playlistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

    return-void
.end method


# virtual methods
.method public createPlaylist(Ljava/lang/String;[JLcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 2

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->ids:[J

    .line 147
    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->startTask$default(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;ZILjava/lang/Object;)V

    return-void
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 153
    iget-object v1, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const-string v3, "fragment.activity ?: return null"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 156
    move-object v4, v2

    check-cast v4, Landroid/content/ContentValues;

    const/4 v5, -0x1

    const-string v6, "context"

    .line 162
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {v3, v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isPlaylistNameExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "Playlist-CreatePlaylist"

    const-string v2, "create playlist failed duplicated local side"

    .line 163
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;

    const-wide/16 v4, -0x1

    const/16 v6, 0x106a

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;-><init>(JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 167
    :cond_1
    sget-object v6, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    move-object v8, v1

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v6, v8}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    .line 168
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 169
    iget-object v7, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const/4 v9, 0x2

    invoke-static {v1, v7, v2, v9, v2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->createPlaylist$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 170
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 171
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    .line 172
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_6

    const/16 v1, 0x106a

    if-eq v2, v1, :cond_5

    const/16 v1, 0x106c

    if-eq v2, v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "Playlist-CreatePlaylist"

    const-string v5, "create playlist failed. conflict"

    .line 191
    invoke-static {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_5
    const-string v1, "Playlist-CreatePlaylist"

    const-string v2, "create playlist failed duplicated server side"

    .line 187
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;

    const-wide/16 v4, -0x1

    const/16 v6, 0x106a

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;-><init>(JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 176
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getPlaylist()Lcom/samsung/android/app/music/list/playlist/Playlist;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistId()Ljava/lang/String;

    move-result-object v9

    .line 179
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v10

    .line 180
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateAdded(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 181
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 182
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x60

    const/16 v17, 0x0

    .line 177
    invoke-static/range {v9 .. v17}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v4, 0x1

    move-object v4, v1

    move v5, v2

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v5, :cond_a

    const-string v2, "Playlist-CreatePlaylist"

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create playlist failed server side. resultCode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v2, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isPlaylistNameExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v1, "Playlist-CreatePlaylist"

    const-string v2, "create playlist failed duplicated local side"

    .line 201
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;

    const-wide/16 v4, -0x1

    const/16 v6, 0x106a

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;-><init>(JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 207
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v2, 0x3e8

    int-to-long v9, v2

    div-long/2addr v4, v9

    const/4 v9, 0x0

    .line 209
    iget-object v10, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    .line 210
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 211
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x71

    const/16 v17, 0x0

    .line 208
    invoke-static/range {v9 .. v17}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    .line 215
    :cond_a
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b:Landroid/net/Uri;

    const-string v7, "MediaContents.Playlists.PRE_INSERT_CONTENT_URI"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    invoke-static {v3, v2, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 216
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_3

    :cond_c
    const-wide/16 v2, -0x1

    :goto_3
    if-nez v5, :cond_d

    const-wide/16 v9, 0x0

    cmp-long v4, v2, v9

    if-lez v4, :cond_d

    .line 218
    iget-object v4, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->ids:[J

    if-eqz v4, :cond_d

    .line 219
    new-instance v4, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;

    .line 222
    iget-object v11, v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->ids:[J

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v7, v4

    move-wide v9, v2

    .line 219
    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-array v6, v6, [Ljava/lang/Void;

    .line 223
    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 226
    :cond_d
    new-instance v4, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;

    invoke-direct {v4, v2, v3, v5, v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;-><init>(JIZ)V

    return-object v4

    :cond_e
    return-object v2
.end method

.method public final getIds()[J
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->ids:[J

    return-object v0
.end method

.method public final getListener()Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    return-object v0
.end method

.method public final getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Playlist-CreatePlaylist"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create playlist done. result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 233
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x106a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$Result;->getPlaylistId()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    return-void

    :cond_3
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask$DefaultImpls;->onPreExecute(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;)V

    return-void
.end method

.method public final setIds([J)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->ids:[J

    return-void
.end method

.method public final setListener(Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    return-void
.end method

.method public final setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    return-void
.end method
