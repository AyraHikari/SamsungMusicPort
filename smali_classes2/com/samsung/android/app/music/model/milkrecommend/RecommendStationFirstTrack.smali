.class public Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumArtUrl:Ljava/lang/String;

.field albumId:Ljava/lang/String;

.field albumTitle:Ljava/lang/String;

.field artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field trackId:Ljava/lang/String;

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->trackId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->trackTitle:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumArtUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumTitle:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->artistList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 34
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->trackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
