.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;->c(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;->a(ILjava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;Lio/reactivex/ObservableEmitter;)V

    .line 107
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
