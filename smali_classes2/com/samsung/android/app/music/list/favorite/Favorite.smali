.class public final Lcom/samsung/android/app/music/list/favorite/Favorite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Favorite"


# direct methods
.method public static final getFavoriteCategoryAudioIds(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 14

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 36
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 39
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 41
    new-instance v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    const-string v3, "category_id"

    const-string v4, "category_type"

    const-string v5, "sub_category_type"

    .line 42
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->projection:[Ljava/lang/String;

    .line 50
    iget-object v5, v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->uri:Landroid/net/Uri;

    const-string v3, "queryArgs.uri"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v6, v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->projection:[Ljava/lang/String;

    .line 52
    iget-object v7, v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selection:Ljava/lang/String;

    .line 53
    iget-object v8, v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 54
    iget-object v9, v2, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->orderBy:Ljava/lang/String;

    move-object v4, p0

    .line 49
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 235
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    if-nez v2, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_3
    const/4 v6, 0x0

    :cond_4
    const-string v7, "category_id"

    .line 249
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "category_type"

    .line 250
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v9, 0x66

    if-eq v8, v9, :cond_5

    packed-switch v8, :pswitch_data_0

    const-string v9, "sub_category_type"

    .line 251
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 79
    invoke-static {p0, v8, v7, v9}, Lcom/samsung/android/app/music/list/favorite/Favorite;->getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 84
    iget-object v9, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v8, "it.uri"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v11, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 85
    iget-object v12, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v13, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v8, p0

    .line 83
    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;

    .line 86
    move-object v8, v4

    check-cast v8, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v9, v7

    check-cast v9, Landroid/database/Cursor;

    .line 88
    invoke-static {v9}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object v9

    .line 89
    array-length v10, v9

    add-int/2addr v6, v10

    .line 90
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v8, p0

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0

    .line 61
    :pswitch_0
    invoke-static {p0, v7}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object v7

    const-string v8, "OnlineContentPlayUtils.g\u2026mTracks(context, keyword)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v7

    if-eqz v7, :cond_6

    .line 62
    array-length v8, v7

    add-int/2addr v6, v8

    .line 63
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 67
    :pswitch_1
    invoke-static {p0, v7}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object v7

    const-string v8, "OnlineContentPlayUtils.g\u2026tTracks(context, keyword)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v7

    if-eqz v7, :cond_6

    .line 68
    array-length v8, v7

    add-int/2addr v6, v8

    .line 69
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 73
    :cond_5
    invoke-static {p0, v7}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object v7

    const-string v8, "OnlineContentPlayUtils.g\u2026tTracks(context, keyword)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v7

    if-eqz v7, :cond_6

    .line 74
    array-length v8, v7

    add-int/2addr v6, v8

    .line 75
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_6
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 254
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    new-array p0, v6, [J

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 100
    array-length v3, v2

    invoke-static {v2, v0, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_7
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v5, p0

    .line 235
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0

    .line 37
    :cond_8
    :goto_7
    new-array p0, v0, [J

    return-object p0

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getFavoriteCategoryFireBaseLoggingValues(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "albums"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "artists"

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "genres"

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "folders"

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "composers"

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "milk_albums"

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "milk_artists"

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "milk_magazines"

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recently_added"

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recently_played"

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "most_played"

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "favourite_tracks"

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "playlists"

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v2, "category_type"

    .line 160
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v1, "category_type"

    const-string v2, "count(*) AS _count"

    .line 164
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "category_type!=65540"

    const-string v1, "uri"

    .line 167
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 168
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 171
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 173
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sparse-switch v6, :sswitch_data_0

    const-string v7, "Favorite"

    goto :goto_1

    .line 183
    :sswitch_0
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "composers"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :sswitch_1
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "folders"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    :sswitch_2
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "genres"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :sswitch_3
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "artists"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :sswitch_4
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "albums"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :sswitch_5
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "milk_magazines"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :sswitch_6
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "milk_albums"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :sswitch_7
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "milk_artists"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFavoriteCategoryFireBaseLoggingValues - invalid categoryType is exist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-static {v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_0
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 205
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v1, "category_id"

    const-string v4, "data1"

    .line 206
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "category_type=65540"

    const-string v1, "uri"

    .line 208
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v11, "category_id"

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    :try_start_1
    move-object v1, p0

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_6

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x0

    .line 213
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 214
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 215
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-wide/16 v8, -0xe

    .line 218
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-nez v8, :cond_1

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "recently_added"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-wide/16 v8, -0xd

    .line 220
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-nez v8, :cond_2

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "recently_played"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-wide/16 v8, -0xc

    .line 222
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-nez v8, :cond_3

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "most_played"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-wide/16 v8, -0xb

    .line 224
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v10, v8

    if-nez v6, :cond_4

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v8, "favourite_tracks"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 230
    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v3, "playlists"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, p0

    .line 167
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_7
        0x55 -> :sswitch_6
        0x56 -> :sswitch_5
        0x10002 -> :sswitch_4
        0x10003 -> :sswitch_3
        0x10006 -> :sswitch_2
        0x10007 -> :sswitch_1
        0x10008 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 112
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 134
    :pswitch_1
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto/16 :goto_7

    .line 135
    :pswitch_2
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto/16 :goto_7

    .line 133
    :pswitch_3
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto/16 :goto_7

    .line 115
    :pswitch_4
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, -0xe

    if-nez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    const-wide/16 v0, -0xc

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v0, -0xd

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_5

    :goto_2
    const-string p1, "_id"

    .line 118
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v0, p1

    goto :goto_5

    :cond_5
    :goto_4
    const-string p1, "audio_id"

    .line 120
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 122
    :goto_5
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 124
    invoke-static {}, Lcom/samsung/android/app/music/util/ListUtils;->a()I

    move-result p3

    const/4 v1, -0x1

    .line 122
    invoke-direct {p1, p0, p2, p3, v1}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    move-object p0, p1

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_7

    :pswitch_5
    const/4 p0, 0x2

    if-ne p3, p0, :cond_6

    .line 129
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;

    goto :goto_6

    .line 131
    :cond_6
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;

    .line 128
    :goto_6
    move-object p0, p1

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_7

    .line 127
    :pswitch_6
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    :goto_7
    if-eqz p0, :cond_7

    .line 138
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    :cond_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
