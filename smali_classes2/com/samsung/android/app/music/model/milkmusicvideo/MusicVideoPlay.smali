.class public final Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;",
            ">;"
        }
    .end annotation
.end field

.field private expiredTime:Ljava/lang/String;

.field private explicit:I

.field private length:Ljava/lang/String;

.field private settlementExt:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoTitle:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoUrl:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    .line 49
    iput p6, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    .line 50
    iput-object p7, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

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

    .line 85
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getExpiredTime()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    return v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicVideoArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getSettlementExt()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 2

    .line 131
    iget v0, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
