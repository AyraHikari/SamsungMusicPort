.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;->b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "SpotifyCheckSupportedCountry"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpotifySupportedCountry - 1 - onErrorResponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;->a:Landroid/content/Context;

    const-string v0, "key_spotify_supported_country_version"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->m(Landroid/content/Context;)V

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;->b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$7;->b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;->a(Z)V

    :cond_1
    return-void
.end method
