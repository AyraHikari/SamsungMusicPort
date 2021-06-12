.class public interface abstract Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "entity"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "country"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "recurrence"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "date"
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "v1/insights/charts/{entity}/{type}/{country}/{recurrence}/{date}"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "playlist_id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "v1/users/{user_id}/playlists/{playlist_id}/tracks"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "v1/albums/{id}/tracks"
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            a = "signal"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "v1/views/partner-anonymous-recs"
    .end annotation
.end method

.method public abstract a(Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "v1/search"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "v1/artists/{id}/top-tracks"
    .end annotation
.end method
