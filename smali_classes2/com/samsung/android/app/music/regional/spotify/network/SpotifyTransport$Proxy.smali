.class public Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

.field private static volatile b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;
    .locals 2

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 7
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

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 99
    invoke-static {v1, p6}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 98
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 2
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

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 111
    invoke-static {v1, p3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 110
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 2
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

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 118
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 2
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

    .line 90
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 91
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/util/List;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 2
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

    .line 104
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "https://api.spotify.com/"

    .line 81
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 2
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

    .line 124
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 125
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->b(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
