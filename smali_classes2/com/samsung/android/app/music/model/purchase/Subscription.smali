.class public Lcom/samsung/android/app/music/model/purchase/Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISABLE:Ljava/lang/String; = "0"

.field public static final ENABLE:Ljava/lang/String; = "1"

.field public static final ORDER_STATUS_ACTIVE:Ljava/lang/String; = "02"

.field public static final ORDER_STATUS_CANCEL:Ljava/lang/String; = "03"

.field public static final ORDER_STATUS_DETAIL_ACTIVE:Ljava/lang/String; = "02"

.field public static final ORDER_STATUS_DETAIL_PAUSE:Ljava/lang/String; = "04"

.field public static final ORDER_STATUS_INACTIVE:Ljava/lang/String; = "01"

.field public static final ORDER_TYPE_POS:Ljava/lang/String; = "POS"

.field public static final ORDER_TYPE_SUB:Ljava/lang/String; = "SUB"

.field public static final PAYMENT_METHOD_DEFAULT:Ljava/lang/String; = "00"

.field public static final PAYMENT_METHOD_VOUCHER:Ljava/lang/String; = "01"

.field public static final STREAMING_CODE_0:Ljava/lang/String; = "0"

.field public static final STREAMING_CODE_1:Ljava/lang/String; = "1"

.field public static final STREAMING_CODE_2:Ljava/lang/String; = "2"


# instance fields
.field private downloadMaxCount:I

.field private drmProduct:Ljava/lang/String;

.field private dueDate:Ljava/lang/String;

.field private dueDateLocal:Ljava/lang/String;

.field private economyOfferCount:I

.field private economyPlayCount:I

.field private imageUrl:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private orderStatusDetail:Ljava/lang/String;

.field private orderType:Ljava/lang/String;

.field private paymentMethodCode:Ljava/lang/String;

.field private paymentMethodName:Ljava/lang/String;

.field private pricingTypeCode:I

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productTitle:Ljava/lang/String;

.field private purchasedPrice:Ljava/lang/String;

.field private reservedSubscriptionYn:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private startDateLocal:Ljava/lang/String;

.field private streamingCode:Ljava/lang/String;

.field private usageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "yyyy-MM-dd HH:mm:ss"

    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM/dd/yyyy hh:mm aa"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 215
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const-string p0, " "

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 225
    aget-object p0, p0, p1

    const-string p1, "-"

    const-string v0, "."

    .line 226
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getReservedYn()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->reservedSubscriptionYn:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDownloadMaxCount()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->downloadMaxCount:I

    return v0
.end method

.method public getDrmProduct()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->drmProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDateLocal()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->dueDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getEconomyOfferCount()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->economyOfferCount:I

    return v0
.end method

.method public getEconomyPlayCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->economyPlayCount:I

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->orderStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatusDetail()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->orderStatusDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->orderType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodCode()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->paymentMethodCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->paymentMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingTypeCode()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->pricingTypeCode:I

    return v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductImgUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasedPrice()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->purchasedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDateLocal()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->startDateLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingCode()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->streamingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageCount()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->usageCount:I

    return v0
.end method

.method public isReserved()Z
    .locals 2

    const-string v0, "1"

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->reservedSubscriptionYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOrderStatusDetail(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->orderStatusDetail:Ljava/lang/String;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 233
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "orderId"

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productId"

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productTitle"

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getProductTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productDesc"

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getProductDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productImgUrl"

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getProductImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pricingTypeCode"

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getPricingTypeCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "orderType"

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getOrderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "purchasedPrice"

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getPurchasedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startDate"

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dueDate"

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getDueDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderStatus"

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "paymentMethodCode"

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getPaymentMethodCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usageCount"

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getUsageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "downloadMaxCount"

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getDownloadMaxCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "streamingCode"

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getStreamingCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderStatusDetail"

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getOrderStatusDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startDateLocal"

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dueDateLocal"

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getDueDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "drmProduct"

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getDrmProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "economyOfferCnt"

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getEconomyOfferCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "economyPlayCnt"

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getEconomyPlayCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "reserved"

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getReservedYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "paymentMethodName"

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/purchase/Subscription;->getPaymentMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "product id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/Subscription;->productTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
