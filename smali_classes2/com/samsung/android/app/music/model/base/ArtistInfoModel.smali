.class public Lcom/samsung/android/app/music/model/base/ArtistInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad:Lcom/samsung/android/app/music/model/AdInfo;

.field private artistId:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private clkImageUrl:Ljava/lang/String;

.field private clkImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debutYear:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private favoriteYn:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->clkImageUrlList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->trackList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAd()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->ad:Lcom/samsung/android/app/music/model/AdInfo;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClkImageUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->clkImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClkImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->clkImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getDebutYear()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->debutYear:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->playlistId:Ljava/lang/String;

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

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 2

    const-string v0, "1"

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Y"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->favoriteYn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
