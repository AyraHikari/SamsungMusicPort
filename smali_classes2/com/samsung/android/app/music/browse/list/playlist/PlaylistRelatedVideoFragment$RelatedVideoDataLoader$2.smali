.class Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/VideoModel;",
        "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader$2;->a:Ljava/lang/String;

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
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader$2;->a:Ljava/lang/String;

    .line 133
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailRelatedVideosApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 128
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader$2;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/VideoModel;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;->getVideos()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailRelatedVideosModel;->hasMore()Z

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
