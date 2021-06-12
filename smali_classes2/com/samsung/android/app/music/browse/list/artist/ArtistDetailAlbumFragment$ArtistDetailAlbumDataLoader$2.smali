.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/AlbumModel;",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->a:Ljava/lang/String;

    const-string v1, "01"

    .line 168
    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->a:Ljava/lang/String;

    const-string v2, "02"

    .line 169
    invoke-static {p1, v1, p2, v2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2$1;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;)V

    .line 167
    invoke-static {v0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 163
    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->getAlbumList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->hasMore()Z

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
