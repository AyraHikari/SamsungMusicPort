.class Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishUnlikeRequestWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field private unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .locals 3

    .line 1451
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v0, 0x0

    .line 1452
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1454
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1456
    new-instance p1, Lcom/facebook/GraphRequest;

    .line 1457
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1456
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .line 1469
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1470
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error unliking object with unlike token \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1469
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1472
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .locals 0

    return-void
.end method
