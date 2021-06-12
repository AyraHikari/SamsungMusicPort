.class public Lcom/samsung/android/app/music/activity/CertificationActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private final b:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/activity/CertificationActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/CertificationActivity$1;-><init>(Lcom/samsung/android/app/music/activity/CertificationActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->b:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/CertificationActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "https://account.samsung.com/mobile/account/check.do?"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "actionID=NameCheckOAuth2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&serviceID=12yndwlwd1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&countryCode=KR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&languageCode=ko"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tokenValue="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&checkAge=Y"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CertificationActivity"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "CertificationActivity"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "CertificationActivity"

    const-string p2, "Get access token success"

    .line 120
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "access_token"

    .line 121
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->a:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "CertificationActivity"

    const-string p2, "Get access token failure"

    .line 124
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 128
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getSAtoken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/CertificationActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->b:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    const p1, 0x7f04011a

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity;->setContentView(I)V

    const p1, 0x7f130371

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->a:Landroid/webkit/WebView;

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;-><init>(Lcom/samsung/android/app/music/activity/CertificationActivity;Lcom/samsung/android/app/music/activity/CertificationActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/CertificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getSAtoken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "CertificationActivity"

    const-string v0, "UserInfo null"

    .line 75
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 79
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, "12yndwlwd1"

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, "C548D30428E8D901492340A08A969617"

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "expired_access_token"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "progress_theme"

    const-string v1, "dark"

    .line 83
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x2711

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
