.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;)V
    .locals 5

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromServer - onNext"

    .line 137
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    const-string v2, "SpotifyTabModel"

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentsFromServer - onNext : view : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromServer - onCompleted"

    .line 124
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromServer - onError"

    .line 130
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;)V

    return-void
.end method
