.class final Lcom/facebook/appevents/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationID:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;

.field final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$parameters:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$applicationID:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1137
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1138
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user_unique_id"

    .line 1147
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "custom_data"

    .line 1148
    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1152
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "advertiser_id"

    .line 1156
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1161
    :try_start_0
    invoke-static {v1}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1162
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1163
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "data"

    .line 1166
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1172
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/user_properties"

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$applicationID:Ljava/lang/String;

    aput-object v7, v3, v5

    .line 1173
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v8, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 1177
    invoke-virtual {v0, v9}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 1178
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void

    :catch_0
    move-exception v0

    .line 1168
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Failed to construct request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1139
    :cond_2
    :goto_0
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 1141
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppEventsLogger userID cannot be null or empty"

    .line 1139
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
