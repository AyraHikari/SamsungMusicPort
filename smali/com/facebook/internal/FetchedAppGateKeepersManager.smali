.class public Lcom/facebook/internal/FetchedAppGateKeepersManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APPLICATION_GATEKEEPER_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final APPLICATION_GATEKEEPER_EDGE:Ljava/lang/String; = "mobile_sdk_gk"

.field private static final APPLICATION_GATEKEEPER_FIELD:Ljava/lang/String; = "gatekeepers"

.field private static final APPLICATION_GRAPH_DATA:Ljava/lang/String; = "data"

.field private static final APPLICATION_PLATFORM:Ljava/lang/String; = "platform"

.field private static final APPLICATION_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final APP_GATEKEEPERS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_GATEKEEPERS.%s"

.field private static final APP_GATEKEEPERS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_GATEKEEPERS"

.field private static final APP_PLATFORM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String;

.field private static final fetchedAppGateKeepers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static timestamp:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 43
    sput-object p0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method private static getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "platform"

    const-string v2, "android"

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_version"

    .line 154
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fields"

    const-string v2, "gatekeepers"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    .line 157
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "mobile_sdk_gk"

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 158
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 157
    invoke-static {v1, p0, v1}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 142
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V

    if-eqz p1, :cond_1

    .line 143
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method private static isTimestampValid(Ljava/lang/Long;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 201
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static declared-synchronized loadAppGateKeepersAsync()V
    .locals 6

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isTimestampValid(Ljava/lang/Long;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    monitor-exit v0

    return-void

    .line 68
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v4, 0x1

    .line 70
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;

    invoke-direct {v5, v1, v3, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v2, "data"

    .line 175
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, "gatekeepers"

    .line 181
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "gatekeepers"

    .line 182
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 183
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v2, :cond_2

    .line 185
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "key"

    .line 186
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "FacebookSDK"

    .line 188
    invoke-static {v4, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    :cond_2
    sget-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 169
    monitor-exit v0

    throw p0
.end method

.method public static queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    .line 116
    sget-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    sget-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v2, 0x1

    .line 126
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
