.class final Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/webview/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "mWebChromeClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/webview/BaseWebViewActivity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/webview/BaseWebViewActivity;Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;-><init>(Lcom/samsung/android/app/music/webview/BaseWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 195
    invoke-static {}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsAlert url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 189
    invoke-static {}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsConfirm url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;->a:Lcom/samsung/android/app/music/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method
