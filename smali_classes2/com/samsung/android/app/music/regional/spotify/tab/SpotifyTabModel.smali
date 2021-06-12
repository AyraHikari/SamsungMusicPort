.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x19000

    .line 39
    iput-wide v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->b:J

    const-string v0, "SpotifyTabModel"

    .line 41
    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->c:Ljava/lang/String;

    const-string v0, "spotify_tab"

    .line 43
    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->d:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;Ljava/util/List;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Ljava/util/List;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;)",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "convertDatasToViewPaging"

    .line 238
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;-><init>()V

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    .line 243
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    return-object v0

    :cond_2
    const-string p1, "SpotifyTabModel"

    const-string v0, "convertDatasToViewPaging - paging is null"

    .line 251
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "convertDatasToViewList1"

    .line 200
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    .line 205
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    return-object v0

    :cond_2
    const-string p1, "SpotifyTabModel"

    const-string v0, "convertDatasToViewList1 - list is null"

    .line 213
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "convertDatasToViewList2"

    .line 219
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    .line 224
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    return-object v0

    :cond_2
    const-string p1, "SpotifyTabModel"

    const-string v0, "convertDatasToViewList2 - list is null"

    .line 232
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromCache"

    .line 56
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SpotifyTabModel"

    const-string v1, "getContentsFromServer"

    .line 96
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 150
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
