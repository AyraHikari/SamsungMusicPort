.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackPressed - Go back."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackPressed - Close notice."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
