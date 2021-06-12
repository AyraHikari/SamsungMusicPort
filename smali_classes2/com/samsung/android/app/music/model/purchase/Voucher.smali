.class public Lcom/samsung/android/app/music/model/purchase/Voucher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Voucher"

.field public static final VOUCHER_CUTYPE_COMM:Ljava/lang/String; = "COMM"

.field public static final VOUCHER_CUTYPE_OFF:Ljava/lang/String; = "OFF"

.field public static final VOUCHER_READ:I = 0x0

.field public static final VOUCHER_STATUS_ACTIVE:Ljava/lang/String; = "01"

.field public static final VOUCHER_STATUS_EXPIRED:Ljava/lang/String; = "03"

.field public static final VOUCHER_STATUS_USED:Ljava/lang/String; = "02"

.field public static final VOUCHER_TYPE_BILLING:Ljava/lang/String; = "01"

.field public static final VOUCHER_TYPE_REDEEM:Ljava/lang/String; = "02"

.field public static final VOUCHER_UNREAD:I = 0x1


# instance fields
.field cuTypeCode:Ljava/lang/String;

.field expiryDate:Ljava/lang/String;

.field expiryDateLocal:Ljava/lang/String;

.field periodType:Ljava/lang/String;

.field periodValue:Ljava/lang/String;

.field pricingTypeCode:Ljava/lang/String;

.field productId:Ljava/lang/String;

.field promotionNotice:Ljava/lang/String;

.field read:I

.field startDate:Ljava/lang/String;

.field startDateLocal:Ljava/lang/String;

.field statusCode:Ljava/lang/String;

.field voucherCode:Ljava/lang/String;

.field voucherDesc:Ljava/lang/String;

.field voucherId:I

.field voucherTitle:Ljava/lang/String;

.field voucherType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/Voucher$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/Voucher$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/Voucher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherDesc:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->startDate:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->expiryDate:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->periodType:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->periodValue:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherType:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->statusCode:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->productId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->pricingTypeCode:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->cuTypeCode:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->promotionNotice:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->startDateLocal:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->expiryDateLocal:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->read:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCuTypeCode()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->cuTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDateLocal()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->expiryDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodType()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->periodType:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodValue()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->periodValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingTypeCode()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->pricingTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionNotice()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->promotionNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->read:I

    return v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDateLocal()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->startDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherCode()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherDesc()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherId()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherId:I

    return v0
.end method

.method public getVoucherTitle()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherType()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherType:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .line 195
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->read:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRead()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->read:I

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 213
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "voucherId"

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getVoucherId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "voucherCode"

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getVoucherCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "voucherTitle"

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getVoucherTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "voucherDesc"

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getVoucherDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startDate"

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expiryDate"

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "periodType"

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getPeriodType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "periodValue"

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getPeriodValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "voucherType"

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getVoucherType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statusCode"

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productId"

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pricingTypeCode"

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getPricingTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cuTypeCode"

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getCuTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "promotionNotice"

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getPromotionNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startDatelong"

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "startDateLocal"

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expiryDateLocal"

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Voucher;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voucher code - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", product Id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " voucher - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 93
    iget p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->startDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->expiryDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->periodType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->periodValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->voucherType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->statusCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->pricingTypeCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->cuTypeCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->promotionNotice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->startDateLocal:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->expiryDateLocal:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget p2, p0, Lcom/samsung/android/app/music/model/purchase/Voucher;->read:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
