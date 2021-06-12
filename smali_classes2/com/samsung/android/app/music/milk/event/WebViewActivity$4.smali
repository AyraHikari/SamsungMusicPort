.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;->g()V
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

    .line 548
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Z)Z

    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    return-void

    .line 563
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runLoadTimer - Failed to load web page."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    return-void
.end method
