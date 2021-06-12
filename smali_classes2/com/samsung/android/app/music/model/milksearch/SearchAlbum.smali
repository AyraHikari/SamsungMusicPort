.class public Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;

.field private spotifyUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumTitle:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumTitle:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->imageUrl:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->spotifyUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistsName()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotifyUri()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->spotifyUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumTitle:Ljava/lang/String;

    return-void
.end method

.method public setArtistList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setSpotifyUri(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->spotifyUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
