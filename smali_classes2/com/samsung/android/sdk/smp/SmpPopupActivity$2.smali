.class Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/SmpPopupActivity;->d(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->b:Z

    return-void
.end method

.method private a(ILjava/lang/CharSequence;)V
    .locals 4

    .line 326
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to display. error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-boolean p2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->b:Z

    if-nez p2, :cond_1

    const/16 p2, -0xe

    if-eq p1, p2, :cond_0

    const/4 p2, -0x3

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 338
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V

    goto :goto_0

    .line 335
    :cond_0
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->b:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 346
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 347
    iget-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->b:Z

    if-nez p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 349
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a:Lcom/samsung/android/sdk/smp/SmpPopupActivity;

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->d(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 321
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 322
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;->a(ILjava/lang/CharSequence;)V

    return-void
.end method
