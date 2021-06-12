.class final Lcom/facebook/internal/FetchedAppGateKeepersManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gateKeepersKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$context:Landroid/content/Context;

    const-string v1, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "FacebookSDK"

    .line 88
    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    if-eqz v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$202(Ljava/lang/Long;)Ljava/lang/Long;

    .line 99
    iget-object v2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
