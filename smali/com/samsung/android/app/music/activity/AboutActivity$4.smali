.class Lcom/samsung/android/app/music/activity/AboutActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/AboutActivity;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$4;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$4;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 308
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiP2PEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b02bd

    const/4 v1, 0x0

    .line 314
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 311
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.music"

    .line 312
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "404"

    const-string v1, "5071"

    .line 319
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
