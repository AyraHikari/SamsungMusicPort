.class Lcom/mapps/android/view/AdView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestUseSSp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$requestNonSSPHandler:Landroid/os/Handler;

.field private final synthetic val$requestSSPHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$19;->val$requestSSPHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/view/AdView$19;->val$requestNonSSPHandler:Landroid/os/Handler;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605SSP"

    .line 477
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 479
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v3}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapps/android/network/UrlManager;->urlSSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    new-instance v3, Lcom/mapps/android/network/ParamManager;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$70(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$71(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$72(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$73(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v7

    .line 483
    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$59(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$60(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$61(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$57(Lcom/mapps/android/view/AdView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$74(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v12

    .line 484
    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-object v2, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 482
    invoke-virtual/range {v3 .. v14}, Lcom/mapps/android/network/ParamManager;->getParamSSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/mapps/android/view/AdView$19;->val$requestSSPHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 491
    iget-object v1, p0, Lcom/mapps/android/view/AdView$19;->val$requestNonSSPHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
