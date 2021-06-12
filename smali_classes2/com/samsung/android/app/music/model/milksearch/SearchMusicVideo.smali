.class public Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation
.end field

.field private explicit:I

.field private imageUrl:Ljava/lang/String;

.field private minAge:Ljava/lang/String;

.field private mvId:Ljava/lang/String;

.field private mvTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->mvId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->mvTitle:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->explicit:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->minAge:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertNameListToArray()[Ljava/lang/String;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

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

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistsName()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->convertNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->explicit:I

    return v0
.end method

.method public getMinAge()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->minAge:Ljava/lang/String;

    return-object v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getMvTitle()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->mvTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImageUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isExplicit()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->explicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->mvId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->mvTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    iget p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->explicit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->minAge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
