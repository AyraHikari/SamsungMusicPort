.class public Lcom/samsung/android/app/music/model/purchase/PricingType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/PricingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "pricingTypeCode"
    .end annotation
.end field

.field private mDiscountPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "discountPrice"
    .end annotation
.end field

.field private mOrderType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "orderType"
    .end annotation
.end field

.field private mPaymentPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "paymentPrice"
    .end annotation
.end field

.field private mPeriodType:Ljava/lang/String;

.field private mPeriodValue:I

.field private mSellingPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "sellingPrice"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/PricingType$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/PricingType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/PricingType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mCode:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mOrderType:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPeriodType:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPeriodValue:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mSellingPrice:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mDiscountPrice:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPaymentPrice:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/app/music/model/purchase/PricingType$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/purchase/PricingType;-><init>(Landroid/os/Parcel;)V

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

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDiscountPrice()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mDiscountPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mOrderType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPrice()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPaymentPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingTypeCode()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mCode:I

    return v0
.end method

.method public getSellingPrice()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mSellingPrice:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 81
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    iget p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mOrderType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPeriodType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPeriodValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mSellingPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mDiscountPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PricingType;->mPaymentPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
