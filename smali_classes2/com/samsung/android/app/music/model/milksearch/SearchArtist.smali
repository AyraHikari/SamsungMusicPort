.class public Lcom/samsung/android/app/music/model/milksearch/SearchArtist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation
.end field

.field private static final VARIOUS_ARTIST_ID:Ljava/lang/String; = "va"


# instance fields
.field private artistId:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private spotifyUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotifyUri()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->spotifyUri:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImgUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isVariousArtists()Z
    .locals 2

    const-string v0, "va"

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSpotifyUri(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->spotifyUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->artistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
