.class public Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 5
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

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer"

    .line 52
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v1, "spotify_country"

    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->f:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v1

    const-string v2, "forceUpdateVersionCode"

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "SpotifyCheckSupportedCountry"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSupportedCountryFromServer - test : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", testForceUpdateVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$3;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$1;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V
    .locals 8

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "getSpotifySupportedCountry - 1"

    .line 260
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 263
    new-instance v7, Lcom/android/volley/toolbox/JsonObjectRequest;

    const-string v3, "https://cdn-su.glb.samsungmilkradio.com/static/kor/spotify_country.json"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V

    new-instance v6, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 297
    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "getSpotifySupportedCountry"

    .line 213
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SpotifyCheckSupportedCountry"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountryCodeWork() | countryCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", forceUpdateVersion - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.radio.start_client.force_update_version"

    .line 168
    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_spotify_used_oobe_network"

    const/4 v0, 0x1

    .line 169
    invoke-static {p0, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 175
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Z)V

    const-string v0, "SpotifyCheckSupportedCountry"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountryCodeWork() | supportedCountry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p2, "SpotifyCheckSupportedCountry"

    const-string v0, "getCountryCodeWork - SUPPORTED_COUNTRY_ISO == countryCode"

    .line 180
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;->d(Landroid/content/Context;)V

    const-string p2, "key_spotify_user_location"

    const-string v0, "undefined"

    .line 183
    invoke-static {p0, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "undefined"

    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "key_spotify_user_location"

    .line 185
    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "key_spotify_last_current_location"

    const-string v0, "undefined"

    .line 189
    invoke-static {p0, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "undefined"

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "key_spotify_last_current_location"

    .line 192
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p2, "SpotifyCheckSupportedCountry"

    const-string v0, "getCountryCodeWork - needUpdateTab is true"

    .line 195
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lcom/samsung/android/app/music/util/TabUtils;->e(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string p2, "SpotifyCheckSupportedCountry"

    const-string v0, "getCountryCodeWork - SUPPORTED_COUNTRY_ISO != countryCode"

    .line 199
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SpotifyCheckSupportedCountry"

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCountryCodeWork() | countryCode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_spotify_last_current_location"

    const-string v0, "undefined"

    .line 202
    invoke-static {p0, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "undefined"

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "key_spotify_last_current_location"

    .line 204
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lcom/samsung/android/app/music/util/TabUtils;->e(Landroid/content/Context;)V

    const-string p1, "spotify_not_supported"

    :cond_3
    :goto_1
    return-object p1
.end method
