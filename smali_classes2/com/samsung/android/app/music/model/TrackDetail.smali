.class public Lcom/samsung/android/app/music/model/TrackDetail;
.super Lcom/samsung/android/app/music/model/SimpleTrack;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/TrackDetail;",
            ">;"
        }
    .end annotation
.end field

.field private static final FREE_DOWNLOADABLE:Ljava/lang/String; = "2"

.field private static final IS_VALUE_NO:Ljava/lang/String; = "0"

.field private static final ONLY_STREAMING:Ljava/lang/String; = "0"

.field private static final PURCHASABLE:Ljava/lang/String; = "1"


# instance fields
.field celebYn:Ljava/lang/String;

.field favoriteYn:Ljava/lang/String;

.field lyricsUrl:Ljava/lang/String;

.field mvExplicit:I

.field mvId:Ljava/lang/String;

.field seedUsable:Ljava/lang/String;

.field songPurchasable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/model/TrackDetail$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/TrackDetail$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/TrackDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvId:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvExplicit:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->celebYn:Ljava/lang/String;

    return-void
.end method

.method public static from(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/TrackDetail;
    .locals 6

    .line 204
    new-instance v0, Lcom/samsung/android/app/music/model/TrackDetail;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/TrackDetail;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setTrackId(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setTrackTitle(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setAlbumId(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setAlbumTitle(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setImageUrl(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLargeSizeAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setImageBigUrl(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getServiceStat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setServiceStat(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getExplicit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setExplicit(I)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getCelebYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setCelebTrack(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLyricsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setLyricsUrl(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getSongPurchasable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setSongPurchasable(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getSeedUsable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setSeedUsable(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getFavoriteYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setFavoriteYn(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getMvId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setMvId(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getMvExplicit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setMvExplicit(I)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getCelebYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setCelebYn(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/ArtistModel;

    .line 225
    new-instance v3, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/TrackDetail;->setArtistList(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static getAdTrackDetail(Ljava/lang/String;)Lcom/samsung/android/app/music/model/TrackDetail;
    .locals 1

    .line 234
    new-instance v0, Lcom/samsung/android/app/music/model/TrackDetail;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/TrackDetail;-><init>()V

    .line 235
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/TrackDetail;->setTrackId(Ljava/lang/String;)V

    const-string p0, "0"

    .line 236
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/TrackDetail;->setSongPurchasable(Ljava/lang/String;)V

    const-string p0, "0"

    .line 237
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/TrackDetail;->setFavoriteYn(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 238
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/TrackDetail;->setExplicit(I)V

    const-string p0, "0"

    .line 239
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/TrackDetail;->setCelebYn(Ljava/lang/String;)V

    const-string p0, "2"

    .line 240
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/TrackDetail;->setAudioType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public canCreateStation()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getSeedUsableArtist()Lcom/samsung/android/app/music/model/artist/Artist;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsableArtist()Lcom/samsung/android/app/music/model/artist/Artist;
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/artist/Artist;

    .line 120
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/artist/Artist;->isSeedUsable()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getSongPurchasable()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    return-object v0
.end method

.method public hasLyric()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasMusicVideo()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getMvId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAbleToGoAlbumDetail()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->isCelebTrack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAbleToGoArtistDetail()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->isVariousArtist()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->isCelebTrack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isCelebTrack()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->celebYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isDownloadable()Z
    .locals 2

    const-string v0, "1"

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->songPurchasable:Ljava/lang/String;

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

.method public isFavorite()Z
    .locals 2

    const-string v0, "Y"

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

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

    .line 196
    iget v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvExplicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShareable()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->isAdvertisement()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSongSeedUsable()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

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

.method public setCelebYn(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->celebYn:Ljava/lang/String;

    return-void
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    return-void
.end method

.method public setLyricsUrl(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    return-void
.end method

.method public setMvExplicit(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvExplicit:I

    return-void
.end method

.method public setMvId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvId:Ljava/lang/String;

    return-void
.end method

.method public setSeedUsable(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

    return-void
.end method

.method public setSongPurchasable(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mvId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fav - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 162
    iput-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->lyricsUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->songPurchasable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->seedUsable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->favoriteYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->mvExplicit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackDetail;->celebYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
