.class public Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

.field artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field contentId:Ljava/lang/String;

.field contentOrder:I

.field contentTitle:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field description:Ljava/lang/String;

.field explicit:I

.field imageBigUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "imageBigUrl"
        b = {
            "largeSizeAlbumArtUrl",
            "largeSizeImageUrl"
        }
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;

.field length:I

.field mvInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

.field pickInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

.field rankingBadge:Ljava/lang/String;

.field rankingChg:I

.field stationInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

.field trackInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentOrder:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->explicit:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->length:I

    .line 79
    const-class v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

    .line 80
    const-class v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    .line 81
    const-class v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    .line 82
    const-class v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

    .line 83
    const-class v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingChg:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingBadge:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 129
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAlbumInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentOrder()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentOrder:I

    return v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->explicit:I

    return v0
.end method

.method public getImageBigUrl()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->length:I

    return v0
.end method

.method public getMvInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

    return-object v0
.end method

.method public getPickInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

    return-object v0
.end method

.method public getRankingBadge()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingChg()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingChg:I

    return v0
.end method

.method public getStationInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

    return-object v0
.end method

.method public getTrackInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 134
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 2

    .line 275
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->explicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNew()Z
    .locals 2

    .line 143
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingChg:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlbumInfo(Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    return-void
.end method

.method public setArtistList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;",
            ">;)V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setContentOrder(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentOrder:I

    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    return-void
.end method

.method public setExplicit(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->explicit:I

    return-void
.end method

.method public setImageBigUrl(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->length:I

    return-void
.end method

.method public setMvInfo(Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

    return-void
.end method

.method public setPickInfo(Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

    return-void
.end method

.method public setStationInfo(Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

    return-void
.end method

.method public setTrackInfo(Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->contentOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->imageBigUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->explicit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->stationInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainStationInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->trackInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->albumInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->pickInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainPickInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->mvInfo:Lcom/samsung/android/app/music/model/milkstore/StoreMainMusicVideoInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 106
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingChg:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->rankingBadge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
