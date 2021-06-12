.class Lcom/facebook/appevents/codeless/ViewIndexer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

.field final synthetic val$tree:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v2}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_indexing"

    .line 196
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/appevents/codeless/ViewIndexer;->buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v1

    .line 201
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v1, "true"

    const-string v3, "success"

    .line 203
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Successfully send UI component tree to server"

    invoke-static {v1, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v1, v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$402(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v0, "is_app_indexing_enabled"

    .line 209
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "is_app_indexing_enabled"

    .line 211
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->updateAppIndexing(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending UI component tree to Facebook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error decoding server response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method
