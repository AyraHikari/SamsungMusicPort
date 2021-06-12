.class public Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/music/player/PlayerLaunchable;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

.field private final e:I
    .annotation build Landroid/support/annotation/MenuRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of p1, p1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->c:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->e:I

    .line 69
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    return-void
.end method

.method private a()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->c:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->c:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    .line 180
    invoke-interface {v2}, Lcom/samsung/android/app/music/player/PlayerLaunchable;->isFullPlayerActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 179
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/SoundAliveLauncher;->a(Landroid/support/v4/app/FragmentActivity;IZ)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    const/4 v1, 0x0

    const-string v2, "0002"

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/Menu;I)V
    .locals 2

    .line 135
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/SeslMenuItem;

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b:Landroid/content/Context;

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    .line 141
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b:Landroid/content/Context;

    const v0, 0x7f0b0501

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/support/v7/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 145
    invoke-interface {p1, p2}, Landroid/support/v7/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/samsung/android/app/music/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    const-string v1, "0003"

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/view/Menu;I)V
    .locals 1

    .line 150
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    const v0, 0x7f1305db

    .line 151
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private c()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/samsung/android/app/music/help/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    const-string v1, "0055"

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/view/Menu;I)V
    .locals 0

    .line 159
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 164
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 166
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Landroid/app/Activity;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    const/4 v1, 0x0

    const-string v2, "0004"

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/view/Menu;I)V
    .locals 0

    .line 171
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private e()V
    .locals 3

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->c()Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    .line 214
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "local_only"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;)V

    .line 219
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "product_page"

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    const/4 v1, 0x0

    const-string v2, "0052"

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/view/Menu;I)V
    .locals 0

    .line 252
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 259
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 227
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->c()Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    .line 229
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "local_only"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/event/EventManageable;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/samsung/android/app/music/milk/event/EventManageable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/event/EventManageable;->launchEventWeb()V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    const/4 v1, 0x0

    const-string v2, "0051"

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BrowseMenuGroup"

    const-string v1, "Invalid call"

    .line 236
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b:Landroid/content/Context;

    .line 240
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "event_page"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "product_btn_click"

    const-string v2, "where"

    const-string v3, "from_product_my_music"

    .line 242
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f13002d

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->e(Landroid/view/Menu;I)V

    .line 89
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->x:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$Version;->a:Z

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b04e9

    .line 92
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 95
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1305c5

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a(Landroid/view/Menu;I)V

    :cond_2
    const v0, 0x7f1305db

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b(Landroid/view/Menu;I)V

    const v0, 0x7f1305dd

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->c(Landroid/view/Menu;I)V

    const v0, 0x7f1305dc

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 74
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->e:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f130027

    .line 76
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p2

    const-string v0, "event_badge_exist"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 81
    invoke-static {p0, p1, p2, p2}, Lcom/samsung/android/app/music/milk/MilkBadgeMenu;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "BrowseMenuGroup"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 121
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->d()V

    return v0

    .line 118
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->c()V

    return v0

    .line 109
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->g()V

    return v0

    .line 115
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->b()V

    return v0

    .line 112
    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->a()V

    return v0

    .line 124
    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->e()V

    return v0

    .line 127
    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;->f()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f130027 -> :sswitch_6
        0x7f130028 -> :sswitch_5
        0x7f13002d -> :sswitch_4
        0x7f1305c5 -> :sswitch_3
        0x7f1305db -> :sswitch_2
        0x7f1305dc -> :sswitch_1
        0x7f1305dd -> :sswitch_0
    .end sparse-switch
.end method
