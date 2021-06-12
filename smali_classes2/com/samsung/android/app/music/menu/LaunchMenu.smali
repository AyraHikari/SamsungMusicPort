.class public Lcom/samsung/android/app/music/menu/LaunchMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/samsung/android/app/music/player/PlayerLaunchable;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->b:Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->c:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of p1, p1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    return-void
.end method

.method private a(Landroid/view/Menu;I)V
    .locals 0

    .line 95
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 102
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private b(Landroid/view/Menu;I)V
    .locals 2

    .line 107
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/view/menu/SeslMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/SeslMenuItem;

    if-nez p1, :cond_1

    return-void

    .line 115
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->c:Landroid/content/Context;

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    .line 117
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 119
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->c:Landroid/content/Context;

    const v0, 0x7f0b0501

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/support/v7/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 121
    invoke-interface {p1, p2}, Landroid/support/v7/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f13002d

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/LaunchMenu;->a(Landroid/view/Menu;I)V

    .line 54
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->x:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$Version;->a:Z

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b04e9

    .line 57
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 60
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1305c5

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/LaunchMenu;->b(Landroid/view/Menu;I)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f13002d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f1305c5

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lcom/samsung/android/app/music/settings/SettingsActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v0, "ESIN"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "0003"

    .line 73
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    .line 77
    invoke-interface {v4}, Lcom/samsung/android/app/music/player/PlayerLaunchable;->isFullPlayerActive()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 76
    :cond_2
    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/music/util/SoundAliveLauncher;->a(Landroid/support/v4/app/FragmentActivity;IZ)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->b:Ljava/lang/Object;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/LaunchMenu;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    :cond_3
    if-eqz v1, :cond_4

    .line 82
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 83
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0002"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method
