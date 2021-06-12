.class public Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullScreenChromeClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

.field private b:Landroid/app/Activity;

.field private c:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 1

    .line 468
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 469
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->b:Landroid/app/Activity;

    .line 475
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->e:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 531
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFullscreen - Set full screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHideCustomView - Hide custom view"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 522
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a(Z)V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->b:Landroid/app/Activity;

    const v1, 0x7f130410

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 524
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->d:Landroid/widget/FrameLayout;

    .line 526
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c:Landroid/view/View;

    .line 527
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->c:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 482
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {p1, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    const p3, 0x7f0b0261

    .line 484
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;)V

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 491
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 502
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView - Show custom view"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->b:Landroid/app/Activity;

    const v1, 0x7f130410

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 505
    new-instance v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullscreenHolder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->d:Landroid/widget/FrameLayout;

    .line 506
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c:Landroid/view/View;

    const/4 v0, 0x1

    .line 509
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->a(Z)V

    .line 510
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->c:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 512
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
