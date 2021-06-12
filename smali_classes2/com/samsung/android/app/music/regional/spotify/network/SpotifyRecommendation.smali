.class public Lcom/samsung/android/app/music/regional/spotify/network/SpotifyRecommendation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    if-nez p2, :cond_0

    .line 68
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "timestamp"

    .line 70
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "locale"

    .line 71
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/util/List;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
