.class public Lcom/sec/android/app/billing/helper/ProductInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public currency:Ljava/lang/String;

.field public detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

.field public tax:Ljava/lang/String;

.field public taxIncluded:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/sec/android/app/billing/helper/ProductInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/ProductInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/ProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ProductInfo;
    .locals 4

    .line 28
    new-instance v0, Lcom/sec/android/app/billing/helper/ProductInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/ProductInfo;-><init>()V

    .line 29
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->currency:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->tax:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->taxIncluded:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->totalAmount:Ljava/lang/String;

    .line 33
    const-class v1, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 35
    array-length v1, p0

    new-array v1, v1, [Lcom/sec/android/app/billing/helper/DetailProductInfos;

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    const/4 v1, 0x0

    .line 36
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    iget-object v2, v0, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    aget-object v3, p0, v1

    check-cast v3, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
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

    .line 20
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->tax:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->taxIncluded:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->totalAmount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
