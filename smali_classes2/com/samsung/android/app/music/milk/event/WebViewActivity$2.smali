.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPageFinished - Loading web page is finished."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 161
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onPageStarted - Loading web page is started."

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageStarted - URL : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 183
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideKeyEvent - Keyevent get WebView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 186
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    const-string v0, "pause"

    .line 201
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "play"

    .line 195
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "fastforward"

    .line 210
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "rewind"

    .line 213
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "previous"

    .line 204
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "next"

    .line 207
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "stop"

    .line 198
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "togglepause"

    .line 192
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive - key code volume"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 221
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b(Z)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 224
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b(Z)Z

    .line 226
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 130
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string v0, "radio://"

    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "samu://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "intent://"

    .line 134
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 136
    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 138
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 133
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 154
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
