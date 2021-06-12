.class public final Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;
.super Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    .line 29
    iput-object p8, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 15

    move-object/from16 v0, p1

    .line 34
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 35
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 36
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "_data"

    .line 40
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "source_id"

    .line 41
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 43
    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listPosition:I

    iget v10, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listSize:I

    iget v11, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playDirection:I

    move-object v7, p0

    move-object v12, v1

    .line 44
    invoke-static/range {v7 .. v12}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->a(Landroid/content/Context;Landroid/net/Uri;IIILandroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v5, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    .line 47
    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playlistId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v5, "android.media.metadata.ADVERTISEMENT"

    const-wide/16 v6, 0x1

    .line 48
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 50
    new-instance v14, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget-wide v10, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->queueItemId:J

    move-object v4, v14

    move-object v5, p0

    move-object v7, v3

    move-object v9, v13

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v14

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    .line 34
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    .line 52
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw v2
.end method


# virtual methods
.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "player_extra_message"

    .line 60
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "msg_message"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/AdPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->isDirectUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->getPathUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    return-void
.end method
