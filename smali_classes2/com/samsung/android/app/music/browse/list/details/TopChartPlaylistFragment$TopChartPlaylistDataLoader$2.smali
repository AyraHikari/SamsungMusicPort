.class Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/PlayListModel;",
        "Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader$2;->a:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    return-void
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
            "Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;",
            ">;"
        }
    .end annotation

    .line 114
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader$2;->a:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string p2, "01"

    goto :goto_0

    :cond_0
    const-string p2, "02"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 110
    check-cast p1, Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader$2;->a(Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;->getPlaylists()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment$TopChartPlaylistDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;->hasMore()Z

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
