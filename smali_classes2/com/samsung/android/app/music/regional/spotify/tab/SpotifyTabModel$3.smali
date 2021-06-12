.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->b()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;->a()Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackURI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "limit"

    const/4 v3, 0x7

    .line 112
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_limit"

    const/16 v3, 0xa

    .line 113
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
