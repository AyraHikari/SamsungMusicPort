.class public final Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;,
        Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$Companion;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a:Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$Companion;

    const-string v2, "_id"

    const-string v3, "name"

    const-string v4, "source_playlist_id"

    const-string v5, "modified_state"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "date_synced"

    .line 904
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 71
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c:Ljava/lang/String;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e:I

    return-void
.end method

.method private final a(JLjava/lang/String;Ljava/lang/String;I)I
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p5

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, ""

    move-object/from16 v9, p3

    invoke-static {v9, v0, v2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->makeRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->updatePlaylist(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 543
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;

    .line 545
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;->getResultCode()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v1, 0x106a

    if-eq v5, v1, :cond_2

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renamePlaylist() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {v6, v0, v1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    move v8, v5

    goto/16 :goto_0

    .line 560
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renamePlaylist() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exists"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    add-int/lit8 v5, v7, 0x1

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 561
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(JLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 549
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;

    .line 551
    iget-object v7, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 553
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 554
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 555
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x314

    const/16 v19, 0x0

    move-wide/from16 v8, p1

    move-object v11, v0

    .line 550
    invoke-static/range {v7 .. v19}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renamePlaylist() done "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v8, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_0
    move v2, v8

    :cond_4
    :goto_1
    return v2
.end method

.method private final a(JLjava/lang/String;Z)I
    .locals 17
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p4

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDownPlaylist() server -> local S forceUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    const/4 v2, 0x0

    .line 580
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object/from16 v7, p3

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->getPlaylistTracks$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 583
    invoke-virtual {v6}, Lretrofit2/Response;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 584
    invoke-virtual {v6}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v7, "it.body()!!"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;

    .line 585
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->getResultCode()I

    move-result v7

    if-nez v7, :cond_3

    .line 587
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->getPlaylistTracks()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {v6}, Lretrofit2/Response;->a()I

    move-result v7

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    :cond_3
    :goto_0
    if-nez v7, :cond_11

    .line 600
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget-object v9, v1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 602
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "Members.getContentUri(playlistId)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "server_track_seq_id"

    const-string v12, "server_track_seq_id * 1 AS orderColumn"

    .line 603
    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "orderColumn"

    .line 601
    invoke-static/range {v9 .. v14}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;

    .line 607
    move-object v10, v2

    check-cast v10, Ljava/lang/Throwable;

    :try_start_0
    move-object v11, v9

    check-cast v11, Landroid/database/Cursor;

    if-eqz v11, :cond_4

    .line 608
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1

    :cond_4
    move-object v12, v2

    :goto_1
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    :cond_5
    move-object v13, v2

    :goto_2
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v4

    if-nez v12, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v5, :cond_d

    .line 610
    move-object v12, v5

    check-cast v12, Ljava/lang/Iterable;

    .line 1010
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v0, 0x1

    if-gez v0, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_8
    check-cast v14, Lcom/samsung/android/app/music/list/playlist/ServerTrack;

    if-nez v13, :cond_b

    .line 612
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getTrackSeqId()I

    move-result v13

    invoke-direct {v1, v11, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v13, v0, :cond_a

    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    move v13, v0

    :cond_b
    move/from16 v16, v7

    move-wide/from16 v6, p1

    .line 614
    invoke-static {v6, v7, v14}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makeSyncDownMemberValues(JLcom/samsung/android/app/music/list/playlist/ServerTrack;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v15

    move/from16 v7, v16

    goto :goto_5

    :cond_c
    move/from16 v16, v7

    move-wide/from16 v6, p1

    .line 1011
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_d
    move/from16 v16, v7

    move-wide/from16 v6, p1

    move v13, v0

    .line 607
    :goto_8
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 626
    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_10

    if-eqz v13, :cond_f

    .line 628
    iget-object v0, v1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 629
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->b(J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "Sync.Members.getSyncCont\u2026                        )"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-static {v6, v2, v4, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "Sync.Members.getSyncCont\u2026toDeleteBeforeInsertUri()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    const-string v9, "contentValuesList.toArra\u2026(contentValuesList.size))"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [Landroid/content/ContentValues;

    .line 628
    invoke-static {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    .line 634
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v6, v0, :cond_e

    const/16 v7, -0x64

    goto :goto_9

    :cond_e
    move/from16 v7, v16

    :goto_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_f
    move/from16 v7, v16

    const/4 v0, 0x0

    :goto_a
    const/4 v6, 0x0

    goto :goto_c

    .line 639
    :cond_10
    iget-object v0, v1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync$Members;->a(J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "Sync.Members.getContentUri(playlistId)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6, v2, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move/from16 v7, v16

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 607
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    move/from16 v16, v7

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    .line 644
    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncDownPlaylist() server -> local X isChanged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", added="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", deleted="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", count="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_12
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-direct {v1, v0, v3, v4}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    return v7
.end method

.method private final a(Ljava/lang/String;JLjava/lang/String;)I
    .locals 28
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncUpPlaylist() S name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-direct {v7, v0, v9, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 474
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "audio_id"

    const-string v11, "source_album_id"

    const-string v12, "source_artist_id"

    const-string v13, "artist"

    const-string v14, "cp_attrs"

    const-string v15, "local_track_id"

    const-string v16, "source_id"

    const-string v17, "title"

    const-string v18, "album"

    const-string v19, "_display_name"

    const-string v20, "explicit"

    .line 480
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "play_order"

    .line 496
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v4, "uri"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 991
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v10, 0x0

    move-object v3, v10

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1002
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 497
    :cond_1
    :goto_0
    sget-object v4, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->Companion:Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;->create(Landroid/database/Cursor;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1007
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-wide/16 v1, 0x0

    .line 501
    move-object v11, v10

    check-cast v11, Ljava/util/List;

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v12

    if-nez v12, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v0, Ljava/util/List;

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->makeSyncUpRequest(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 v13, p4

    invoke-static/range {v12 .. v17}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->syncUpPlaylist$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;IILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v3

    const/4 v12, 0x0

    if-eqz v3, :cond_7

    .line 504
    invoke-virtual {v3}, Lretrofit2/Response;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 505
    invoke-virtual {v3}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;

    .line 506
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;->getResultCode()I

    move-result v2

    .line 507
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;)J

    move-result-wide v13

    if-eqz v2, :cond_5

    const/16 v1, 0x106d

    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    .line 514
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(JLjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 511
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;->getList()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto :goto_2

    .line 518
    :cond_6
    invoke-virtual {v3}, Lretrofit2/Response;->a()I

    move-result v3

    move-wide v13, v1

    move v2, v3

    goto :goto_2

    :cond_7
    move-wide v13, v1

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_9

    if-eqz v11, :cond_8

    .line 524
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 525
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Members.getContentUri(playlistId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10, v8, v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Members.getContentUri(pl\u2026toDeleteBeforeInsertUri()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-static {v0, v11}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makeSyncUpMemberValues(Ljava/util/List;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v0

    .line 524
    invoke-static {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v12

    .line 529
    :cond_8
    iget-object v15, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1bc

    const/16 v27, 0x0

    move-wide/from16 v16, p2

    invoke-static/range {v15 .. v27}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncUpPlaylist() X synced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateSynced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v9, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    goto :goto_3

    .line 533
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncUpPlaylist() X resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v9}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    :goto_3
    return v2

    :cond_a
    move-object/from16 v5, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 991
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "_id"

    .line 1050
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 809
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;
    .locals 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 810
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const/4 v8, 0x0

    .line 811
    move-object v4, v8

    check-cast v4, Ljava/lang/String;

    .line 812
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v4, "source_playlist_id=?"

    .line 815
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "name=?"

    .line 819
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 822
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v4, "uri"

    .line 823
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    sget-object v4, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g:[Ljava/lang/String;

    check-cast v5, Ljava/util/Collection;

    const/4 v6, 0x0

    .line 1049
    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v6, v5

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, v0

    .line 822
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    .line 825
    move-object v3, v8

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 826
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 827
    new-instance v4, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;

    .line 828
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v10

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    .line 829
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Landroid/database/Cursor;)J

    move-result-wide v14

    move-object v9, v4

    .line 827
    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;-><init>(JLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    .line 832
    :cond_2
    :try_start_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v8

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1049
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    .line 845
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "server_track_seq_id"

    .line 1057
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 668
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "_id"

    .line 669
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_playlist_id=?"

    const/4 v0, 0x1

    .line 671
    new-array v4, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 672
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string p1, "uri"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 673
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 674
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 676
    :cond_0
    :try_start_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 752
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->k()V

    .line 754
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v0

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 1044
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    const/16 v4, 0xa

    .line 759
    new-array v4, v4, [Lkotlin/Pair;

    const-string v5, "playlist_id"

    .line 760
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    const-string v6, "playlist_title"

    .line 761
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "regist_date"

    .line 762
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getRegistDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "update_date"

    .line 763
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "server_order"

    .line 764
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "type"

    .line 765
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "track_count"

    .line 766
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getTrackCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "image_url"

    .line 767
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "update_device_id"

    .line 768
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v4, v5

    const/16 v3, 0x9

    const-string v5, "latest_update_date"

    .line 769
    invoke-static {v5, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v3

    .line 759
    invoke-static {v4}, Landroidx/content/ContentValuesKt;->a([Lkotlin/Pair;)Landroid/content/ContentValues;

    move-result-object v3

    .line 758
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 773
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistServerResponseInfo;->a:Landroid/net/Uri;

    const-string v4, "ServerCache.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    .line 1047
    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, [Landroid/content/ContentValues;

    .line 773
    invoke-static {p1, v3, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 774
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v2, "playlist_cache_time"

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putLong(Ljava/lang/String;J)V

    .line 776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCache() latestUpdateDate="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", playlistCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    .line 1047
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 896
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 872
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 2

    .line 897
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const-string v1, "Playlist-Sync"

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;IZ)V
    .locals 2

    .line 873
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const-string v1, "Playlist-Sync"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private final b(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date_added"

    .line 1051
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;
    .locals 2

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 880
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 729
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 730
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistServerResponseInfo;->a:Landroid/net/Uri;

    const-string v3, "ServerCache.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "latest_update_date=?"

    const/4 v3, 0x1

    .line 732
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 729
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1016
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v2

    check-cast v5, Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1027
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 734
    :cond_1
    iget-object v5, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v5, Ljava/util/Map;

    const-string v6, "playlist_id"

    .line 1030
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "playlist_id"

    .line 1031
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "playlist_title"

    .line 1032
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "regist_date"

    .line 1033
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "update_date"

    .line 1034
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "server_order"

    .line 1035
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v8, "type"

    .line 1036
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v8, "track_count"

    .line 1037
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v8, "image_url"

    .line 1038
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v17, v3

    goto :goto_0

    :cond_2
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_0
    const-string v8, "update_device_id"

    .line 1039
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v18, v3

    goto :goto_1

    :cond_3
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    .line 735
    :goto_1
    new-instance v8, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    move-object v9, v8

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1042
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") playlistCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 1016
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final b(Ljava/lang/String;IZ)V
    .locals 2

    .line 881
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const-string v1, "Playlist-Sync"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->b(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method private final c(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date_modified"

    .line 1052
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 852
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "?"

    :goto_0
    return-object p1
.end method

.method private final c()V
    .locals 31
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "deletePlaylists() server -> local S"

    const/4 v8, 0x1

    .line 140
    invoke-direct {v7, v0, v8, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 142
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "source_playlist_id IS NOT NULL"

    .line 145
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v10, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 915
    move-object v12, v11

    check-cast v12, Ljava/io/Closeable;

    const/4 v13, 0x0

    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, v12

    check-cast v1, Landroid/database/Cursor;

    if-nez v11, :cond_0

    goto/16 :goto_1

    .line 926
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 151
    :cond_1
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 154
    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->addItems(JLjava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conflict "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 158
    iget-object v15, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 159
    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v16

    .line 160
    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 161
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c:Ljava/lang/String;

    .line 162
    invoke-direct {v7, v11}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Landroid/database/Cursor;)J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x2

    const/16 v29, 0x1f0

    const/16 v30, 0x0

    move-object/from16 v19, v1

    .line 158
    invoke-static/range {v15 .. v30}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    .line 929
    :cond_3
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 931
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-static {v12, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 169
    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v9

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

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    .line 173
    invoke-static {v10, v13, v13, v1, v13}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute$default(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePlaylists() server -> local X deleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v8, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    return-void

    .line 151
    :cond_5
    :try_start_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 915
    :try_start_2
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {v12, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 888
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final c(Ljava/lang/String;IZ)V
    .locals 2

    .line 889
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const-string v1, "Playlist-Sync"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->c(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method private final d()I
    .locals 34
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "deletePlaylists() local -> server S"

    const/4 v8, 0x1

    .line 180
    invoke-direct {v7, v0, v8, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 182
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->e:Landroid/net/Uri;

    const-string v4, "source_playlist_id IS NOT NULL AND modified_state=2"

    .line 186
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 933
    move-object v13, v12

    check-cast v13, Ljava/io/Closeable;

    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, v13

    check-cast v1, Landroid/database/Cursor;

    const/4 v6, 0x2

    if-nez v12, :cond_0

    :goto_0
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 944
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    :goto_1
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_f

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    .line 196
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/16 v16, 0x0

    move-object/from16 v1, p0

    const/4 v8, 0x2

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 198
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x2

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conflict "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dateSynced local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 202
    invoke-static {v2, v14, v8, v14}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v14, v8, v14}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 201
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 206
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 207
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v18

    .line 208
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v20

    .line 209
    iget-object v2, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c:Ljava/lang/String;

    .line 210
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Landroid/database/Cursor;)J

    move-result-wide v22

    const/16 v24, 0x2

    .line 213
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v25

    .line 214
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v26

    .line 215
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object v27

    .line 216
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x200

    const/16 v32, 0x0

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    .line 206
    invoke-static/range {v17 .. v32}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 221
    invoke-direct {v7, v12}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 949
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-static {v13, v15}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 225
    move-object v1, v10

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/16 v2, 0x29

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    check-cast v10, Ljava/lang/Iterable;

    .line 951
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    new-instance v6, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;

    invoke-direct {v6, v5, v14, v8, v14}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 231
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    new-instance v5, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;

    check-cast v1, Ljava/util/List;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;-><init>(Ljava/util/List;)V

    invoke-static {v4, v5, v14, v8, v14}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->deletePlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 232
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 233
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast v1, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;->getResultCode()I

    move-result v1

    if-nez v1, :cond_a

    .line 235
    iget-object v3, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    check-cast v17, Ljava/lang/Iterable;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    const/16 v25, 0x0

    invoke-static/range {v17 .. v25}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-static {v3, v0, v4, v14}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    move v3, v1

    move/from16 v1, v33

    goto :goto_5

    .line 242
    :cond_9
    invoke-virtual {v1}, Lretrofit2/Response;->a()I

    move-result v1

    :cond_a
    move v3, v1

    const/4 v1, 0x0

    :goto_5
    if-eqz v3, :cond_c

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete action by server failed. resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 251
    :cond_c
    :goto_6
    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_d

    .line 252
    iget-object v4, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/Iterable;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    const/16 v25, 0x0

    invoke-static/range {v17 .. v25}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v4, v0, v2, v14}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 260
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePlaylists() local -> server X deleted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 259
    invoke-direct {v7, v0, v2, v2}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    return v1

    :cond_e
    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 194
    :cond_f
    :try_start_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v15, v0

    .line 933
    :try_start_2
    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    invoke-static {v13, v15}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final d(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date_synced"

    .line 1053
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final e(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "source_playlist_id"

    .line 1054
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

.method private final e()V
    .locals 31
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "addPlaylists() server -> local S"

    const/4 v7, 0x1

    .line 268
    invoke-direct {v6, v0, v7, v7}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 270
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b:Landroid/net/Uri;

    .line 273
    iget-object v0, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 953
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 274
    iget-object v0, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "serverPlaylists[sourceId]!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    const/4 v0, 0x2

    const/4 v13, 0x0

    .line 275
    invoke-static {v6, v11, v13, v0, v13}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;

    move-result-object v1

    if-nez v1, :cond_0

    .line 276
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v13, v1, v7, v13}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;

    move-result-object v14

    if-nez v14, :cond_4

    .line 278
    iget-object v1, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v2, "uri"

    .line 279
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v14

    .line 281
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v15

    .line 282
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateAdded(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 283
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 284
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x60

    const/16 v22, 0x0

    .line 279
    invoke-static/range {v14 .. v22}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistValues$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    .line 278
    invoke-static {v1, v8, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 289
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " added. playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    const-string v0, "sourceId"

    .line 291
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v14, v15, v11, v7}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(JLjava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " add failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 295
    iget-object v0, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1, v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 298
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed. it\'s already exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 301
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conflict. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " duplicated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 302
    iget-object v15, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 303
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->a()J

    move-result-wide v16

    .line 304
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->b()Ljava/lang/String;

    move-result-object v18

    .line 305
    iget-object v0, v6, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c:Ljava/lang/String;

    .line 306
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable$LocalPlaylist;->c()J

    move-result-wide v20

    const/16 v22, 0x0

    .line 307
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v23

    .line 308
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v24

    .line 309
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v25

    .line 310
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x210

    const/16 v30, 0x0

    move-object/from16 v19, v0

    .line 302
    invoke-static/range {v15 .. v30}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 315
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPlaylists() server -> local X added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v7, v7}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method private final f()I
    .locals 45
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "addPlaylists() local -> server S"

    const/4 v8, 0x1

    .line 320
    invoke-direct {v7, v0, v8, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 322
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "source_playlist_id IS NULL"

    .line 327
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v0, "uri"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 955
    move-object v9, v0

    check-cast v9, Ljava/io/Closeable;

    const/4 v10, 0x0

    move-object v11, v10

    check-cast v11, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, v9

    check-cast v1, Landroid/database/Cursor;

    const/4 v12, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 966
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 328
    :cond_2
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistMemberCount$default(Landroid/content/Context;JZILjava/lang/Object;)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_3

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exceeds 1000 members"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 333
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Landroid/database/Cursor;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v10, v4, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->createPlaylist(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 334
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;

    .line 336
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getResultCode()I

    move-result v1

    .line 337
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getPlaylist()Lcom/samsung/android/app/music/list/playlist/Playlist;

    move-result-object v15

    if-eqz v1, :cond_7

    const/16 v2, 0x106a

    if-eq v1, v2, :cond_6

    goto/16 :goto_0

    .line 353
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conflict. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " duplicated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 354
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 355
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v17

    .line 356
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v19

    iget-object v2, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c:Ljava/lang/String;

    .line 357
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Landroid/database/Cursor;)J

    move-result-wide v21

    const/16 v23, 0x0

    .line 358
    invoke-virtual {v15}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistId()Ljava/lang/String;

    move-result-object v24

    .line 359
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v25

    .line 360
    invoke-static {v14}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;)Ljava/lang/String;

    move-result-object v26

    .line 361
    invoke-static {v15}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v27

    const/16 v29, 0x0

    const/16 v30, 0x210

    const/16 v31, 0x0

    move-object/from16 v16, v1

    move-object/from16 v20, v2

    .line 354
    invoke-static/range {v16 .. v31}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_7
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v33

    .line 343
    invoke-virtual {v15}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistId()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 344
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 345
    invoke-static {v15}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x138

    const/16 v44, 0x0

    move-object/from16 v32, v1

    .line 341
    invoke-static/range {v32 .. v44}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    .line 348
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-virtual {v15}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v13, v13, 0x1

    .line 969
    :cond_8
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    move v12, v13

    .line 971
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPlaylists() local -> server X added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v8, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    return v12

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 955
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final f(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 1055
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final g()V
    .locals 29
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "updatePlaylists() S"

    const/4 v8, 0x1

    .line 375
    invoke-direct {v7, v0, v8, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 377
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v4, "source_playlist_id IS NOT NULL"

    .line 380
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    const-string v0, "uri"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 973
    move-object v9, v0

    check-cast v9, Ljava/io/Closeable;

    const/4 v10, 0x0

    move-object v11, v10

    check-cast v11, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, v9

    check-cast v1, Landroid/database/Cursor;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 984
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 381
    :cond_1
    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    const/4 v13, 0x2

    if-nez v12, :cond_2

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not exist in server side. skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v7, v1, v2, v13, v10}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 387
    :cond_2
    iget-object v14, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v15

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistMemberCount$default(Landroid/content/Context;JZILjava/lang/Object;)I

    move-result v1

    .line 391
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conflict "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " modified, local.dateModified="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Landroid/database/Cursor;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v10, v13, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", local.dateSynced="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 393
    invoke-static {v3, v10, v13, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", server.dateSynced="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", localTrackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", severTrackCount="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getTrackCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 392
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 399
    iget-object v13, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    .line 400
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v14

    .line 401
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c:Ljava/lang/String;

    .line 402
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Landroid/database/Cursor;)J

    move-result-wide v18

    const/16 v20, 0x0

    .line 403
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v21

    .line 404
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v22

    .line 405
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v23

    .line 406
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x210

    const/16 v28, 0x0

    move-object/from16 v17, v1

    .line 399
    invoke-static/range {v13 .. v28}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 410
    :cond_3
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update local -> server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v10, v13, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 411
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 415
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-direct {v7, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;JLjava/lang/String;)I

    goto/16 :goto_1

    .line 419
    :cond_5
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update server -> local "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 421
    invoke-static {v2, v10, v13, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 420
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 426
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-direct {v7, v1, v2, v3, v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(JLjava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_8

    .line 428
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v8

    .line 431
    iget-object v13, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    .line 432
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v14

    const/16 v16, 0x0

    if-eqz v1, :cond_7

    .line 433
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_0

    :cond_7
    move-object/from16 v17, v10

    :goto_0
    const/16 v18, 0x0

    .line 434
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 435
    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x194

    const/16 v25, 0x0

    move/from16 v23, v1

    .line 430
    invoke-static/range {v13 .. v25}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    if-eqz v1, :cond_b

    .line 440
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    iget-object v2, v7, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;-><init>(Landroid/content/Context;)V

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute(Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 444
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update local failed resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v13}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 450
    :cond_9
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v12}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update unnecessary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v10, v13, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 451
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_1

    .line 460
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update abnormal local.modified="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g(Landroid/database/Cursor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d(Landroid/database/Cursor;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v10, v13, v10}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", server="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", localTrackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverTrackCount="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getTrackCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-direct {v7, v1, v13}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    .line 987
    :cond_b
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v2, "updatePlaylists() X"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 467
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 973
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final g(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "modified_state"

    .line 1056
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final h()V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 1012
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 653
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    .line 654
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertFileNameSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 656
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 657
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;JLjava/lang/String;)I

    goto :goto_0

    .line 659
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertFileNameSupported fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " local id is not exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 658
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final i()I
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 682
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->j()Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadServerPlaylists("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 684
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 687
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b()Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->getPlaylists(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 688
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 689
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "it.body()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;

    .line 690
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getResultCode()I

    move-result v2

    if-nez v2, :cond_5

    .line 692
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 1014
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;

    .line 696
    iget-object v4, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 698
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;)V

    goto :goto_1

    .line 702
    :cond_3
    invoke-virtual {v1}, Lretrofit2/Response;->a()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadServerPlaylists() X success. playlistCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/util/HashMap;)V

    goto :goto_2

    .line 710
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadServerPlaylists() X failed. resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_2
    return v2
.end method

.method private final j()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistServerResponseInfo;->a:Landroid/net/Uri;

    const-string v2, "ServerCache.CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "latest_update_date"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 719
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 721
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c.getString(0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 723
    :cond_0
    :try_start_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final k()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistServerResponseInfo;->a:Landroid/net/Uri;

    const-string v2, "ServerCache.CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private final l()Z
    .locals 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 786
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "playlist_cache_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const/4 v8, 0x1

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    .line 792
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    const-wide/16 v9, 0x18

    cmp-long v2, v2, v9

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 795
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCacheTimeOut() isTimeOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", elapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "HH:mm:ss"

    invoke-static {v6, v7, v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cacheTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    int-to-long v6, v3

    .line 799
    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 798
    invoke-static {v0, v3, v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", now="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v3, v1, v3}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    move-object v9, p0

    .line 794
    invoke-static/range {v9 .. v14}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_1

    .line 803
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCacheTimeOut() isTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed is negative. abnormal case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_1
    return v8
.end method


# virtual methods
.method public a()Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync start, targetPlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->k()V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->i()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync failed. loadServerPlaylists() resultCode="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v4, v3}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IILjava/lang/Object;)V

    return v2

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->reset()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->c()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->d()I

    move-result v0

    if-lez v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->i()I

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync failed. loadServerPlaylists() resultCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;I)V

    return v2

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->e()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f()I

    move-result v0

    if-lez v0, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->i()I

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync failed. loadServerPlaylists() resultCode="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v4, v3}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IILjava/lang/Object;)V

    return v2

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->g()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->i()I

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync failed. loadServerPlaylists() resultCode="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v4, v3}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;Ljava/lang/String;IILjava/lang/Object;)V

    return v2

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->b:Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->execute()V

    goto :goto_0

    .line 130
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->h()V

    :goto_0
    const-string v0, "sync success"

    .line 133
    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a(Ljava/lang/String;IZ)V

    .line 134
    sget-object v0, Lcom/samsung/android/app/music/provider/BackupRestoreUtil;->a:Lcom/samsung/android/app/music/provider/BackupRestoreUtil;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/provider/BackupRestoreUtil;->b(Landroid/content/Context;)V

    return v1
.end method
