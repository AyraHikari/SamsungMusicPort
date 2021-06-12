.class Lcom/mapps/android/view/AdVideoPlayer$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->requestUseSSp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;

.field private final synthetic val$adPlayerReceiveHandler:Landroid/os/Handler;

.field private final synthetic val$requestSSPHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->val$requestSSPHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->val$adPlayerReceiveHandler:Landroid/os/Handler;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605ssp movie"

    .line 473
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 475
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapps/android/network/UrlManager;->urlSSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/mapps/android/network/ParamManager;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$19(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$20(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$21(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$22(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$23(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$24(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$25(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$11(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$12(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$13(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "java"

    invoke-virtual/range {v3 .. v14}, Lcom/mapps/android/network/ParamManager;->getParamSSPVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->val$requestSSPHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->val$adPlayerReceiveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
