.class Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 101
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 103
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiP2PEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b02bd

    const/4 v1, 0x0

    .line 113
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
