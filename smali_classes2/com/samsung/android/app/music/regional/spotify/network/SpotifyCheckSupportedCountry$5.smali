.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->b(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 219
    new-instance v7, Lcom/android/volley/toolbox/JsonObjectRequest;

    const-string v3, "https://cdn-su.glb.samsungmilkradio.com/static/kor/spotify_country.json"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;Lio/reactivex/ObservableEmitter;)V

    new-instance v6, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$5;Lio/reactivex/ObservableEmitter;)V

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 253
    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
