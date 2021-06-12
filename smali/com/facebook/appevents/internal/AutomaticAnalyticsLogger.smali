.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    .line 51
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance p1, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "fb_iap_product_id"

    const-string v2, "productId"

    .line 174
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_purchase_time"

    const-string v2, "purchaseTime"

    .line 177
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_purchase_token"

    const-string v2, "purchaseToken"

    .line 180
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_package_name"

    const-string v2, "packageName"

    .line 183
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_product_title"

    const-string v2, "title"

    .line 186
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_product_description"

    const-string v2, "description"

    .line 189
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "type"

    .line 191
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb_iap_product_type"

    .line 192
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "subs"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fb_iap_subs_auto_renewing"

    const-string v2, "autoRenewing"

    const/4 v3, 0x0

    .line 198
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "fb_iap_subs_period"

    const-string v1, "subscriptionPeriod"

    .line 202
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "fb_free_trial_period"

    const-string v1, "freeTrialPeriod"

    .line 205
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "introductoryPriceCycles"

    .line 207
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fb_intro_price_amount_micros"

    const-string v2, "introductoryPriceAmountMicros"

    .line 211
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_intro_price_cycles"

    .line 212
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    new-instance v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "price_amount_micros"

    .line 219
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v2, "price_currency_code"

    .line 220
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 223
    sget-object p1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v0, "Error parsing in-app subscription data."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isImplicitPurchaseLoggingEnabled()Z
    .locals 2

    .line 153
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getIAPAutomaticLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logActivateAppEvent()V
    .locals 4

    .line 54
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    const-string v3, "context"

    .line 57
    invoke-static {v0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 59
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 60
    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .locals 3

    .line 74
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    .line 76
    invoke-static {v0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 77
    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 82
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fb_aa_time_spent_view_name"

    .line 84
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "fb_aa_time_spent_on_view"

    long-to-double p1, p1

    .line 85
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 101
    sget-object p1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    iget-object v0, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->purchaseAmount:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->currency:Ljava/util/Currency;

    iget-object p0, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->param:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, p0}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logPurchaseImplicitlyInternal(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public static logPurchaseSubs(Lcom/facebook/appevents/internal/SubscriptionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->$SwitchMap$com$facebook$appevents$internal$SubscriptionType:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/internal/SubscriptionType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 135
    :pswitch_0
    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p0, "SubscriptionExpire"

    goto :goto_0

    :pswitch_2
    const-string p0, "SubscriptionHeartbeat"

    goto :goto_0

    :pswitch_3
    const-string p0, "SubscriptionCancel"

    goto :goto_0

    :pswitch_4
    const-string p0, "SubscriptionRestore"

    .line 141
    :goto_0
    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    sget-object p2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    iget-object v0, p1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->purchaseAmount:Ljava/math/BigDecimal;

    iget-object v1, p1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->currency:Ljava/util/Currency;

    iget-object p1, p1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->param:Landroid/os/Bundle;

    invoke-virtual {p2, p0, v0, v1, p1}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
