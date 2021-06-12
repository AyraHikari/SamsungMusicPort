.class public Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040138

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "youtube_url"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1303bd

    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->a:Landroid/webkit/WebView;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->a:Landroid/webkit/WebView;

    const-string v1, "youtube_url"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->finish()V

    :goto_0
    return-void
.end method
