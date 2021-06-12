.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_spotify_tab_json_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 65
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 68
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    const-class v3, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "SpotifyTabModel"

    const-string v3, "getContentsFromCache - Success to get data"

    .line 77
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 89
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromCache - list is null"

    .line 82
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 84
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_4
    :goto_1
    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromCache - Data is not exist 2"

    .line 72
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 74
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
