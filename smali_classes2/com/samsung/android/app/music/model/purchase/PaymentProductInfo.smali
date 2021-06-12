.class public Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private optional1:Ljava/lang/String;

.field private pricingTypeInfo:Lcom/samsung/android/app/music/model/purchase/PricingType;

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productTitle:Ljava/lang/String;

.field private tax:Ljava/lang/String;

.field private taxAdded:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productDesc:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->tax:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->taxAdded:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->optional1:Ljava/lang/String;

    .line 37
    const-class v0, Lcom/samsung/android/app/music/model/purchase/PricingType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/purchase/PricingType;

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->pricingTypeInfo:Lcom/samsung/android/app/music/model/purchase/PricingType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getOptional1()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->optional1:Ljava/lang/String;

    return-object v0
.end method

.method public getPricing()Lcom/samsung/android/app/music/model/purchase/PricingType;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->pricingTypeInfo:Lcom/samsung/android/app/music/model/purchase/PricingType;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTax()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->tax:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxAdded()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->taxAdded:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->productDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->tax:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->taxAdded:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->optional1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->pricingTypeInfo:Lcom/samsung/android/app/music/model/purchase/PricingType;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
