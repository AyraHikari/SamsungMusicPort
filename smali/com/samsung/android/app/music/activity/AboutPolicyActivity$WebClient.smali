.class Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/AboutPolicyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebClient"
.end annotation


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 231
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string p2, "mobile_data"

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;->a:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 222
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string p2, "mobile_data"

    const/4 p3, 0x0

    .line 223
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebClient;->a:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
