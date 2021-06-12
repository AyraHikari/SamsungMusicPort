.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;->b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 268
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 270
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;

    .line 272
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;->a:Landroid/content/Context;

    .line 275
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->getVersion()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;->b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$6;->b:Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;->a(Z)V

    :cond_0
    return-void
.end method
