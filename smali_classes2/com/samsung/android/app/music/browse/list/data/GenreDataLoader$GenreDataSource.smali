.class Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
        "Lcom/samsung/android/app/music/model/browse/genre/GenreModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a:Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;Lcom/samsung/android/app/music/model/browse/genre/GenreModel;)Lcom/samsung/android/app/music/model/browse/genre/GenreModel;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a:Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/genre/GenreModel;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a:Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "GenreDataSource"

    const-string p2, "loadInternal. return cached data"

    .line 122
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a:Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "1"

    .line 126
    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/app/music/network/request/browse/GenreApi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;-><init>(Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;Landroid/content/Context;)V

    .line 127
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 104
    check-cast p1, Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a(Lcom/samsung/android/app/music/model/browse/genre/GenreModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/genre/GenreModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/genre/GenreModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->b:Landroid/content/Context;

    .line 140
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "GenreDataSource"

    const-string v1, "loadInternal. genre is empty. something wrong!!"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/genre/GenreModel;->getGenres()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
