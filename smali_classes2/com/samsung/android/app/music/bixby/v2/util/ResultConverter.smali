.class public final Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;)Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;
    .locals 2
    .param p0    # Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->b:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getArtistsName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;)Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;
    .locals 2
    .param p0    # Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 117
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->a:Ljava/lang/String;

    .line 119
    iget-object p0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    const-string p1, "Store"

    .line 42
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    const-string p1, "image_url_small"

    const-string v1, "image_url_middle"

    const-string v2, "image_url_big"

    .line 43
    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 47
    sget-object v4, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string v6, "thumbnail_id=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    .line 48
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 51
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    array-length p1, p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 54
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 55
    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 47
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    .line 57
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    :goto_2
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 59
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    const-string p0, "Local"

    .line 60
    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    .line 61
    iget-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 65
    :cond_5
    :goto_3
    iget-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/samsung/android/app/music/model/base/TrackModel;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;
    .locals 2
    .param p0    # Lcom/samsung/android/app/music/model/base/TrackModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    const-string p0, "Store"

    .line 93
    iput-object p0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;)Lorg/json/JSONArray;
    .locals 1
    .param p0    # Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 125
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 126
    invoke-interface {p0}, Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;->i()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;

    .line 134
    invoke-interface {v1}, Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method
