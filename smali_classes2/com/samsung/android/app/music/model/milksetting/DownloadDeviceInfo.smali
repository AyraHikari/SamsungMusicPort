.class public Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceId:Ljava/lang/String;

.field private registDate:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->deviceId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->registDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistDate()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->registDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->registDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
