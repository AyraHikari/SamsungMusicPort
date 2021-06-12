.class public Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/app/music/model/UserInfo;Ljava/lang/String;)Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
            ">;",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/android/app/billing/helper/UnifiedPaymentData;"
        }
    .end annotation

    const-string v0, "UnifiedPaymentDataUtil"

    const-string v1, "createtUnifiedPaymentData is called"

    .line 79
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getPricing()Lcom/samsung/android/app/music/model/purchase/PricingType;

    move-result-object v3

    .line 87
    new-instance v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;

    invoke-direct {v4}, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;-><init>()V

    const-string v5, "12yndwlwd1"

    .line 89
    iput-object v5, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->appServiceID:Ljava/lang/String;

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->storeRequestID:Ljava/lang/String;

    .line 93
    new-instance v5, Lcom/sec/android/app/billing/helper/ProductInfo;

    invoke-direct {v5}, Lcom/sec/android/app/billing/helper/ProductInfo;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sec/android/app/billing/helper/DetailProductInfos;

    iput-object p1, v5, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    .line 99
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PricingType;->getPaymentPrice()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    add-double/2addr v6, v8

    .line 101
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/sec/android/app/billing/helper/ProductInfo;->totalAmount:Ljava/lang/String;

    .line 102
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getTaxAdded()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/sec/android/app/billing/helper/ProductInfo;->taxIncluded:Ljava/lang/String;

    .line 103
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/sec/android/app/billing/helper/ProductInfo;->currency:Ljava/lang/String;

    .line 106
    new-instance p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;

    invoke-direct {p1}, Lcom/sec/android/app/billing/helper/DetailProductInfos;-><init>()V

    .line 107
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productID:Ljava/lang/String;

    .line 108
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getProductTitle()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    .line 110
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 112
    :cond_0
    iput-object v6, p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;->productName:Ljava/lang/String;

    .line 113
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PricingType;->getPaymentPrice()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;->amount:Ljava/lang/String;

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getTax()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;->tax:Ljava/lang/String;

    .line 115
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PricingType;->getPricingTypeCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;->pricingTypeCode:Ljava/lang/String;

    .line 118
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getOptional1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/billing/helper/DetailProductInfos;->optional1:Ljava/lang/String;

    .line 127
    iget-object v2, v5, Lcom/sec/android/app/billing/helper/ProductInfo;->detailProductInfos:[Lcom/sec/android/app/billing/helper/DetailProductInfos;

    aput-object p1, v2, v0

    .line 129
    iput-object v5, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->productInfo:Lcom/sec/android/app/billing/helper/ProductInfo;

    .line 132
    new-instance p1, Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-direct {p1}, Lcom/sec/android/app/billing/helper/UserInfo;-><init>()V

    .line 133
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/billing/helper/UserInfo;->userID:Ljava/lang/String;

    .line 134
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/android/app/billing/helper/UserInfo;->userEmail:Ljava/lang/String;

    const-string p2, "12yndwlwd1"

    .line 135
    iput-object p2, p1, Lcom/sec/android/app/billing/helper/UserInfo;->authAppID:Ljava/lang/String;

    .line 136
    iput-object p3, p1, Lcom/sec/android/app/billing/helper/UserInfo;->accessToken:Ljava/lang/String;

    .line 137
    iput-object p1, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->userInfo:Lcom/sec/android/app/billing/helper/UserInfo;

    .line 140
    new-instance p1, Lcom/sec/android/app/billing/helper/BillingServerInfo;

    invoke-direct {p1}, Lcom/sec/android/app/billing/helper/BillingServerInfo;-><init>()V

    .line 142
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 144
    iput-object p2, p1, Lcom/sec/android/app/billing/helper/BillingServerInfo;->upServerURL:Ljava/lang/String;

    const-string p3, "UnifiedPaymentDataUtil"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createtUnifiedPaymentData upserver : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    iput-object p1, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->billingServerInfo:Lcom/sec/android/app/billing/helper/BillingServerInfo;

    .line 150
    new-instance p1, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    invoke-direct {p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;-><init>()V

    .line 151
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->country:Ljava/lang/String;

    .line 153
    new-instance p2, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    invoke-direct {p2}, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;-><init>()V

    .line 155
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p3

    const-string v2, "httpsTrustAllCertsEnabled"

    .line 157
    invoke-virtual {p3, v2, v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    const-string p3, "https://"

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "UnifiedPaymentDataUtil"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeUrl : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->requestOrderURL:Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getNotifyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->notiPaymentResultURL:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getAddGiftcardUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->addGiftCardnCouponURL:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getGetGiftcardUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/sec/android/app/billing/helper/BillingInterfaceURL;->getGiftCardnCouponURL:Ljava/lang/String;

    .line 174
    iput-object p2, p1, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->billingInterfaceURL:Lcom/sec/android/app/billing/helper/BillingInterfaceURL;

    .line 176
    iput-object p1, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->serviceStoreInfo:Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    .line 179
    new-instance p1, Lcom/sec/android/app/billing/helper/DeviceInfo;

    invoke-direct {p1}, Lcom/sec/android/app/billing/helper/DeviceInfo;-><init>()V

    .line 180
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/android/app/billing/helper/DeviceInfo;->deviceUID:Ljava/lang/String;

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/android/app/billing/helper/DeviceInfo;->channelID:Ljava/lang/String;

    .line 182
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/android/app/billing/helper/DeviceInfo;->shopID:Ljava/lang/String;

    .line 184
    invoke-static {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 186
    iput-object p2, p1, Lcom/sec/android/app/billing/helper/DeviceInfo;->mcc:Ljava/lang/String;

    .line 188
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 190
    iput-object p3, p1, Lcom/sec/android/app/billing/helper/DeviceInfo;->mnc:Ljava/lang/String;

    :cond_3
    const-string v0, "UnifiedPaymentDataUtil"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createtUnifiedPaymentData mcc : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mnc : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "window"

    .line 198
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 199
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 201
    iget p3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 202
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/android/app/billing/helper/DeviceInfo;->displayType:Ljava/lang/String;

    .line 205
    iput-object p1, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->deviceInfo:Lcom/sec/android/app/billing/helper/DeviceInfo;

    .line 208
    new-instance p0, Lcom/sec/android/app/billing/helper/PaymentInfo;

    invoke-direct {p0}, Lcom/sec/android/app/billing/helper/PaymentInfo;-><init>()V

    .line 209
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getPaymentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->paymentType:Ljava/lang/String;

    const-string p1, "SUB"

    .line 211
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PricingType;->getOrderType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 212
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getCurTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionStartDate:Ljava/lang/String;

    :cond_4
    const-string p1, "Y"

    .line 215
    iput-object p1, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->giftCardnCouponYN:Ljava/lang/String;

    .line 217
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getExceptionPaymentMethods()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 218
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getExceptionPaymentMethods()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->exceptionPaymentMethods:Ljava/lang/String;

    const-string p1, "UnifiedPaymentDataUtil"

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createtUnifiedPaymentData  exceptionPaymentMethods : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->exceptionPaymentMethods:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "N"

    .line 222
    iput-object p1, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->confirmPasswordYN:Ljava/lang/String;

    .line 223
    iput-object p0, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->paymentInfo:Lcom/sec/android/app/billing/helper/PaymentInfo;

    const-string p1, "UnifiedPaymentDataUtil"

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createtUnifiedPaymentData paymentInfo.paymentType : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->paymentType:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance p0, Lcom/sec/android/app/billing/helper/SignatureInfo;

    invoke-direct {p0}, Lcom/sec/android/app/billing/helper/SignatureInfo;-><init>()V

    .line 230
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getTimestamp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/billing/helper/SignatureInfo;->timeStamp:Ljava/lang/String;

    .line 231
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getBaseString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/billing/helper/SignatureInfo;->baseString:Ljava/lang/String;

    .line 232
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/billing/helper/SignatureInfo;->signature:Ljava/lang/String;

    .line 233
    iput-object p0, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->signatureInfo:Lcom/sec/android/app/billing/helper/SignatureInfo;

    .line 235
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 239
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getVoucherId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "0"

    .line 240
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getVoucherId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "selectedVoucherId"

    .line 241
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getVoucherId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "UnifiedPaymentDataUtil"

    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extraData : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->extraData:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->isRewardsPaySupported()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "rewards"

    const-string p2, "Y"

    .line 247
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 253
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/sec/android/app/billing/helper/UnifiedPaymentData;->extraData:Ljava/lang/String;

    :cond_8
    const-string p0, "UnifiedPaymentDataUtil"

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createtUnifiedPaymentData"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static a(D)Ljava/lang/String;
    .locals 1

    .line 261
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "M|"

    .line 269
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 270
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "UnifiedPaymentDataUtil"

    const-string v0, "table type of billing ui requested"

    .line 272
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "T|"

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 279
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->a(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v0, "billingserver"

    const-string v1, ""

    .line 288
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
