.class public Lcom/facebook/applinks/FacebookAppLinkResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_KEY:Ljava/lang/String; = "app_links"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-object p0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .locals 5

    const-string v0, "package"

    const/4 v1, 0x0

    .line 203
    invoke-static {p0, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "class"

    .line 208
    invoke-static {p0, v2, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    .line 209
    invoke-static {p0, v3, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 210
    invoke-static {p0, v4, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 213
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    :cond_1
    new-instance p0, Lbolts/AppLink$Target;

    invoke-direct {p0, v0, v2, v1, v3}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 2

    :try_start_0
    const-string v0, "web"

    .line 223
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "should_fallback"

    const/4 v1, 0x1

    .line 224
    invoke-static {p1, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "url"

    .line 232
    invoke-static {p1, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    move-object p0, p1

    :cond_2
    return-object p0

    :catch_0
    return-object p0
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 251
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/facebook/applinks/FacebookAppLinkResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->b(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 102
    iget-object v4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v5, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbolts/AppLink;

    .line 104
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 107
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2c

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 117
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    invoke-static {v0}, Lbolts/Task;->a(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 121
    :cond_3
    invoke-static {}, Lbolts/Task;->b()Lbolts/Task$TaskCompletionSource;

    move-result-object p1

    .line 123
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ids"

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fields"

    const-string v3, "%s.fields(%s,%s)"

    const/4 v4, 0x3

    .line 126
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "app_links"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "android"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "web"

    aput-object v7, v4, v5

    .line 128
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v2, Lcom/facebook/GraphRequest;

    .line 136
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    const-string v5, ""

    const/4 v7, 0x0

    new-instance v8, Lcom/facebook/applinks/FacebookAppLinkResolver$2;

    invoke-direct {v8, p0, p1, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 197
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 199
    invoke-virtual {p1}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
