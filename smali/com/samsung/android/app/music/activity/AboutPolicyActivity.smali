.class public Lcom/samsung/android/app/music/activity/AboutPolicyActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;,
        Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebViewDownloader;,
        Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AboutPolicyActivity"


# instance fields
.field private b:Lcom/samsung/android/app/music/view/NoNetworkViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const v0, 0x7f130128

    .line 123
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const v1, 0x7f130127

    .line 124
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 126
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;-><init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$AsyncPolicyLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 1

    .line 109
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/activity/AboutPolicyTextLoader;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    .line 118
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown view type : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 115
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;IILjava/lang/String;)V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "view_type"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "policy_type"

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "url"

    .line 66
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;)V
    .locals 2

    .line 59
    iget v0, p1, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->c:I

    iget v1, p1, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->d:I

    iget-object p1, p1, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 202
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 204
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 205
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 206
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    .line 207
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 208
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const v0, 0x7f130128

    .line 135
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 136
    new-instance v1, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;

    const v2, 0x7f13013d

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 137
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 138
    new-instance v1, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebViewDownloader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebViewDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    new-instance v1, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$1;-><init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 159
    new-instance v3, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v4, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$3;-><init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;)V

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    new-instance v1, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;-><init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const v0, 0x7f0f0009

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->d(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040006

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    const-string v0, "view_type"

    .line 84
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "policy_type"

    .line 85
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "view_type"

    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "policy_type"

    .line 96
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "url"

    .line 97
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v5, v1

    move-object v1, p1

    move p1, v5

    .line 100
    :goto_1
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(IILjava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 104
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->b(Landroid/view/Window;Z)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    :cond_0
    return-void
.end method
