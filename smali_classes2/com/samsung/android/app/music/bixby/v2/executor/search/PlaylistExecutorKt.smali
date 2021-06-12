.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/content/Context;J)Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->b(Landroid/content/Context;J)Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 3

    .line 504
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a()V

    .line 506
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c()V

    .line 508
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p0

    .line 509
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b()V

    const-string v0, "PlaylistExecutor"

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkInfo() all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mobile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "album_id"

    .line 532
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "cp_attrs"

    .line 533
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const v3, 0x10001

    if-eq p1, v3, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 386
    :pswitch_0
    sget-object v5, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string p1, "MilkContents.Thumbnails.Album.CONTENT_URI"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "image_url_big"

    .line 387
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "thumbnail_id=?"

    const/4 p1, 0x1

    .line 389
    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, p1

    const/4 v9, 0x0

    move-object v4, p0

    .line 385
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    .line 391
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 392
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "image_url_big"

    .line 534
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    move-object v0, p1

    .line 397
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 382
    :cond_3
    :pswitch_1
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, "RestrictedContents.Album\u2026rkUri(albumId).toString()"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z

    move-result p0

    return p0
.end method

.method private static final b(Landroid/content/Context;J)Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;
    .locals 20

    move-object/from16 v0, p0

    .line 404
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v9

    .line 412
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v10

    .line 413
    iget-object v1, v9, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    if-nez v10, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 414
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "explicit_option"

    .line 415
    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 417
    new-instance v1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 419
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 420
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :cond_1
    const v3, 0x10001

    .line 425
    :goto_1
    invoke-static/range {p0 .. p2}, Lcom/samsung/android/app/music/util/ListUtils;->b(Landroid/content/Context;J)I

    move-result v4

    .line 417
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 429
    iget-object v2, v1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    const-string v3, "args.uri"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 431
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 432
    iget-object v5, v1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 433
    iget-object v6, v1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v1, p0

    .line 428
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 535
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    if-nez v1, :cond_2

    goto :goto_2

    .line 546
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x1

    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x1

    :goto_3
    const-string v11, "audio_id"

    .line 549
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 436
    new-instance v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v11}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    const-string v12, "album_id"

    .line 550
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v18, v4

    const-string v4, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    const-string v4, "album"

    .line 551
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v12, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    const-string v4, "artist"

    .line 552
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v12, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 440
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    .line 441
    iget-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    const-string v4, "Local"

    .line 442
    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    const-string v4, "title"

    .line 553
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v12, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    const-string v4, "source_id"

    .line 554
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v12, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v11, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    const-string v4, "cp_attrs"

    .line 555
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 448
    invoke-static {v4}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v12

    .line 449
    invoke-static {v4}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v4

    const-string v0, "explicit"

    .line 556
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v19, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez v13, :cond_5

    if-eqz v12, :cond_7

    :cond_5
    if-nez v14, :cond_6

    if-nez v0, :cond_7

    .line 453
    :cond_6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_9

    const-string v0, "drm_type"

    .line 557
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    move v5, v0

    move/from16 v18, v19

    :cond_9
    if-eqz v15, :cond_a

    move v15, v12

    :cond_a
    if-eqz v6, :cond_b

    move/from16 v6, v19

    .line 465
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v11, 0x64

    if-ne v0, v11, :cond_c

    .line 466
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 558
    :cond_c
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 560
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_7
    move v4, v5

    move v5, v6

    move v6, v15

    move/from16 v3, v18

    .line 470
    new-instance v11, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    move-object v0, v11

    move-object v1, v7

    move-object v2, v8

    move-object v7, v9

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLcom/samsung/android/app/music/network/NetworkInfo;Z)V

    const-string v0, "PlaylistExecutor"

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistTrackInfo() result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_d
    move/from16 v4, v18

    move-object/from16 v0, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 535
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 491
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_0_7"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v1

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p0, p0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez p0, :cond_1

    .line 495
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_0_9"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
