.class Lcom/mapps/android/view/AdView$SDKWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$bType:Z

.field private final synthetic val$strURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    iput-boolean p2, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->val$bType:Z

    iput-object p3, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->val$strURL:Ljava/lang/String;

    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1730
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->val$bType:Z

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$0(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->val$strURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1734
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->val$strURL:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1736
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKWebView;->access$0(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "text/html; charset=utf-8"

    const-string v3, "base64"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1738
    :catch_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1739
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    const/16 v1, -0x384

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    :goto_0
    return-void
.end method
