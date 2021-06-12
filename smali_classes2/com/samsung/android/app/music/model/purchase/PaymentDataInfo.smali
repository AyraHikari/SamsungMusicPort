.class public Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final ALREADY_PURCHASED:I = 0x2199

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORT_REWARDS_PAYMENT:Ljava/lang/String; = "1"


# instance fields
.field private addGiftcardUrl:Ljava/lang/String;

.field private baseString:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private curTime:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private exceptionPaymentMethods:Ljava/lang/String;

.field private getGiftcardUrl:Ljava/lang/String;

.field private notifyUrl:Ljava/lang/String;

.field private paymentType:Ljava/lang/String;

.field private productInfo:Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

.field private requestUrl:Ljava/lang/String;

.field private rewardYn:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private voucherId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->baseString:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->signature:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->timestamp:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->curTime:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->paymentType:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->currency:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->countryCode:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getGiftcardUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->addGiftcardUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->requestUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->notifyUrl:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->exceptionPaymentMethods:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->productInfo:Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->rewardYn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/samsung/android/app/music/model/ResponseModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 131
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAddGiftcardUrl()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->addGiftcardUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseString()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->baseString:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurTime()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->curTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionPaymentMethods()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->exceptionPaymentMethods:Ljava/lang/String;

    return-object v0
.end method

.method public getGetGiftcardUrl()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getGiftcardUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/samsung/android/app/music/model/ResponseModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyUrl()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->notifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfo()Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->productInfo:Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v0

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherId()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 136
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isRewardsPaySupported()Z
    .locals 2

    const-string v0, "1"

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->rewardYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setVoucherId(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->baseString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->curTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->paymentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getGiftcardUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->addGiftcardUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->requestUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->notifyUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->exceptionPaymentMethods:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->productInfo:Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->voucherId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->rewardYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
