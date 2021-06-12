.class Lcom/facebook/share/ShareApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/facebook/share/ShareApi$1;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 2

    .line 233
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "id"

    .line 234
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/facebook/share/ShareApi$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v1, v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    return-void
.end method
