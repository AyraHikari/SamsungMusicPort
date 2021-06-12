.class final Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;
    .locals 1

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;
    .locals 0

    .line 36
    new-array p1, p1, [Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo$1;->newArray(I)[Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;

    move-result-object p1

    return-object p1
.end method
