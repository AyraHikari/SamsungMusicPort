.class final Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "audioIds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    array-length v2, v1

    .line 435
    new-instance v3, Ljava/util/HashSet;

    invoke-static/range {p2 .. p2}, Lkotlin/collections/ArraysKt;->a([J)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 436
    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v0, v3, v4, v5, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->getUnFavoriteAudioIdSet$default(Landroid/content/Context;[JLjava/lang/Integer;ILjava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v5, v2, :cond_0

    .line 439
    invoke-static {v7, v6}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 444
    :goto_0
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    const/4 v10, 0x6

    if-eqz v9, :cond_1

    const-string v0, "addInternal - unFavoriteAudioIdSet is empty"

    .line 445
    invoke-static {v0, v7, v7, v10, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 446
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddResult;

    sub-int v1, v2, v5

    invoke-direct {v0, v7, v1, v2, v8}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v0

    .line 454
    :cond_1
    sget-object v9, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    const/4 v11, 0x2

    invoke-static {v9, v0, v4, v11, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteTrackCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I

    move-result v9

    add-int v12, v9, v5

    const/16 v13, 0x2710

    if-le v12, v13, :cond_2

    .line 456
    invoke-static {v8, v11}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v8

    rsub-int v9, v9, 0x2710

    goto :goto_1

    :cond_2
    move v9, v5

    :goto_1
    if-gtz v9, :cond_3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInternal - availableSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v7, v10, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 462
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddResult;

    sub-int v1, v2, v5

    invoke-direct {v0, v7, v1, v2, v8}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v0

    .line 470
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 472
    move-object/from16 v12, p0

    check-cast v12, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    .line 473
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1790
    array-length v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v13, :cond_7

    aget-wide v16, v1, v14

    .line 475
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v9, :cond_4

    goto :goto_4

    .line 477
    :cond_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 482
    :cond_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 483
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7, v4, v4, v10, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->makeFavoriteTracksValues$default(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    add-int/lit8 v15, v15, 0x1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_4
    if-nez v15, :cond_8

    .line 491
    invoke-static {v8, v6}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->removeFlag(II)I

    .line 494
    :cond_8
    sget-object v1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v6, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getInsertUriByOption(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 495
    check-cast v5, Ljava/util/Collection;

    const/4 v3, 0x0

    .line 1793
    new-array v6, v3, [Landroid/content/ContentValues;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    check-cast v5, [Landroid/content/ContentValues;

    .line 493
    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 497
    sget-object v1, Lcom/samsung/android/app/music/main/LocalSyncTask;->a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;->a(I)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addInternal - addedCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duplicatedCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", totalCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", availableSize:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v10, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 500
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    invoke-direct {v1, v0, v15, v2, v8}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v1

    .line 1793
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v1, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 504
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 509
    sget-object v0, Lcom/samsung/android/app/music/main/LocalSyncTask;->a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;->a(I)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteInternal - result : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {v0, v1, v1, v3, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 512
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/DeleteResult;-><init>(II)V

    return-object v0
.end method

.method public isFavoriteInternal(Landroid/content/Context;J)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v0, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 519
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio_id=?"

    const/4 v0, 0x1

    .line 521
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v5, p3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p1

    .line 517
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 522
    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    if-le v1, v0, :cond_1

    const-string v0, "FavoriteManager"

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFavorite : count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p3

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method
