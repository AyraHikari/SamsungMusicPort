.class Lcom/mapps/android/view/AdView$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->SendRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$failedToReceiveHandler:Landroid/os/Handler;

.field private final synthetic val$requestHandler:Landroid/os/Handler;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$22;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapps/android/view/AdView$22;->val$codeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/view/AdView$22;->val$requestHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/mapps/android/view/AdView$22;->val$failedToReceiveHandler:Landroid/os/Handler;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605Banner"

    .line 552
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 554
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->val$url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/mapps/android/network/ParamManager;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$70(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$71(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$72(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v6

    .line 557
    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$73(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$59(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$60(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$61(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$57(Lcom/mapps/android/view/AdView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/view/AdView$22;->val$codeType:Ljava/lang/String;

    .line 558
    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-object v2, p0, Lcom/mapps/android/view/AdView$22;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 556
    invoke-virtual/range {v3 .. v14}, Lcom/mapps/android/network/ParamManager;->getParamBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lcom/mapps/android/view/AdView$22;->val$requestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    iget-object v0, p0, Lcom/mapps/android/view/AdView$22;->val$failedToReceiveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
