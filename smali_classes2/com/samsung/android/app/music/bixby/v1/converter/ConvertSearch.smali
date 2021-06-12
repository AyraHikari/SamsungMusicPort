.class final Lcom/samsung/android/app/music/bixby/v1/converter/ConvertSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Search"

    const-string v1, "LAUNCH_SEARCH"

    .line 12
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchLocal"

    const-string v1, "SET_QUERY"

    .line 15
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchDiscover"

    const-string v1, "SET_QUERY"

    .line 16
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchAll"

    const-string v1, "SET_QUERY"

    .line 17
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchLocalAlbums"

    const-string v1, "LOCAL_SEARCH_RESULT"

    .line 20
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchLocalSongs"

    const-string v1, "LOCAL_SEARCH_RESULT"

    .line 21
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayAllLocalAlbums"

    const-string v1, "LOCAL_SEARCH_RESULT_PLAY"

    .line 22
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayAllLocalSongs"

    const-string v1, "LOCAL_SEARCH_RESULT_PLAY"

    .line 24
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchSongsViewAll"

    const-string v1, "STORE_SEARCH_RESULT"

    .line 28
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchAlbumsViewAll"

    const-string v1, "STORE_SEARCH_RESULT"

    .line 29
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchArtistsTab"

    const-string v1, "STORE_SEARCH_RESULT"

    .line 30
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchPlaylistsViewAll"

    const-string v1, "STORE_SEARCH_RESULT"

    .line 31
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchMVViewAll"

    const-string v1, "STORE_SEARCH_RESULT"

    .line 32
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SearchLyricsTab"

    const-string v1, "STORE_SEARCH_RESULT"

    .line 34
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirstAlbumDetails"

    const-string v1, "MOVE_SEARCH_RESULT_DETAIL"

    .line 35
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirstPlaylistDetails"

    const-string v1, "MOVE_SEARCH_RESULT_DETAIL"

    .line 37
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayAllSongs"

    const-string v1, "STORE_SEARCH_RESULT_PLAY"

    .line 40
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayFirstAlbum"

    const-string v1, "STORE_SEARCH_RESULT_PLAY"

    .line 41
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayFirstStation"

    const-string v1, "STORE_SEARCH_RESULT_PLAY"

    .line 42
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayFirstMV"

    const-string v1, "STORE_SEARCH_RESULT_PLAY"

    .line 44
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlaySong"

    const-string v1, "STORE_SEARCH_RESULT_PLAY"

    .line 48
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "artistName"

    const-string v0, "ARTIST_NAME"

    .line 50
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "songName"

    const-string v0, "SONG_NAME"

    .line 51
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
