.class public Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private remainCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->deviceList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->remainCount:I

    return-void
.end method


# virtual methods
.method public getDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->deviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemainCount()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->remainCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    iget p2, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->remainCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
