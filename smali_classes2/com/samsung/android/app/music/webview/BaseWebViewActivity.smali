.class public abstract Lcom/samsung/android/app/music/webview/BaseWebViewActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "BaseWebViewActivity"

.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Landroid/webkit/WebView;

.field private e:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;-><init>(Lcom/samsung/android/app/music/webview/BaseWebViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->e:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/samsung/android/app/music/webview/BaseJavascriptInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract a(Landroid/webkit/WebSettings;)V
.end method

.method protected a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 271
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 0

    .line 260
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 275
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 279
    sget-object v0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 280
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 281
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->finish()V

    return-void
.end method

.method protected a(Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method protected abstract b()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method protected c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 202
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040007

    .line 203
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->setContentView(I)V

    const/4 p1, 0x1

    .line 211
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    const v0, 0x7f130126

    .line 213
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f130129

    .line 214
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Intent is null."

    const v0, 0x7f0b012f

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "extra_uri_string"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_title"

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 230
    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 p1, -0x1

    .line 231
    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebSettings;)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity$mWebChromeClient;-><init>(Lcom/samsung/android/app/music/webview/BaseWebViewActivity;Lcom/samsung/android/app/music/webview/BaseWebViewActivity$1;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a()Lcom/samsung/android/app/music/webview/BaseJavascriptInterface;

    move-result-object p1

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, p1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const-string p1, "extra_serialized_post_parameter"

    .line 243
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;[B)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/webview/BaseWebViewActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
