.class public Lcom/samsung/android/app/music/model/TrackListInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "TrackListInfo"


# instance fields
.field private mSkippableCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "skippableCount"
    .end annotation
.end field

.field private mStationId:Ljava/lang/String;

.field private mTracks:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/model/TrackListInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/TrackListInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/TrackListInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mStationId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/model/Track;Lcom/samsung/android/app/music/model/Track;Lcom/samsung/android/app/music/model/Track;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSkippableCount()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    return v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeUnlimitSkipCount()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 75
    iput v0, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    return-void
.end method

.method public setSkippableCount(I)V
    .locals 3

    if-gtz p1, :cond_0

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/model/TrackListInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkippableCount >> count - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 83
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mStationId:Ljava/lang/String;

    return-void
.end method

.method public setTracks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget p2, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mSkippableCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object p2, p0, Lcom/samsung/android/app/music/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
