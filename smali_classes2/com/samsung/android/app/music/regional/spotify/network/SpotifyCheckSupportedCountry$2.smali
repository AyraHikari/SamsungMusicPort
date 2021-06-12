.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 3"

    .line 105
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;->a:Landroid/content/Context;

    const-string v1, "key_spotify_supported_country_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->getAvailableCountriesVersionCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)V

    .line 114
    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 3.2"

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
