.class Lcom/facebook/AccessTokenManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/AccessTokenManager$RefreshResult;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p6, p0, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 323
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 324
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 325
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eq v0, v4, :cond_0

    goto/16 :goto_7

    .line 332
    :cond_0
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    if-nez v0, :cond_2

    .line 335
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Failed to refresh access token"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :cond_1
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    return-void

    .line 341
    :cond_2
    :try_start_1
    new-instance v14, Lcom/facebook/AccessToken;

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 343
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 344
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 345
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 347
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 349
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v0

    goto :goto_3

    :goto_4
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 350
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v10

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    const-wide/16 v11, 0x3e8

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/Date;

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v4, v4, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    int-to-long v3, v4

    mul-long v3, v3, v11

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_5

    :cond_6
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 353
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v0

    :goto_5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v4, v4, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/util/Date;

    iget-object v13, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v13, v13, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    .line 356
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    mul-long v11, v11, v16

    invoke-direct {v4, v11, v12}, Ljava/util/Date;-><init>(J)V

    goto :goto_6

    :cond_7
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 357
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v4

    :goto_6
    move-object v13, v4

    move-object v4, v14

    move-object v11, v0

    move-object v12, v3

    invoke-direct/range {v4 .. v13}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    :try_start_2
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_8

    .line 363
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v0, v14}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    move-object v15, v14

    goto :goto_8

    .line 326
    :cond_9
    :goto_7
    :try_start_3
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_a

    .line 327
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "No current access token to refresh"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    :cond_a
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    return-void

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    .line 361
    :goto_8
    iget-object v3, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v3}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v2, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v2, :cond_b

    if-eqz v15, :cond_b

    .line 363
    iget-object v2, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v2, v15}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    .line 365
    :cond_b
    throw v0
.end method
