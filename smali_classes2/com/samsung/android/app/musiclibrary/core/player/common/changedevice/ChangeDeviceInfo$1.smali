.class final Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
    .locals 3

    .line 97
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    .line 103
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;)[Z

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 104
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->isWfdDongle:Z

    .line 105
    const-class v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
    .locals 0

    .line 112
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo$1;->newArray(I)[Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    move-result-object p1

    return-object p1
.end method
