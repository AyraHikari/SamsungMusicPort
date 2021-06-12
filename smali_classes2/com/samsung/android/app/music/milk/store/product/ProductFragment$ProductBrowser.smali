.class Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/product/ProductFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProductBrowser"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;-><init>(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "radio://"

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "samu://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ProductFragment"

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading deeplink - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;->a:Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
