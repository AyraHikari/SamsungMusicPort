.class Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)V
    .locals 3

    const-string v0, "SpotifyAccessToken"

    const-string v1, "getAccessTokenFromServer - onNext"

    .line 125
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "SpotifyAccessToken"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccessTokenFromServer - response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3;->a:Landroid/content/Context;

    .line 131
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "SpotifyAccessToken"

    const-string v0, "getAccessTokenFromServer - getAccessTokenResponse is null"

    .line 135
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->a:Lio/reactivex/ObservableEmitter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SpotifyAccessToken"

    const-string v1, "getAccessTokenFromServer - onComplete"

    .line 110
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "SpotifyAccessToken"

    const-string v0, "getAccessTokenFromServer - onError"

    .line 115
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->a:Lio/reactivex/ObservableEmitter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$3$1;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
