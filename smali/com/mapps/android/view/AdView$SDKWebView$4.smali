.class Lcom/mapps/android/view/AdView$SDKWebView$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKWebView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$4;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1755
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;
    .locals 0

    .line 1755
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    return-object p0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1825
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1819
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1760
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1831
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1832
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Error loading in webview -- "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    .line 1833
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$4;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1834
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$4;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    const/16 p2, -0x384

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1764
    new-instance p1, Lcom/mapps/android/view/AdView$SDKWebView$4$1;

    invoke-direct {p1, p0, p2}, Lcom/mapps/android/view/AdView$SDKWebView$4$1;-><init>(Lcom/mapps/android/view/AdView$SDKWebView$4;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    const/4 p1, 0x1

    return p1
.end method
