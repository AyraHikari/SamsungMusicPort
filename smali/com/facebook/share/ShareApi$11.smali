.class Lcom/facebook/share/ShareApi$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


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

.field final synthetic val$ogType:Ljava/lang/String;

.field final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;

.field final synthetic val$stagedObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    .line 649
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "object"

    .line 651
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :try_start_0
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 654
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "objects/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 657
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {v1, v3}, Lcom/facebook/share/ShareApi;->access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v6, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 660
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error staging Open Graph object."

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method
