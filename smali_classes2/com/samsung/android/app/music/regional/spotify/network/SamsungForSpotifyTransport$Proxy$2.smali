.class Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a(ILjava/util/Map;)Lio/reactivex/Observable;
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
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$2;->a:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$2;->a:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->i(Landroid/content/Context;)Lio/reactivex/Observable;

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

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$2;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
