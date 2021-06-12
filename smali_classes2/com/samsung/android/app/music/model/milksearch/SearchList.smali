.class public Lcom/samsung/android/app/music/model/milksearch/SearchList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation
.end field

.field private lyricsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;",
            ">;"
        }
    .end annotation
.end field

.field private mvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;",
            ">;"
        }
    .end annotation
.end field

.field private pickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPick;",
            ">;"
        }
    .end annotation
.end field

.field private playlistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private searchTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchTrack;",
            ">;"
        }
    .end annotation
.end field

.field private stationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchStation;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->albumList:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->artistList:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchPick;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->pickList:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->stationList:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->mvList:Ljava/util/List;

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->playlistList:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->lyricsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->albumList:Ljava/util/List;

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

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getLyricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->lyricsList:Ljava/util/List;

    return-object v0
.end method

.method public getMvList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->mvList:Ljava/util/List;

    return-object v0
.end method

.method public getPickList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPick;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->pickList:Ljava/util/List;

    return-object v0
.end method

.method public getPlaylistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->playlistList:Ljava/util/List;

    return-object v0
.end method

.method public getPlaylists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->playlists:Ljava/util/List;

    return-object v0
.end method

.method public getSearchTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchTrack;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->searchTracks:Ljava/util/List;

    return-object v0
.end method

.method public getStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchStation;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->stationList:Ljava/util/List;

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

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public setAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->albumList:Ljava/util/List;

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

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->artistList:Ljava/util/List;

    return-void
.end method

.method public setPlaylists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->playlists:Ljava/util/List;

    return-void
.end method

.method public setSearchTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchTrack;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->searchTracks:Ljava/util/List;

    return-void
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

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->trackList:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->albumList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->pickList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->stationList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->mvList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->playlistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 58
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchList;->lyricsList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
