.class public Lcom/sec/android/app/billing/helper/CreditCardData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public appServiceID:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

.field public extraData:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public libraryVersion:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private platformCode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public storeRequestID:Ljava/lang/String;

.field public testApk:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timeOffset:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public upServerURL:Ljava/lang/String;

.field public userInfo:Lcom/sec/android/app/billing/helper/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/sec/android/app/billing/helper/CreditCardData$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/CreditCardData$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/CreditCardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "A"

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->platformCode:Ljava/lang/String;

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/CreditCardData;
    .locals 2

    .line 45
    new-instance v0, Lcom/sec/android/app/billing/helper/CreditCardData;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/CreditCardData;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->appServiceID:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->country:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->language:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->libraryVersion:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->storeRequestID:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->testApk:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->timeOffset:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->upServerURL:Ljava/lang/String;

    .line 54
    const-class v1, Lcom/sec/android/app/billing/helper/DeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/DeviceInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

    .line 55
    const-class v1, Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/UserInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->userInfo:Lcom/sec/android/app/billing/helper/UserInfo;

    .line 56
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/billing/helper/CreditCardData;->platformCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 31
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->appServiceID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->libraryVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->storeRequestID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->testApk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->timeOffset:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->upServerURL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->userInfo:Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/CreditCardData;->platformCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
