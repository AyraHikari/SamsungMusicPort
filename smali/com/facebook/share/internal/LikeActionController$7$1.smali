.class Lcom/facebook/share/internal/LikeActionController$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$7;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$7;

.field final synthetic val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$7;Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 3

    .line 1031
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1033
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1037
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V

    goto :goto_0

    .line 1039
    :cond_0
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1040
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1041
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1043
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {p1}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string v0, "fb_like_control_did_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v2, v2, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1050
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
