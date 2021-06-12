.class Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistDetailDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;->a:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;->b:Z

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
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 46
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/data/PlaylistDetailDataLoader$PlaylistDetailDataSource;->b:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    add-int/lit8 v3, v1, 0x1

    .line 49
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/model/base/TrackModel;->setTrackNo(I)V

    move v1, v3

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

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
