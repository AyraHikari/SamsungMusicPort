.class final Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/sync/SyncProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistSyncProcess"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Playlist"

    .line 438
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const-string p1, "5"

    .line 439
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->c:Ljava/lang/String;

    const/16 p1, 0x66

    .line 440
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->d:Ljava/lang/String;

    .line 441
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 11

    const-string v0, "updateDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadServer - updateDate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 457
    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    move-object v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 461
    iget-object v5, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->loadFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    .line 637
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;

    .line 464
    iget-object v6, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 466
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 467
    invoke-static {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->resultCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)I

    move-result v5

    add-int/2addr v5, v4

    .line 468
    invoke-static {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->totalCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)I

    move-result v6

    if-ge v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", updateDate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", resultCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->resultCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "Category Favorite-Sync"

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 472
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    move v0, v4

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    .line 478
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v5, "loadServer : sync failed"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-object v2
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 6

    .line 448
    sget-object v0, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a:Lcom/samsung/android/app/music/list/sync/SyncInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "favorite"

    const/4 v3, 0x4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void
.end method

.method public b()I
    .locals 15

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v1, "deleteServerToLocal"

    iget-object v3, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v2

    .line 486
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v1, "Favorites.CONTENT_URI"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "category_type=? AND modified_state!=?"

    const/4 v1, 0x2

    .line 489
    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->d:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    .line 485
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 639
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    if-nez v2, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v7, v2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 493
    iget-object v6, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v6, v2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 655
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 497
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v1

    .line 499
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v3, "Favorites.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3f

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteServerToLocal - numDeleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v8

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 639
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()I
    .locals 21

    move-object/from16 v1, p0

    .line 508
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v3, "deleteLocalToServer"

    iget-object v5, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v4, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v5

    .line 513
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->c:Landroid/net/Uri;

    const-string v4, "Favorites.CONTENT_URI_INCLUDE_DELETED"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "category_type=? AND modified_state=?"

    const/4 v4, 0x2

    .line 516
    new-array v9, v4, [Ljava/lang/String;

    iget-object v10, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->d:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v9, v12

    const/4 v10, 0x0

    .line 512
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 657
    move-object v5, v4

    check-cast v5, Ljava/io/Closeable;

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    :try_start_0
    move-object v8, v5

    check-cast v8, Landroid/database/Cursor;

    if-nez v4, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 519
    :cond_1
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v9, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 520
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v8, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v8, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_2
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v8, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 673
    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 527
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v12

    if-eqz v4, :cond_3

    .line 528
    iget-object v4, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->c:Ljava/lang/String;

    check-cast v3, Ljava/util/List;

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->deleteFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 529
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 532
    :cond_3
    iget-object v13, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v14, "deleteLocalToServer - serverDeleteSourceIds is empty"

    const/4 v15, 0x0

    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 536
    :cond_4
    :goto_2
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v12

    if-eqz v2, :cond_5

    .line 537
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v2

    .line 538
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v4, "Favorites.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v0

    check-cast v12, Ljava/lang/Iterable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v2, v3, v0, v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v11, v0

    goto :goto_3

    .line 542
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v2, "deleteLocalToServer - deleteIds is empty"

    iget-object v3, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_3
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteLocalToServer - numDeleted:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v11

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 657
    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d()I
    .locals 11

    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v1, "addServerToLocal"

    iget-object v2, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 675
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 553
    iget-object v5, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v6, "serverPlaylistMap[sourceId]!!"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;

    .line 555
    iget-object v6, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v7, "sourceId"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v2, v7, v8}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 556
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "category_id"

    .line 557
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "category_type"

    .line 558
    iget-object v8, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "favorite_name"

    .line 559
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 560
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-string v2, "album_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v2, "data1"

    .line 561
    invoke-static {v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "modified_state"

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cp_attrs"

    const v4, 0x80002

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 568
    :cond_2
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 569
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v1

    .line 570
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b:Landroid/net/Uri;

    const-string v3, "Favorites.PRE_INSERT_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Favorites.addUpdateUri(F\u2026URI.buildNotifyDisable())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    new-array v3, v4, [Landroid/content/ContentValues;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, [Landroid/content/ContentValues;

    .line 569
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    goto :goto_1

    .line 678
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addServerToLocal - numAdded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v4
.end method

.method public e()I
    .locals 23

    move-object/from16 v1, p0

    .line 579
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v3, "addLocalToServer"

    iget-object v5, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v3

    .line 582
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v2, "Favorites.CONTENT_URI"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "category_type=? AND modified_state=?"

    const/4 v2, 0x2

    .line 584
    new-array v7, v2, [Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->d:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x0

    .line 581
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 679
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v4

    check-cast v7, Landroid/database/Cursor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 586
    :cond_1
    new-instance v7, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbum;

    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v8, v3}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbum;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 695
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 590
    iget-object v11, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v12, "addLocalToServer - serverFavoriteList is empty"

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v9

    .line 594
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->c:Ljava/lang/String;

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 595
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v10

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Iterable;

    .line 697
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;

    .line 596
    iget-object v6, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;

    move-result-object v6

    .line 597
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v8, "Favorites.CONTENT_URI"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 598
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "data1"

    .line 599
    invoke-static {v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "modified_state"

    .line 600
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "category_type=? AND category_id=?"

    .line 603
    new-array v12, v2, [Ljava/lang/String;

    iget-object v13, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->d:Ljava/lang/String;

    aput-object v13, v12, v9

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v10

    .line 596
    invoke-static {v6, v7, v8, v11, v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 605
    iget-object v11, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLocalToServer - server success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 607
    iget-object v14, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 605
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v9, v4

    goto :goto_3

    .line 609
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    const-string v18, "addLocalToServer - serverList is empty"

    const/16 v19, 0x0

    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v2

    invoke-static/range {v17 .. v22}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 611
    :cond_6
    :goto_3
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLocalToServer - updatedNum:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;->b:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v9

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 679
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
