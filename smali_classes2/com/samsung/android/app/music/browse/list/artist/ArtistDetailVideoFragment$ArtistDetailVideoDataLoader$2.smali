.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/MusicVideoModel;",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$2;->a:Ljava/lang/String;

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
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$2;->a:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->b(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 161
    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$2;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/MusicVideoModel;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;->getMvList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailVideoFragment$ArtistDetailVideoDataLoader$2;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;->hasMore()Z

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
