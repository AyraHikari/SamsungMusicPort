.class public Lcom/facebook/ShareGraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/GraphRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    const-string v0, "type"

    .line 57
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "og:type"

    .line 59
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    new-instance v1, Lcom/facebook/ShareGraphRequest$1;

    invoke-direct {v1}, Lcom/facebook/ShareGraphRequest$1;-><init>()V

    invoke-static {p0, v1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "object"

    .line 84
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "me"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "objects/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 91
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v2, p0, v1, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Open graph object type cannot be null"

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
