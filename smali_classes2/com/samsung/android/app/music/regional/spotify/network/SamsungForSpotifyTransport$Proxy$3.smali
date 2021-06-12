.class Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->b(ILjava/util/Map;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;ILjava/util/Map;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->c:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->b()Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->a:I

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->c:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;

    .line 95
    invoke-static {v1}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->b:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 94
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;->b(ILjava/util/Map;)Lio/reactivex/Observable;

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

    .line 90
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
