.class Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/CertificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificationWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/CertificationActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/activity/CertificationActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/activity/CertificationActivity;Lcom/samsung/android/app/music/activity/CertificationActivity$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;-><init>(Lcom/samsung/android/app/music/activity/CertificationActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "CertificationActivity"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading : url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NameCheckSuccess"

    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CertificationActivity"

    const-string v1, "Certification success"

    .line 93
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;IZLjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    const-string v1, "1"

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$CertificationWebViewClient;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/CertificationActivity;->finish()V

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
