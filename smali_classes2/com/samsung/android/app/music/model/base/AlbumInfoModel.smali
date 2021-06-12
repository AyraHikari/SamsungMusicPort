.class public Lcom/samsung/android/app/music/model/base/AlbumInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad:Lcom/samsung/android/app/music/model/AdInfo;

.field private agency:Ljava/lang/String;

.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private clkImageUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private distributor:Ljava/lang/String;

.field private favoriteYn:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

.field private releaseDate:Ljava/lang/String;

.field private trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->artistList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->trackList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAd()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->ad:Lcom/samsung/android/app/music/model/AdInfo;

    return-object v0
.end method

.method public getAgency()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->agency:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getClkImageUrl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->clkImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->distributor:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public isVariousArtist()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->artistList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/ArtistModel;->isVariousArtist()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public setTrackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->trackList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
