.class public Lcom/sec/android/app/billing/helper/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public channelID:Ljava/lang/String;

.field public dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public deviceID:Ljava/lang/String;

.field public deviceUID:Ljava/lang/String;

.field public displayType:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public msisdn:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public shopID:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public usimType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/sec/android/app/billing/helper/DeviceInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/DeviceInfo;
    .locals 2

    .line 44
    new-instance v0, Lcom/sec/android/app/billing/helper/DeviceInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/DeviceInfo;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->channelID:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->dateFormat:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->deviceID:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->deviceUID:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->displayType:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->language:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->mcc:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->mnc:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->msisdn:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->shopID:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->userAgent:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/billing/helper/DeviceInfo;->usimType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 28
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->channelID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->dateFormat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->deviceID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->deviceUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->displayType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->mcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->shopID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/DeviceInfo;->usimType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
