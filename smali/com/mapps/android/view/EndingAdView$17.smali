.class Lcom/mapps/android/view/EndingAdView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->requestUseSSp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$requestNonSSPHandler:Landroid/os/Handler;

.field private final synthetic val$requestSSPHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$17;->val$requestSSPHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/view/EndingAdView$17;->val$requestNonSSPHandler:Landroid/os/Handler;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$23(Lcom/mapps/android/view/EndingAdView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 531
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$24(Lcom/mapps/android/view/EndingAdView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 533
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 535
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/network/UrlManager;->urlSSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mapps/android/network/ParamManager;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    .line 536
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$25(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v3}, Lcom/mapps/android/view/EndingAdView;->access$26(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$27(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v5}, Lcom/mapps/android/view/EndingAdView;->access$28(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v6}, Lcom/mapps/android/view/EndingAdView;->access$13(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v7}, Lcom/mapps/android/view/EndingAdView;->access$14(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v7

    .line 537
    iget-object v8, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v8}, Lcom/mapps/android/view/EndingAdView;->access$15(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v9, v9, Lcom/mapps/android/view/EndingAdView;->media_type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v10}, Lcom/mapps/android/view/EndingAdView;->access$16(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v10

    .line 536
    invoke-virtual/range {v1 .. v12}, Lcom/mapps/android/network/ParamManager;->getParamSSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$17;->val$requestSSPHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 544
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$17;->val$requestNonSSPHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
