.class Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$3;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
        "Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p2, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$3;->a(Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
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
