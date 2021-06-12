.class Lcom/mapps/android/view/AdView$SDKWebView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKWebView"
.end annotation


# instance fields
.field public bGotolinkType:Z

.field private mContext:Landroid/content/Context;

.field private mWebView:Landroid/webkit/WebView;

.field private onSSPAdmListener:Lcom/mapps/android/view/AdView$OnSSPAdmListener;

.field root:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method public constructor <init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1670
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    .line 1671
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1661
    iput-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    .line 1662
    iput-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 1663
    iput-boolean v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->bGotolinkType:Z

    .line 1672
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mContext:Landroid/content/Context;

    .line 1673
    invoke-virtual {p0, p6}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1674
    new-instance p6, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p6, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    .line 1675
    new-instance p6, Landroid/widget/RelativeLayout;

    invoke-direct {p6, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    .line 1676
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$39(Lcom/mapps/android/view/AdView;)I

    move-result p1

    .line 1678
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p6, -0x1

    invoke-direct {p2, p6, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1680
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1681
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    .line 1683
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p6

    if-lez p6, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    if-lez p6, :cond_0

    .line 1685
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1686
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p6, p5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    :catch_0
    move-exception p5

    goto :goto_0

    .line 1688
    :cond_0
    iget-object p5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p5, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1689
    iget-object p5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p5, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1692
    :goto_0
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1694
    :goto_1
    iget-object p5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p5, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1695
    iget-object p5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p5, p2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1696
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1697
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1698
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1699
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1700
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p5, 0x2

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1701
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object p5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1702
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mapps/android/share/ShareUtil;->getModel()Ljava/lang/String;

    move-result-object p2

    const-string p5, "SHW-M250"

    invoke-virtual {p2, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1703
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object p5, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1704
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdView$SDKWebView;->setFocusable(Z)V

    .line 1705
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const/16 p2, 0x82

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 1706
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Lcom/mapps/android/view/AdView$SDKWebView$1;

    invoke-direct {p2, p0}, Lcom/mapps/android/view/AdView$SDKWebView$1;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1722
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1723
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object p1

    sget-object p2, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-interface {p1, p2}, Lcom/mapps/android/view/AdView$OnSSPAdmListener;->onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V

    .line 1726
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/mapps/android/view/AdView$SDKWebView$2;

    invoke-direct {p2, p0, p4, p3}, Lcom/mapps/android/view/AdView$SDKWebView$2;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;ZLjava/lang/String;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1745
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-direct {p2, p0}, Lcom/mapps/android/view/AdView$SDKWebView$3;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1755
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-direct {p2, p0}, Lcom/mapps/android/view/AdView$SDKWebView$4;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1839
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1840
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdView$SDKWebView;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1661
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/content/Context;
    .locals 0

    .line 1662
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;
    .locals 0

    .line 1660
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    return-object p0
.end method


# virtual methods
.method public changBackgroundColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1847
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1850
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 1852
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1853
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "changBackgroundColor : backgroundcolor Exception"

    .line 1856
    invoke-static {p1}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public changeURL(Ljava/lang/String;Z)V
    .locals 4

    .line 1873
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataBannerAD;

    .line 1875
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1877
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1878
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1879
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1882
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "changeURL : backgroundcolor Exception"

    .line 1885
    invoke-static {v0}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 1888
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1889
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 1890
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->destroyItem()V

    .line 1891
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1892
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v0

    sget-object v2, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-interface {v0, v2}, Lcom/mapps/android/view/AdView$OnSSPAdmListener;->onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V

    :cond_2
    const-string v0, "changeURL: SSPAdmState.VIEW"

    .line 1894
    invoke-static {v0}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    const/16 v0, -0x384

    if-eqz p2, :cond_3

    .line 1897
    :try_start_1
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1899
    :catch_1
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1900
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_1

    :cond_3
    :try_start_2
    const-string p2, "UTF-8"

    .line 1904
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 1906
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "text/html; charset=utf-8"

    const-string v2, "base64"

    invoke-virtual {p2, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1908
    :catch_2
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1909
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public destroyItem()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .line 1927
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1928
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1929
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 1930
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->onSSPAdmListener:Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    return-object v0
.end method

.method public isOtherType()Z
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setBackImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
    .locals 0

    .line 1941
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->onSSPAdmListener:Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    return-void
.end method
