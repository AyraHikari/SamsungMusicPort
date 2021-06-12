.class Lcom/mapps/android/view/AdInterstitialView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->sendRequestInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$failedReceiveHandler:Landroid/os/Handler;

.field private final synthetic val$requestHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$requestHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$failedReceiveHandler:Landroid/os/Handler;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :try_start_0
    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605Interstitial"

    .line 504
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 506
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 507
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 508
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, v1

    invoke-static {v2, v3}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 509
    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v3}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v4, v0

    invoke-static {v3, v4}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 510
    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/mapps/android/view/AdInterstitialView;->getViewStyle()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 511
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v3

    const/16 v4, 0x140

    invoke-virtual {v3, v4, v1}, Lcom/mapps/android/share/ShareUtil;->nearSize(II)F

    move-result v1

    invoke-static {v2, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 512
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v3

    const/16 v4, 0x1e0

    invoke-virtual {v3, v4, v0}, Lcom/mapps/android/share/ShareUtil;->nearSize(II)F

    move-result v0

    invoke-static {v1, v0}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v10, v2

    move-object v11, v3

    .line 514
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 515
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/network/UrlManager;->urlInterstitial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mapps/android/network/ParamManager;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$13(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$14(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v4}, Lcom/mapps/android/view/AdInterstitialView;->access$15(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v5}, Lcom/mapps/android/view/AdInterstitialView;->access$16(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v6}, Lcom/mapps/android/view/AdInterstitialView;->access$17(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7}, Lcom/mapps/android/view/AdInterstitialView;->access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v8}, Lcom/mapps/android/view/AdInterstitialView;->access$19(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "java"

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/mapps/android/network/ParamManager;->getParamInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$requestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$failedReceiveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
