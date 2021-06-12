.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
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

    .line 150
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromServer - doOnNext"

    .line 153
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "SpotifyTabModel"

    const-string v0, "getContentsFromServer - doOnNext : list is null"

    .line 156
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;Ljava/util/List;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    move-result-object p1

    .line 161
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 162
    const-class v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpotifyTabModel"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentsFromServer - SimpleJsonCache json : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_spotify_tab_json_data"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;->a(Ljava/util/List;)V

    return-void
.end method
