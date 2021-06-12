.class public Lcom/samsung/android/app/music/milk/store/product/ProductFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/product/ProductReloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View;

.field private final c:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 189
    new-instance v0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->b:Landroid/view/View;

    return-object p0
.end method

.method public static a()Lcom/samsung/android/app/music/milk/store/product/ProductFragment;
    .locals 1

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 155
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "ProductFragment"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeepLink"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    .line 99
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRODUCT_DETAIL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 100
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "&"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ProductFragment"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "web param : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v2, "productUrl"

    const-string v3, "https://samsungmusic.kr/mobile/ticket"

    .line 111
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?access_token="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ProductFragment"

    const-string v1, "reloadProduct - fragment is not added"

    .line 123
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProductFragment"

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reload url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x0

    const v0, 0x7f0401d9

    .line 62
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f1303bd

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    const p2, 0x7f130411

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->b:Landroid/view/View;

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 69
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 71
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 72
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    new-instance p3, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment$ProductBrowser;-><init>(Lcom/samsung/android/app/music/milk/store/product/ProductFragment;Lcom/samsung/android/app/music/milk/store/product/ProductFragment$1;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ProductFragment"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->c:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;->a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0202

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 90
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    :cond_0
    return-void
.end method
