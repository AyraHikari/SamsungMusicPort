.class Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistDetailTrackDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->b:Ljava/lang/String;

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
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 33
    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader$ArtistDetailTrackDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->hasMore()Z

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
