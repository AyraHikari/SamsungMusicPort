.class Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "SpotifyCheckSupportedCountry"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpotifySupportedCountry - onErrorResponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a:Landroid/content/Context;

    const-string v0, "key_spotify_supported_country_version"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->m(Landroid/content/Context;)V

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;->a:Lio/reactivex/ObservableEmitter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
