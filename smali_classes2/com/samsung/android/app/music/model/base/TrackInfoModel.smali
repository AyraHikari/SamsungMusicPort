.class public Lcom/samsung/android/app/music/model/base/TrackInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FREE_DOWNLOADABLE:Ljava/lang/String; = "2"

.field private static final INVALID_ARTIST_ID:Ljava/lang/String; = "0"

.field private static final ONLY_STREAMING:Ljava/lang/String; = "0"

.field private static final PURCHASABLE:Ljava/lang/String; = "1"


# instance fields
.field private albumArtUrl:Ljava/lang/String;

.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private arranger:Ljava/lang/String;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private celebYn:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field private explicit:I

.field private favoriteYn:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private largeSizeAlbumArtUrl:Ljava/lang/String;

.field private lyricist:Ljava/lang/String;

.field private lyricsUrl:Ljava/lang/String;

.field private mvExplicit:I

.field private mvId:Ljava/lang/String;

.field private radioServiceYn:Z

.field private seedUsable:Ljava/lang/String;

.field private serviceStat:Ljava/lang/String;

.field private songPurchasable:Ljava/lang/String;

.field private synclyricsUrl:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArranger()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->arranger:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

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

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getCelebYn()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->celebYn:Ljava/lang/String;

    return-object v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->composer:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->explicit:I

    return v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeSizeAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->largeSizeAlbumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricist()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->lyricist:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->lyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvExplicit()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->mvExplicit:I

    return v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->seedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStat()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->serviceStat:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPurchasable()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->songPurchasable:Ljava/lang/String;

    return-object v0
.end method

.method public getSynclyricsUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->synclyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasAvailableAlbum()Z
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasAvailableArtist()Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isVariousArtist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLyric()Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasMusicVideo()Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getMvId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCelebTrack()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->celebYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isDownloadable()Z
    .locals 2

    const-string v0, "1"

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->songPurchasable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->songPurchasable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isExplicit()Z
    .locals 2

    .line 205
    iget v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->explicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFavorite()Z
    .locals 2

    const-string v0, "Y"

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isMvExplicit()Z
    .locals 2

    .line 182
    iget v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->mvExplicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayable()Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->serviceStat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->serviceStat:Ljava/lang/String;

    const-string v2, "P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->serviceStat:Ljava/lang/String;

    const-string v2, "H"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->serviceStat:Ljava/lang/String;

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public isRadioPlayable()Z
    .locals 2

    const-string v0, "0"

    .line 231
    iget-boolean v1, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->radioServiceYn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSongSeedUsable()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->seedUsable:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->seedUsable:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->seedUsable:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVariousArtist()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->artistList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/ArtistModel;->isVariousArtist()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->favoriteYn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 236
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
