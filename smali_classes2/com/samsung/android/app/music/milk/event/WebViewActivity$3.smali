.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 450
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - onReceive intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 456
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "state"

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 461
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 462
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
