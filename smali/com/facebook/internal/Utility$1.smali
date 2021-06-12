.class final Lcom/facebook/internal/Utility$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/facebook/internal/Utility$1;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    iput-object p2, p0, Lcom/facebook/internal/Utility$1;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 2

    .line 975
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/facebook/internal/Utility$1;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onFailure(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/Utility$1;->val$accessToken:Ljava/lang/String;

    .line 980
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 978
    invoke-static {v0, v1}, Lcom/facebook/internal/ProfileInformationCache;->putProfileInformation(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 981
    iget-object v0, p0, Lcom/facebook/internal/Utility$1;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
