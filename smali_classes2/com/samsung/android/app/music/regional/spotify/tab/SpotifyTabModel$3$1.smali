.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;->a()Lio/reactivex/Observable;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->b:Ljava/util/Map;

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
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromServer - call"

    .line 118
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyRecommendation;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3$1;Lio/reactivex/ObservableEmitter;)V

    .line 121
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
