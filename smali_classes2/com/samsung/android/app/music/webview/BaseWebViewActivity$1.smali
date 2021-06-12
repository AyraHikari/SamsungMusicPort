.class Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/webview/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/webview/BaseWebViewActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 64
    iget-object p3, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    iget-object p3, p3, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object p3, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    .line 157
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 158
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 178
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
