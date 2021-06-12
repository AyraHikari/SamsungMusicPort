.class public final Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;
.super Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    .line 28
    iput-object p8, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 14

    .line 32
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 33
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 34
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "_data"

    .line 38
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_id"

    .line 39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 41
    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listPosition:I

    iget v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listSize:I

    iget v10, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playDirection:I

    move-object v6, p0

    move-object v11, v0

    .line 42
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->a(Landroid/content/Context;Landroid/net/Uri;IIILandroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v4, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    .line 45
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playlistId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 47
    new-instance v13, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget-wide v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->queueItemId:J

    iget-object v11, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playlistId:Ljava/lang/String;

    move-object v3, v13

    move-object v4, p0

    move-object v6, v2

    move-object v8, v12

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v13

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, p0

    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    .line 32
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 49
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


# virtual methods
.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "player_extra_message"

    .line 64
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "msg_message"

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->isDirectUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->getPathUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p1
.end method

.method public makeCache(J)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->b:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/milk/RadioPlayingItem;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v0

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->makeCache(J)V

    return-void
.end method
