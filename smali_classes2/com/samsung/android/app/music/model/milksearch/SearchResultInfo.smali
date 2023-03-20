.class public Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SearchResultInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumCount:I

.field private artistCount:I

.field private fromBixby:Ljava/lang/String;

.field private isRecommendKeywordSearch:Ljava/lang/String;

.field private lyricsCount:I

.field private mvCount:I

.field private playlistCount:I

.field private recommendKeyword:Ljava/lang/String;

.field private searchList:Lcom/samsung/android/app/music/model/milksearch/SearchList;

.field private spotifyPlaylistCount:I

.field private totalCount:I

.field private trackCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->totalCount:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->trackCount:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->albumCount:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->artistCount:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->playlistCount:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->mvCount:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->lyricsCount:I

    .line 10
    const-class v0, Lcom/samsung/android/app/music/model/milksearch/SearchList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchList;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->recommendKeyword:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->albumCount:I

    return v0
.end method

.method public getArtistTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->artistCount:I

    return v0
.end method

.method public getLyricsTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->lyricsCount:I

    return v0
.end method

.method public getMvTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->mvCount:I

    return v0
.end method

.method public getPlaylistTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->playlistCount:I

    return v0
.end method

.method public getRecommendKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->recommendKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-object v0
.end method

.method public getSpotifyPlaylistCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->spotifyPlaylistCount:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->totalCount:I

    return v0
.end method

.method public getTrackTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->trackCount:I

    return v0
.end method

.method public isBixbyCall()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isRecommendSearch()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAlbumTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->albumCount:I

    return-void
.end method

.method public setArtistTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->artistCount:I

    return-void
.end method

.method public setIsBixbyCall(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    return-void
.end method

.method public setIsRecommendSearch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    return-void
.end method

.method public setSearchList(Lcom/samsung/android/app/music/model/milksearch/SearchList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    return-void
.end method

.method public setSpotifyPlaylistCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->spotifyPlaylistCount:I

    return-void
.end method

.method public setTrackTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->trackCount:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->trackCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->albumCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->artistCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->playlistCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->mvCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->lyricsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->searchList:Lcom/samsung/android/app/music/model/milksearch/SearchList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->recommendKeyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->fromBixby:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->isRecommendKeywordSearch:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
