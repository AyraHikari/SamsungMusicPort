.class final Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeletePlaylistTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field private final conflictManager:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

.field private final ids:[J

.field private loadingProgress:Landroid/app/ProgressDialog;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
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
            "Landroid/app/Activity;",
            ">;[J)V"
        }
    .end annotation

    const-string v0, "weakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->ids:[J

    .line 58
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "weakReference.get()!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "weakReference.get()!!.applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->conflictManager:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    return-void
.end method

.method private final deleteLocalPlaylists(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v1, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 244
    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p2, "Playlist-DeletePlaylists"

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteLocalPlaylists() deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final deleteSyncPlaylists(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 29
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 138
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 140
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const/4 v5, -0x1

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    const-string v10, "syncPlaylistDataList.values"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .line 279
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    .line 151
    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v11, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->getSourceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->getUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    move-object v7, v8

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    xor-int/2addr v7, v9

    const/16 v10, 0x29

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_c

    sget-object v7, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    const-string v7, "context"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 158
    new-instance v7, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;

    check-cast v8, Ljava/util/List;

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;-><init>(Ljava/util/List;)V

    invoke-static {v1, v7, v13, v11, v13}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->deletePlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 159
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v5

    const/16 v7, -0x64

    if-eqz v5, :cond_a

    .line 160
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v5, "it.body()!!"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;->getResultCode()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v8, 0x106c

    if-eq v5, v8, :cond_3

    goto/16 :goto_3

    .line 178
    :cond_3
    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    .line 179
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 180
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 281
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;

    .line 181
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;->getPlaylistId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 183
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;->getPlaylistId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    check-cast v14, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;->getId()J

    move-result-wide v27

    .line 184
    iget-object v15, v0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->conflictManager:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 186
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 187
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;->getPlaylistId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 188
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;)J

    move-result-wide v22

    .line 189
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;)Ljava/lang/String;

    move-result-object v21

    .line 190
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->modifiedState(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;)I

    move-result v24

    const/16 v25, 0x8

    const/16 v26, 0x0

    move-wide/from16 v16, v27

    .line 184
    invoke-static/range {v15 .. v26}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    .line 192
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v1, "uri"

    .line 199
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v8

    check-cast v14, Ljava/lang/Iterable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3f

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v3, v4, v1, v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 203
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ne v12, v1, :cond_7

    .line 205
    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_2
    const/16 v5, -0x64

    goto :goto_5

    :cond_8
    const-string v1, "uri"

    .line 166
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v6

    check-cast v14, Ljava/lang/Iterable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3f

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v3, v4, v1, v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 171
    iget-object v2, v0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->ids:[J

    array-length v2, v2

    if-ne v1, v2, :cond_9

    .line 172
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v12, v1

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    move v12, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 212
    :cond_a
    invoke-virtual {v1}, Lretrofit2/Response;->a()I

    move-result v1

    move v5, v1

    :cond_b
    :goto_3
    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v5, :cond_d

    const-string v7, "Playlist-DeletePlaylists"

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete playlists failed server side. resultCode="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    :cond_d
    :goto_6
    move-object v5, v6

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v9

    if-eqz v5, :cond_f

    if-nez v3, :cond_e

    .line 222
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_e
    const-string v5, "uri"

    .line 223
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v5, 0x3e8

    int-to-long v13, v5

    div-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x0

    .line 225
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x57

    const/16 v22, 0x0

    const/4 v5, 0x0

    move-object v14, v5

    .line 223
    invoke-static/range {v14 .. v22}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v5

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v6

    check-cast v13, Ljava/lang/Iterable;

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3f

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 222
    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v12, v3

    .line 230
    :cond_f
    iget-object v3, v0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->conflictManager:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 231
    iget-object v3, v0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->conflictManager:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->execute()V

    :cond_10
    const-string v3, "Playlist-DeletePlaylists"

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSyncPlaylists() deleted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isSynced="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConflict="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final id(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "_id"

    .line 283
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final name(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 284
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final sourceId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "source_playlist_id"

    .line 286
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final updateDate(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "date_synced"

    .line 285
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 255
    invoke-static {p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->doInBackground([Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method protected varargs doInBackground([Lkotlin/Unit;)V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    const-string v2, "weakReference.get() ?: return"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v11, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v2}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;-><init>(Landroid/content/Context;)V

    .line 84
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.Playlists.CONTENT_URI"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "_id"

    const-string v5, "source_playlist_id"

    const-string v6, "name"

    const-string v7, "date_synced"

    .line 85
    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->ids:[J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    .line 83
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 261
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v4

    check-cast v7, Landroid/database/Cursor;

    if-nez v3, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->id(Landroid/database/Cursor;)J

    move-result-wide v7

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->name(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7, v8, v12}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->addItems(JLjava/lang/String;)V

    .line 95
    sget-boolean v7, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v7, :cond_4

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->id(Landroid/database/Cursor;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isUserPlaylist(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->sourceId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 97
    move-object v8, v10

    check-cast v8, Ljava/util/Map;

    new-instance v12, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;

    .line 98
    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->id(Landroid/database/Cursor;)J

    move-result-wide v13

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->updateDate(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v7, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask$ServerPlaylistData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v8, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_3
    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->id(Landroid/database/Cursor;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_4
    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->id(Landroid/database/Cursor;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 277
    :goto_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    move-object v3, v10

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 106
    invoke-direct {v1, v0, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->deleteSyncPlaylists(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 109
    :cond_5
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 110
    check-cast v9, Ljava/util/List;

    invoke-direct {v1, v2, v9}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->deleteLocalPlaylists(Landroid/content/Context;Ljava/util/List;)V

    :cond_6
    const/4 v0, 0x3

    .line 113
    invoke-static {v11, v5, v5, v0, v5}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute$default(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 261
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    return-void
.end method

.method public final getIds()[J
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->ids:[J

    return-object v0
.end method

.method public final getWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->onPostExecute(Lkotlin/Unit;)V

    return-void
.end method

.method protected onPostExecute(Lkotlin/Unit;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "activity"

    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 124
    check-cast p1, Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->loadingProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 64
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    const-string v2, "activity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Landroid/app/ProgressDialog;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b018e

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 67
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 65
    iput-object v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->loadingProgress:Landroid/app/ProgressDialog;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->loadingProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method
