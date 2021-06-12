.class public Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public appServiceID:Ljava/lang/String;

.field public billingServerInfo:Lcom/sec/android/app/billing/helper/BillingServerInfo;

.field public deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

.field public extraData:Ljava/lang/String;

.field public libraryVersion:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public paymentInfo:Lcom/sec/android/app/billing/helper/PaymentInfo;

.field private platformCode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public productInfo:Lcom/sec/android/app/billing/helper/ProductInfo;

.field public sandBoxData:Lcom/sec/android/app/billing/helper/SandBoxData;

.field public serviceStoreInfo:Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

.field public signatureInfo:Lcom/sec/android/app/billing/helper/SignatureInfo;

.field public storeRequestID:Ljava/lang/String;

.field public testApk:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timeOffset:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public userInfo:Lcom/sec/android/app/billing/helper/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/UnifiedPaymentData$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "A"

    .line 24
    iput-object v0, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->platformCode:Ljava/lang/String;

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .locals 2

    .line 52
    new-instance v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->appServiceID:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->extraData:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->libraryVersion:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->storeRequestID:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->testApk:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->timeOffset:Ljava/lang/String;

    .line 59
    const-class v1, Lcom/sec/android/app/billing/helper/BillingServerInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/BillingServerInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->billingServerInfo:Lcom/sec/android/app/billing/helper/BillingServerInfo;

    .line 60
    const-class v1, Lcom/sec/android/app/billing/helper/DeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/DeviceInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

    .line 61
    const-class v1, Lcom/sec/android/app/billing/helper/PaymentInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/PaymentInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->paymentInfo:Lcom/sec/android/app/billing/helper/PaymentInfo;

    .line 62
    const-class v1, Lcom/sec/android/app/billing/helper/ProductInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/ProductInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->productInfo:Lcom/sec/android/app/billing/helper/ProductInfo;

    .line 63
    const-class v1, Lcom/sec/android/app/billing/helper/SandBoxData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/SandBoxData;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->sandBoxData:Lcom/sec/android/app/billing/helper/SandBoxData;

    .line 64
    const-class v1, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->serviceStoreInfo:Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    .line 65
    const-class v1, Lcom/sec/android/app/billing/helper/SignatureInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/SignatureInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->signatureInfo:Lcom/sec/android/app/billing/helper/SignatureInfo;

    .line 66
    const-class v1, Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/billing/helper/UserInfo;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->userInfo:Lcom/sec/android/app/billing/helper/UserInfo;

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->platformCode:Ljava/lang/String;

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

    .line 34
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->appServiceID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->extraData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->libraryVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->storeRequestID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->testApk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->timeOffset:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->billingServerInfo:Lcom/sec/android/app/billing/helper/BillingServerInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->paymentInfo:Lcom/sec/android/app/billing/helper/PaymentInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->productInfo:Lcom/sec/android/app/billing/helper/ProductInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->sandBoxData:Lcom/sec/android/app/billing/helper/SandBoxData;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->serviceStoreInfo:Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->signatureInfo:Lcom/sec/android/app/billing/helper/SignatureInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->userInfo:Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->platformCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
