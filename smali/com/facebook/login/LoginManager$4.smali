.class Lcom/facebook/login/LoginManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$logger:Lcom/facebook/login/LoginLogger;

.field final synthetic val$loggerRef:Ljava/lang/String;

.field final synthetic val$responseCallback:Lcom/facebook/LoginStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/facebook/login/LoginManager$4;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    iput-object p5, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 11

    if-eqz p1, :cond_4

    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    .line 742
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 744
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 746
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v3, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/login/LoginManager;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 754
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 755
    new-instance v1, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    .line 760
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "signed request"

    .line 762
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    .line 763
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v1, v6}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    const/4 v1, 0x0

    .line 768
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 770
    invoke-static {v0}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 773
    :goto_0
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v5, :cond_3

    .line 775
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 776
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 777
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v3, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 787
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 789
    invoke-static {p1}, Lcom/facebook/login/LoginManager;->access$200(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 791
    invoke-static {p1}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    goto :goto_1

    .line 793
    :cond_2
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 796
    :goto_1
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v1, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {p1, v0}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    goto :goto_2

    .line 799
    :cond_3
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v0, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 800
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {p1}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto :goto_2

    .line 804
    :cond_4
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v0, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 805
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {p1}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    :goto_2
    return-void
.end method
