.class public Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceId:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->uniqueId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->uniqueId:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
