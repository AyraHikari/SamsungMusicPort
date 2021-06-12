.class Lcom/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessToken(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$1;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$1;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-static {v0, v1}, Lcom/facebook/AccessTokenManager;->access$000(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method
