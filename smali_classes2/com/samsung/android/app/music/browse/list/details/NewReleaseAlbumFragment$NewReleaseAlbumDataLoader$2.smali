.class Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/AlbumModel;",
        "Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
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
            "Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;",
            ">;"
        }
    .end annotation

    const-string p2, "01"

    .line 96
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/browse/NewReleaseApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 92
    check-cast p1, Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader$2;->a(Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;->getAlbums()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment$NewReleaseAlbumDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
