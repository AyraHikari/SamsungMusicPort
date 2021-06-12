.class final Lcom/facebook/UserSettingsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/UserSettingsManager;->initializeCodelessSepupEnabledAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currTime:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 124
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$000()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 137
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "advertiser_id"

    .line 139
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fields"

    const-string v4, "auto_event_setup_enabled"

    .line 140
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v2, v0, v2}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 145
    invoke-virtual {v0, v3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v2

    const-string v3, "auto_event_setup_enabled"

    .line 149
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 150
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    iput-wide v1, v0, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    .line 151
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->access$200(Lcom/facebook/UserSettingsManager$UserSetting;)V

    :cond_1
    return-void
.end method
