.class public Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "SpotifyAccessToken"

    const-string v1, "getAccessToken - in"

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_spotify_access_token_expire_time"

    const-wide/16 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    const-string p0, "SpotifyAccessToken"

    const-string v1, "getAccessToken - expireTime == 0"

    .line 32
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 36
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-string p0, "SpotifyAccessToken"

    const-string v1, "getAccessToken - currentTime > expireTime"

    .line 38
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "key_spotify_access_token"

    .line 42
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)Ljava/lang/String;
    .locals 7

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->getTokenInfo()Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->getTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->getTokenInfo()Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SpotifyAccessToken"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessTokenFromServer - accessToken : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_spotify_access_token"

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "SpotifyAccessToken"

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccessTokenFromServer - currentTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->getTokenInfo()Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->getExpiresIn()J

    move-result-wide v3

    const-wide/16 v5, 0x12c

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    const-string p1, "SpotifyAccessToken"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccessTokenFromServer - expireTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_spotify_access_token_expire_time"

    .line 65
    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .line 146
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;->a(ILjava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    .line 147
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
