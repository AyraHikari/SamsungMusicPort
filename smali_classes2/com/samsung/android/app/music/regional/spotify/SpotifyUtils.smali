.class public Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spotify:"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 274
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    const-string v1, ", "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SpotifyUtils"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupportedCountryDataInPref - json : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SpotifyUtils"

    const-string v1, "setSupportedCountryDataInPref - 1"

    .line 335
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_spotify_supported_country"

    .line 336
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_spotify_supported_country_version"

    .line 337
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SpotifyUtils"

    const-string p2, "setSupportedCountryDataInPref - 2"

    .line 339
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->m(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 3

    const-string v0, "SpotifyUtils"

    const-string v1, "isGlobalDeviceWithoutChina"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "SpotifyUtils"

    const-string v2, "isGlobalDeviceWithoutChina - korea device"

    .line 109
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 113
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SpotifyUtils"

    const-string v2, "isGlobalDeviceWithoutChina - china device"

    .line 114
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "SpotifyUtils"

    const-string v1, "isSupportedCountry"

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "SpotifyUtils"

    const-string v0, "isSupportedCountry - SUPPORT_MILK"

    .line 69
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 74
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SpotifyUtils"

    const-string v0, "isSupportedCountry - China"

    .line 75
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "key_spotify_last_current_location"

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "SpotifyUtils"

    const-string v0, "isSupportedCountry - KEY_SPOTIFY_LAST_CURRENT_LOCATION is null"

    .line 82
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "SpotifyUtils"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedCountry - KEY_SPOTIFY_LAST_CURRENT_LOCATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.REFERRER"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-app://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p0

    const-string p1, "jump_to_spotify"

    .line 235
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "SpotifyUtils"

    const-string p1, "Failed to jump to spotify. No activity found to handle this intent!"

    .line 239
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
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

    .line 93
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Legal is not agreed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    const-string v0, "SpotifyUtils"

    const-string v1, "getTimeStamp"

    .line 284
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "T"

    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpotifyUtils"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeStamp - timeStamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "SpotifyUtils"

    const-string v1, "getCountryISO"

    .line 122
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "SpotifyUtils"

    const-string v0, "getCountryISO - SUPPORT_MILK"

    .line 136
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 141
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SpotifyUtils"

    const-string v0, "isSupportedCountry - China"

    .line 142
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "key_spotify_user_location"

    .line 147
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d()Z
    .locals 1

    .line 267
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->q_:Z

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 161
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This country is not supported"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .line 185
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance p0, Ljava/net/ConnectException;

    const-string v0, "Network is not available"

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
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

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
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

    .line 204
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.spotify.music"

    .line 219
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SpotifyUtils"

    const-string v1, "turnedOffDialog"

    .line 251
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b03b6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p0, "OK"

    .line 257
    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$4;

    invoke-direct {v1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils$4;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 4

    const-string v0, "SpotifyUtils"

    const-string v1, "setDefaultSupportedCountryData"

    .line 294
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "spotify_country.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 305
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 312
    const-class v3, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    .line 313
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    .line 314
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 320
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 323
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 326
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    :catch_1
    move-exception p0

    .line 307
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static n(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SpotifyUtils"

    const-string v1, "getSupportedCountryDataFromPref"

    .line 345
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_spotify_supported_country"

    const/4 v1, 0x0

    .line 347
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 352
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 353
    const-class v1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    .line 354
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->getSpotify_country()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
