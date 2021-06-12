.class Lcom/mapps/android/view/InterstitialView$9;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->LoadingURL(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 862
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$9;)Lcom/mapps/android/view/InterstitialView;
    .locals 0

    .line 862
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object p0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 865
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2605 RESOURCE URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 868
    invoke-static {p2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p2

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2605 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$22(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

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

    .line 872
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->access$22(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "*******"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapps/android/view/InterstitialView;->access$23(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V

    :cond_0
    const-string p1, "\n"

    .line 874
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$31(Lcom/mapps/android/view/InterstitialView;)V

    .line 915
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "onPageStarted : "

    .line 879
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$9$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$9$1;-><init>(Lcom/mapps/android/view/InterstitialView$9;)V

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$26(Lcom/mapps/android/view/InterstitialView;Ljava/lang/Runnable;)V

    .line 907
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$27(Lcom/mapps/android/view/InterstitialView;Z)V

    .line 908
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$28(Lcom/mapps/android/view/InterstitialView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$29(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$30(Lcom/mapps/android/view/InterstitialView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "description : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 922
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 927
    new-instance p1, Lcom/mapps/android/view/InterstitialView$9$2;

    invoke-direct {p1, p0, p2}, Lcom/mapps/android/view/InterstitialView$9$2;-><init>(Lcom/mapps/android/view/InterstitialView$9;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    const/4 p1, 0x1

    return p1
.end method
