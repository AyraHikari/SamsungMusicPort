.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 4"

    .line 141
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "SpotifyCheckSupportedCountry"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSupportedCountryFromServer - 4.1 - countryCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->getcountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", forceUpdateVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->getForceUpdateVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", availableCountriesVersionCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->getAvailableCountriesVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->getcountryCode()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->getForceUpdateVersionCode()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "SpotifyCheckSupportedCountry"

    const-string v0, "checkSupportedCountryFromServer - 4.2 - countryCode is null"

    .line 152
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "undefined"

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$1;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
