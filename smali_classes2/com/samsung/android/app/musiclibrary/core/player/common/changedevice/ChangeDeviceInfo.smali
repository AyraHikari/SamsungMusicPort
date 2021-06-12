.class public Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo$DeviceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MY_DEVICE_ID:Ljava/lang/String; = "MY_DEVICE"


# instance fields
.field public albumArtUriStr:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceType:I

.field public isWfdDongle:Z

.field public wfdDeviceType:I

.field private wfdDongleArray:[Z

.field public wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->isWfdDongle:Z

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDongleArray:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;)[Z
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDongleArray:[Z

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 83
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDongleArray:[Z

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->isWfdDongle:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDongleArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
