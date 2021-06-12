.class Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "getSpotifySupportedCountry - onResponse"

    .line 224
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 229
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    .line 231
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a:Landroid/content/Context;

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->getVersion()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;->a:Lio/reactivex/ObservableEmitter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
