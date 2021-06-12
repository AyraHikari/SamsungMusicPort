.class final Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;
.implements Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncImpl"
.end annotation


# instance fields
.field private final fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

.field private listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

.field private playlistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    .line 116
    iget-object v1, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "fragment.activity ?: return null"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    iget-object v3, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v4, "key_playlist_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v3, -0x1

    const-string v4, "context"

    .line 121
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v14, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_8

    .line 124
    sget-object v5, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 128
    iget-object v5, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 129
    :cond_1
    invoke-static {v2, v14, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getLastSyncedDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->makeRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;

    move-result-object v4

    .line 125
    invoke-interface {v1, v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->updatePlaylist(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 131
    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 132
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v3, "it.body()!!"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;

    .line 134
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;->getResultCode()I

    move-result v12

    if-eqz v12, :cond_4

    const/16 v1, 0x106a

    if-eq v12, v1, :cond_3

    move v3, v12

    move-wide/from16 v22, v14

    const/16 v21, 0x0

    goto :goto_1

    .line 150
    :cond_3
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    invoke-direct {v2, v14, v15, v1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;-><init>(JI)V

    return-object v2

    .line 138
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;

    const/4 v6, 0x0

    .line 141
    iget-object v7, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    const/4 v8, 0x0

    .line 142
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 143
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 144
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x314

    const/16 v19, 0x0

    move-object v3, v2

    move-wide v4, v14

    move/from16 v20, v12

    move-object v12, v1

    const/16 v21, 0x0

    move/from16 v13, v17

    move-wide/from16 v22, v14

    move/from16 v14, v18

    move-object/from16 v15, v19

    .line 139
    invoke-static/range {v3 .. v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/16 v12, -0x64

    const/4 v1, 0x0

    const/16 v20, -0x64

    :goto_0
    move v13, v1

    move/from16 v3, v20

    goto :goto_1

    :cond_6
    move-wide/from16 v22, v14

    const/16 v21, 0x0

    .line 154
    invoke-virtual {v1}, Lretrofit2/Response;->a()I

    move-result v1

    move v3, v1

    const/4 v13, 0x0

    :goto_1
    if-eqz v3, :cond_7

    const-string v1, "Playlist-EditPlaylist"

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename playlist failed by server. resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v1, v13

    move v13, v3

    goto :goto_2

    :cond_8
    move-wide/from16 v22, v14

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v13, -0x1

    :goto_2
    if-eqz v13, :cond_9

    const/4 v6, 0x0

    .line 166
    iget-object v7, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    const/4 v8, 0x0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v9, v5

    div-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    .line 168
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x354

    const/4 v15, 0x0

    move-object v3, v2

    move-wide/from16 v4, v22

    .line 164
    invoke-static/range {v3 .. v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    const/4 v13, 0x0

    :cond_9
    const-string v2, "Playlist-EditPlaylist"

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename playlist done. resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isSynced="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    move-wide/from16 v2, v22

    invoke-direct {v1, v2, v3, v13}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;-><init>(JI)V

    return-object v1

    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public editPlaylistName(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 3

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->startTask$default(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getListener()Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    return-object v0
.end method

.method public final getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 181
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->getResultCode()I

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

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->getPlaylistId()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    return-void

    :cond_3
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask$DefaultImpls;->onPreExecute(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;)V

    return-void
.end method

.method public final setListener(Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->listener:Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    return-void
.end method

.method public final setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$SyncImpl;->playlistName:Ljava/lang/String;

    return-void
.end method
