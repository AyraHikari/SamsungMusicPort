.class public Lcom/facebook/appevents/AppEventsLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;,
        Lcom/facebook/appevents/AppEventsLogger$ProductCondition;,
        Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;,
        Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field private static final APP_EVENT_NAME_PUSH_OPENED:Ljava/lang/String; = "fb_mobile_push_opened"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final APP_EVENT_PUSH_PARAMETER_ACTION:Ljava/lang/String; = "fb_push_action"

.field private static final APP_EVENT_PUSH_PARAMETER_CAMPAIGN:Ljava/lang/String; = "fb_push_campaign"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final PUSH_PAYLOAD_CAMPAIGN_KEY:Ljava/lang/String; = "campaign"

.field private static final PUSH_PAYLOAD_KEY:Ljava/lang/String; = "fb_push_payload"

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String;

.field private static anonymousAppDeviceGUID:Ljava/lang/String;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static isActivateAppEventRequested:Z

.field private static isOpenedByAppLink:Z

.field private static pushNotificationsRegistrationId:Ljava/lang/String;

.field private static sourceApplication:Ljava/lang/String;

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field private final contextName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1214
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1213
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1224
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 1227
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 1231
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1232
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1234
    :cond_1
    new-instance p1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {p1, p3}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 1239
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1238
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 1241
    :cond_3
    new-instance p1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 1244
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/appevents/AppEventsLogger;J)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionSuspendEvent(J)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 149
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 149
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static activateApp(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static activateApp(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .line 261
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V

    .line 267
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initStore()V

    if-nez p1, :cond_0

    .line 270
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static activateApp(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v0, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 305
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string p1, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 329
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V

    .line 330
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initStore()V

    .line 332
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 333
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->setSourceApplication(Landroid/app/Activity;)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 337
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_0
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 349
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getSourceApplication()Ljava/lang/String;

    move-result-object v1

    .line 350
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/facebook/appevents/AppEventsLogger$1;

    invoke-direct {v3, v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger$1;-><init>(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 326
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both context and applicationId must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static augmentWebView(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 5

    .line 1001
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1002
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1003
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1005
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    const/4 v0, 0x4

    if-lt v1, v0, :cond_3

    if-ne v1, v0, :cond_2

    if-gt v2, v4, :cond_2

    goto :goto_1

    .line 1012
    :cond_2
    new-instance v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/FacebookSDKJSInterface;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fbmq_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1012
    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1007
    :cond_3
    :goto_1
    sget-object p0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object p1, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v0, "augmentWebView is only available for Android SDK version >= 17 on devices running Android >= 4.2"

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static clearUserData()V
    .locals 0

    .line 1118
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->clear()V

    return-void
.end method

.method public static clearUserID()V
    .locals 1

    const/4 v0, 0x0

    .line 1039
    invoke-static {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method public static deactivateApp(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v0, "deactivateApp events are being logged automatically. There\'s no need to call deactivateApp, this is safe to remove."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static deactivateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string p1, "deactivateApp events are being logged automatically. There\'s no need to call deactivateApp, this is safe to remove."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 405
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 407
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 409
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/facebook/appevents/AppEventsLogger$2;

    invoke-direct {v2, v0, p0, p1}, Lcom/facebook/appevents/AppEventsLogger$2;-><init>(Lcom/facebook/appevents/AppEventsLogger;J)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 402
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both context and applicationId must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static eagerFlush()V
    .locals 2

    .line 1340
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_0

    .line 1341
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V

    :cond_0
    return-void
.end method

.method static getAnalyticsExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1427
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 1428
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V

    .line 1431
    :cond_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1442
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1443
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    .line 1446
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "anonymousAppDeviceGUID"

    const/4 v4, 0x0

    .line 1449
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1450
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XZ"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    const-string v1, "com.facebook.sdk.appEventPreferences"

    .line 1454
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1455
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "anonymousAppDeviceGUID"

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1456
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1457
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1460
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1463
    :cond_1
    :goto_0
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    return-object p0
.end method

.method public static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 2

    .line 578
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getPushNotificationsRegistrationId()Ljava/lang/String;
    .locals 2

    .line 984
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->pushNotificationsRegistrationId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 986
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getSourceApplication()Ljava/lang/String;
    .locals 2

    const-string v0, "Unclassified"

    .line 1412
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByAppLink:Z

    if-eqz v1, :cond_0

    const-string v0, "Applink"

    .line 1415
    :cond_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static getUserData()Ljava/lang/String;
    .locals 1

    .line 1111
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->getHashedUserData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .line 1032
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeLib(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 443
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 447
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p1, Lcom/facebook/appevents/AppEventsLogger$3;

    invoke-direct {p1, v0}, Lcom/facebook/appevents/AppEventsLogger$3;-><init>(Lcom/facebook/appevents/AppEventsLogger;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initializeTimersIfNeeded()V
    .locals 10

    .line 1248
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 1250
    monitor-exit v0

    return-void

    .line 1255
    :cond_0
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    new-instance v4, Lcom/facebook/appevents/AppEventsLogger$5;

    invoke-direct {v4}, Lcom/facebook/appevents/AppEventsLogger$5;-><init>()V

    .line 1272
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x15180

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v1

    .line 1256
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logAppSessionResumeEvent(JLjava/lang/String;)V
    .locals 6

    .line 419
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    .line 418
    invoke-static/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onResume(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    return-void
.end method

.method private logAppSessionSuspendEvent(J)V
    .locals 2

    .line 428
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 427
    invoke-static {v0, v1, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V

    return-void
.end method

.method private static logEvent(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    .locals 1

    .line 1323
    invoke-static {p1, p0}, Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 1326
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/facebook/appevents/AppEventsLogger;->isActivateAppEventRequested:Z

    if-nez p1, :cond_1

    .line 1327
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fb_mobile_activate_app"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 1328
    sput-boolean p0, Lcom/facebook/appevents/AppEventsLogger;->isActivateAppEventRequested:Z

    goto :goto_0

    .line 1330
    :cond_0
    sget-object p0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string p1, "AppEvents"

    const-string v0, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 12
    .param p5    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1299
    :try_start_0
    new-instance v0, Lcom/facebook/appevents/AppEvent;

    iget-object v5, v1, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    .line 1305
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isInBackground()Z

    move-result v10

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 1307
    iget-object v4, v1, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-static {v0, v4}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1315
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "Invalid app event: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1316
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1315
    invoke-static {v4, v5, v6, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1310
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "JSON encoding for app event failed: \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1311
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1310
    invoke-static {v4, v5, v6, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "purchaseAmount cannot be null"

    .line 769
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "currency cannot be null"

    .line 772
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 777
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_2
    move-object v3, p3

    const-string p3, "fb_currency"

    .line 779
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_purchase"

    .line 783
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 786
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move v4, p4

    .line 781
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 787
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->eagerFlush()V

    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2

    .line 511
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2

    .line 523
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2

    .line 556
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 1

    .line 542
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 2

    .line 1351
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onContextStop()V
    .locals 0

    .line 948
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->persistToDisk()V

    return-void
.end method

.method static resetSourceApplication()V
    .locals 1

    const/4 v0, 0x0

    .line 1422
    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1423
    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByAppLink:Z

    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V
    .locals 1

    .line 590
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 592
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setPushNotificationsRegistrationId(Ljava/lang/String;)V
    .locals 3

    .line 966
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->pushNotificationsRegistrationId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 969
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->pushNotificationsRegistrationId:Ljava/lang/String;

    .line 972
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 971
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    const-string v1, "fb_mobile_obtain_push_token"

    .line 974
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 975
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v1

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v1, v2, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    .line 980
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setSourceApplication(Landroid/app/Activity;)V
    .locals 3

    .line 1359
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1361
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1362
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    return-void

    .line 1367
    :cond_0
    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1373
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "_fbSourceApplicationHasBeenSet"

    const/4 v1, 0x0

    .line 1375
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1380
    :cond_2
    invoke-static {p0}, Lbolts/AppLinks;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1383
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 1387
    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByAppLink:Z

    const-string v2, "referer_app_link"

    .line 1389
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    .line 1392
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    return-void

    :cond_4
    const-string v2, "package"

    .line 1396
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    const-string v0, "_fbSourceApplicationHasBeenSet"

    .line 1400
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    .line 1376
    :cond_5
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    return-void
.end method

.method static setSourceApplication(Ljava/lang/String;Z)V
    .locals 0

    .line 1406
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1407
    sput-boolean p1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByAppLink:Z

    return-void
.end method

.method public static setUserData(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1063
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V

    return-void
.end method

.method public static setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1094
    invoke-static/range {p0 .. p9}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 0

    .line 1025
    invoke-static {p0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method public static updateUserProperties(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)V
    .locals 1

    .line 1126
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1124
    invoke-static {p0, v0, p1}, Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public static updateUserProperties(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
    .locals 2

    .line 1134
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$4;-><init>(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 936
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EXPLICIT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V

    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidForAccessToken(Lcom/facebook/AccessToken;)Z
    .locals 1

    .line 957
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    .line 958
    iget-object p1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {p1, v0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6

    .line 678
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 681
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 676
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 651
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 646
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void
.end method

.method protected logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 6

    .line 1286
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1289
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 1284
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void
.end method

.method public logProductItem(Ljava/lang/String;Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;Lcom/facebook/appevents/AppEventsLogger$ProductCondition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "itemID cannot be null"

    .line 870
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "availability cannot be null"

    .line 873
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "condition cannot be null"

    .line 876
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p4, :cond_3

    const-string p1, "description cannot be null"

    .line 879
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p5, :cond_4

    const-string p1, "imageLink cannot be null"

    .line 882
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p6, :cond_5

    const-string p1, "link cannot be null"

    .line 885
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez p7, :cond_6

    const-string p1, "title cannot be null"

    .line 888
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_6
    if-nez p8, :cond_7

    const-string p1, "priceAmount cannot be null"

    .line 891
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_7
    if-nez p9, :cond_8

    const-string p1, "currency cannot be null"

    .line 894
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez p10, :cond_9

    if-nez p11, :cond_9

    if-nez p12, :cond_9

    const-string p1, "Either gtin, mpn or brand is required"

    .line 897
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_9
    if-nez p13, :cond_a

    .line 902
    new-instance p13, Landroid/os/Bundle;

    invoke-direct {p13}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const-string v0, "fb_product_item_id"

    .line 904
    invoke-virtual {p13, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_availability"

    .line 905
    invoke-virtual {p2}, Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_condition"

    .line 906
    invoke-virtual {p3}, Lcom/facebook/appevents/AppEventsLogger$ProductCondition;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_description"

    .line 907
    invoke-virtual {p13, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_image_link"

    .line 908
    invoke-virtual {p13, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_link"

    .line 909
    invoke-virtual {p13, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_title"

    .line 910
    invoke-virtual {p13, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_price_amount"

    const/4 p2, 0x3

    const/4 p3, 0x4

    .line 912
    invoke-virtual {p8, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p2

    .line 911
    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_price_currency"

    .line 914
    invoke-virtual {p9}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    .line 913
    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_b

    const-string p1, "fb_product_gtin"

    .line 916
    invoke-virtual {p13, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p11, :cond_c

    const-string p1, "fb_product_mpn"

    .line 919
    invoke-virtual {p13, p1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p12, :cond_d

    const-string p1, "fb_product_brand"

    .line 922
    invoke-virtual {p13, p1, p12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string p1, "fb_mobile_catalog_update"

    .line 925
    invoke-virtual {p0, p1, p13}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 928
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->eagerFlush()V

    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 2

    .line 694
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v1, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don\'t log duplicate events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 698
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 2

    .line 715
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v1, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don\'t log duplicate events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 719
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "Function logPurchaseImplicitly() is deprecated and your purchase events cannot be logged with this function. "

    .line 734
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Auto-logging of in-app purchase has been enabled in the SDK, so you don\'t have to manually log purchases"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 738
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Please use logPurchase() function instead."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    :goto_0
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logPurchaseImplicitlyInternal(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 746
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public logPushNotificationOpen(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPushNotificationOpen(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logPushNotificationOpen(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "fb_push_payload"

    .line 805
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 810
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "campaign"

    .line 811
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 816
    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v0, "Malformed payload specified for logging a push notification open."

    invoke-static {p1, p2, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 821
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_push_campaign"

    .line 822
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p1, "fb_push_action"

    .line 824
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "fb_mobile_push_opened"

    .line 826
    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .line 1193
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1188
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void
.end method
