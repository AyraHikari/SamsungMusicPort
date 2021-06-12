.class public final Lcom/samsung/android/app/music/service/metadata/playingitem/MusicPlayingItem;
.super Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 13

    .line 22
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicPlayingItem;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 24
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "_data"

    .line 28
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_id"

    .line 29
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 31
    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listPosition:I

    iget v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listSize:I

    iget v10, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playDirection:I

    move-object v6, p0

    move-object v11, v0

    .line 32
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicPlayingItem;->a(Landroid/content/Context;Landroid/net/Uri;IIILandroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v4, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    .line 35
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playlistId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 36
    new-instance v11, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicPlayingItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget-wide v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->queueItemId:J

    move-object v3, v11

    move-object v4, p0

    move-object v6, v2

    move-object v8, v12

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v11

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, p0

    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    .line 22
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 38
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw p0
.end method
