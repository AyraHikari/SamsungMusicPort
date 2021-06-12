.class final Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/sync/SyncProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackSyncProcess"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    return-void
.end method

.method private final f()Lcom/samsung/android/app/music/list/favorite/FavoriteApi;
    .locals 2

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    const-string v0, "updateDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadServer - updateDate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 71
    check-cast v0, Ljava/lang/Long;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->f()Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->loadFavorites$default(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getTrackList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    .line 293
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updateDate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", resultCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->resultCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    const-string v2, "sync failed - loadServerFavorites"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 10

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->c:Landroid/net/Uri;

    const-string v0, "Tracks.CONTENT_URI_INCLUDE_DELETED"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "modified_state!=?"

    const/4 v0, 0x1

    .line 52
    new-array v5, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 48
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 53
    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v9, 0x1

    .line 55
    :cond_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v9, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 59
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a:Lcom/samsung/android/app/music/list/sync/SyncInfo;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "favorite"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 53
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(J)V
    .locals 6

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a:Lcom/samsung/android/app/music/list/sync/SyncInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "favorite"

    const/4 v3, 0x1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void
.end method

.method public b()I
    .locals 15

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    const-string v1, "deleteServerToLocal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v1, "Tracks.CONTENT_URI"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio_cp_attrs=524290 AND modified_state!=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 86
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 295
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v2

    check-cast v5, Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v6, v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 93
    iget-object v5, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v5, v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 311
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 98
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v1

    .line 100
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v4, "Tracks.CONTENT_URI"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteServerToLocal deleted="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 295
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()I
    .locals 17

    move-object/from16 v1, p0

    .line 109
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    const-string v3, "deleteLocalToServer"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v4, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v5

    .line 115
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->c:Landroid/net/Uri;

    const-string v4, "Tracks.CONTENT_URI_INCLUDE_DELETED"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "modified_state=2"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 114
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 313
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

    .line 324
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v9, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v8, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v8, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_2
    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v8, v4}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 329
    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 128
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    if-eqz v3, :cond_4

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->f()Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "1"

    check-cast v3, Ljava/util/List;

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->deleteFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 130
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v2, 0x0

    .line 135
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 136
    iget-object v3, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v3

    .line 137
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v5, "Tracks.CONTENT_URI"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3f

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v3, v4, v0, v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 141
    :cond_5
    iget-object v3, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLocalToServer - deleted:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 313
    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d()I
    .locals 24

    move-object/from16 v1, p0

    .line 146
    iget-object v2, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    const-string v3, "addServerToLocal"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v3, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x29

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    .line 151
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-lez v7, :cond_7

    .line 155
    div-int/lit16 v9, v7, 0x3e7

    if-lez v9, :cond_1

    const/16 v9, 0x3e7

    goto :goto_2

    :cond_1
    move v9, v7

    .line 158
    :goto_2
    iget-object v10, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v10}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v11

    .line 159
    sget-object v12, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v10, "Tracks.CONTENT_URI"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b()[Ljava/lang/String;

    move-result-object v13

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audio_source_id IN ("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-array v15, v9, [Ljava/lang/String;

    .line 332
    array-length v14, v15

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v14, :cond_2

    const-string v16, "?"

    .line 161
    aput-object v16, v15, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3f

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v5, "keys"

    .line 162
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_6

    .line 337
    new-array v10, v6, [Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 163
    new-instance v10, Lkotlin/ranges/IntRange;

    add-int v17, v8, v9

    add-int/lit8 v15, v17, -0x1

    invoke-direct {v10, v8, v15}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 162
    invoke-static {v5, v10}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Lkotlin/ranges/IntRange;)[Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    .line 158
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 338
    move-object v8, v5

    check-cast v8, Ljava/io/Closeable;

    const/4 v10, 0x0

    move-object v11, v10

    check-cast v11, Ljava/lang/Throwable;

    :try_start_0
    move-object v12, v8

    check-cast v12, Landroid/database/Cursor;

    if-nez v5, :cond_3

    goto :goto_4

    .line 349
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    const-string v12, "audio_source_id"

    .line 352
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 355
    :goto_4
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {v8, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sub-int/2addr v7, v9

    move/from16 v8, v17

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v11, v0

    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-static {v8, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 337
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 357
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    .line 174
    :cond_8
    iget-object v7, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    const-string v7, "serverTrackMap[sourceId]!!"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;

    .line 175
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "audio_source_id"

    .line 176
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getTrackId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "audio_cp_attrs"

    const v9, 0x80002

    .line 177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "title"

    .line 178
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "album"

    .line 179
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "artist"

    .line 180
    invoke-static {v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->artistNames(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "explicit"

    .line 181
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getExplicit()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "is_celeb"

    .line 182
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getCelebYn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "image_url"

    .line 183
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "source_album_id"

    .line 184
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "source_artist_id"

    .line 185
    invoke-static {v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->artistIds(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "modified_state"

    .line 186
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 189
    :cond_a
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    :cond_b
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f

    .line 193
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_7
    if-lez v0, :cond_10

    .line 197
    div-int/lit16 v8, v0, 0x1f3

    if-lez v8, :cond_c

    const/16 v8, 0x1f3

    goto :goto_8

    :cond_c
    move v8, v0

    .line 200
    :goto_8
    iget-object v9, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v9}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v9

    .line 201
    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v11, "Tracks.CONTENT_URI"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 202
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "modified_state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 203
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audio_source_id IN ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    new-array v14, v8, [Ljava/lang/String;

    .line 360
    array-length v13, v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v13, :cond_d

    const-string v16, "?"

    .line 203
    aput-object v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3f

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 365
    new-array v13, v6, [Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 205
    new-instance v14, Lkotlin/ranges/IntRange;

    add-int v15, v7, v8

    add-int/lit8 v4, v15, -0x1

    invoke-direct {v14, v7, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 204
    invoke-static {v13, v14}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Lkotlin/ranges/IntRange;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 200
    invoke-static {v9, v10, v11, v12, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    sub-int/2addr v0, v8

    move v7, v15

    const/16 v4, 0x29

    goto :goto_7

    .line 365
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v5, 0x0

    .line 214
    :cond_10
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 215
    iget-object v0, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v0

    .line 216
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->e:Landroid/net/Uri;

    const-string v4, "Tracks.ONLINE_SYNC_CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    new-array v4, v6, [Landroid/content/ContentValues;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    check-cast v2, [Landroid/content/ContentValues;

    .line 215
    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_a

    .line 367
    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_a
    add-int v0, v5, v6

    .line 221
    iget-object v7, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addServerToLocal - updated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inserted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method public e()I
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "Track Favorite-Sync"

    const-string v2, "addLocalToServer"

    .line 226
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v3, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v4

    .line 230
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v3, "Tracks.CONTENT_URI"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "modified_state=1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 229
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 368
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

    .line 379
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    iget-object v7, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v7, v3}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v7, Lcom/samsung/android/app/music/list/favorite/FavoriteTrack;

    iget-object v8, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v8, v3}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 384
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 239
    iget-object v6, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    const-string v7, "addLocalToServer - serverList is empty"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return v3

    .line 244
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->f()Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v4, "1"

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v4, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getTrackList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    .line 386
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;

    .line 247
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 250
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-lez v0, :cond_8

    .line 254
    div-int/lit16 v6, v0, 0x1f3

    if-lez v6, :cond_5

    const/16 v6, 0x1f3

    goto :goto_4

    :cond_5
    move v6, v0

    .line 257
    :goto_4
    iget-object v7, v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-static {v7}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;

    move-result-object v7

    .line 258
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v9, "Tracks.CONTENT_URI"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 259
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "modified_state"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio_source_id IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-array v12, v6, [Ljava/lang/String;

    .line 389
    array-length v11, v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_6

    const-string v14, "?"

    .line 260
    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 261
    move-object v11, v2

    check-cast v11, Ljava/util/Collection;

    .line 394
    new-array v12, v3, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 262
    new-instance v12, Lkotlin/ranges/IntRange;

    add-int v13, v5, v6

    add-int/lit8 v14, v13, -0x1

    invoke-direct {v12, v5, v14}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 261
    invoke-static {v11, v12}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Lkotlin/ranges/IntRange;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 257
    invoke-static {v7, v8, v9, v10, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v0, v6

    move v5, v13

    goto :goto_3

    .line 394
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v3, v4

    :cond_9
    return v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 368
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
