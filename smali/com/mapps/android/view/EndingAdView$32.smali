.class Lcom/mapps/android/view/EndingAdView$32;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->LoadingURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 1389
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;
    .locals 0

    .line 1389
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object p0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1437
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2605RESOURCE URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 1440
    invoke-static {p2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p2

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2605"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$46(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "( % )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    .line 1444
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$46(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "*******"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$47(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    :cond_0
    const-string p1, "\n"

    .line 1446
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$48(Lcom/mapps/android/view/EndingAdView;)V

    .line 1453
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1458
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$32$2;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$32$2;-><init>(Lcom/mapps/android/view/EndingAdView$32;)V

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$51(Lcom/mapps/android/view/EndingAdView;Ljava/lang/Runnable;)V

    .line 1482
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTEnd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$52(Lcom/mapps/android/view/EndingAdView;I)V

    .line 1485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "webloading_timeout : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$53(Lcom/mapps/android/view/EndingAdView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$54(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 1487
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$55(Lcom/mapps/android/view/EndingAdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$56(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$32;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$53(Lcom/mapps/android/view/EndingAdView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1488
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1396
    :try_start_0
    new-instance p1, Lcom/mapps/android/view/EndingAdView$32$1;

    invoke-direct {p1, p0, p2}, Lcom/mapps/android/view/EndingAdView$32$1;-><init>(Lcom/mapps/android/view/EndingAdView$32;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1431
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
