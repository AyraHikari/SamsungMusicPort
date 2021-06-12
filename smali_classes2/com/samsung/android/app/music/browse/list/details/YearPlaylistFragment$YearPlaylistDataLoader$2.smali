.class Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/PlayListModel;",
        "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    return-void
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
            "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;->a:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/app/music/network/request/browse/YearApi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 112
    check-cast p1, Lcom/samsung/android/app/music/model/browse/year/YearModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;->a(Lcom/samsung/android/app/music/model/browse/year/YearModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/year/YearModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/year/YearModel;->getPlaylists()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment$YearPlaylistDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/year/YearModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/year/YearModel;->hasMore()Z

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
