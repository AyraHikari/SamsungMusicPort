.class Lcom/mapps/android/view/InterstitialView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$strURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$10;->this$0:Lcom/mapps/android/view/InterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$10;->val$strURL:Ljava/lang/String;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$10;->val$strURL:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 977
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$10;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$33(Lcom/mapps/android/view/InterstitialView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userAgent : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "myWebView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$10;->val$strURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$10;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$33(Lcom/mapps/android/view/InterstitialView;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "text/html; charset=utf-8"

    const-string v3, "base64"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 982
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$10;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    :goto_0
    return-void
.end method
