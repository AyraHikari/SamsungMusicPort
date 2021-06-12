.class Lcom/facebook/share/ShareApi$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/facebook/share/ShareApi$10;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 3

    .line 617
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error staging Open Graph object."

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v2, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v2, p1, v0}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void

    .line 627
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    const-string v2, "Error staging Open Graph object."

    invoke-direct {v1, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void

    :cond_2
    const-string v1, "id"

    .line 634
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 636
    iget-object v0, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    const-string v2, "Error staging Open Graph object."

    invoke-direct {v1, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void

    .line 641
    :cond_3
    iget-object p1, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {p1, v0}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
