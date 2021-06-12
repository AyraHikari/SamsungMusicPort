.class Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumDetailDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->b:Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->b:Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$1;-><init>(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)V

    .line 45
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->d(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;-><init>(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)V

    .line 55
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 30
    check-cast p1, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a(Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->hasMore()Z

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

    const/4 v0, 0x0

    return v0
.end method
