.class public Lcom/samsung/android/app/music/activity/SearchActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private b:Z

.field private c:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private final f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->b:Z

    .line 185
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/SearchActivity$2;-><init>(Lcom/samsung/android/app/music/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/SearchActivity$3;-><init>(Lcom/samsung/android/app/music/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method private a()V
    .locals 4

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SearchContainerFragment"

    .line 209
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lcom/samsung/android/app/music/search/SearchContainerFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/search/SearchContainerFragment;-><init>()V

    .line 215
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f130011

    const-string v3, "SearchContainerFragment"

    .line 216
    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public doOnPrepare(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;->doOnPrepare(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    :goto_0
    return-object v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 3

    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 247
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_3

    .line 248
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->c:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    return v2
.end method

.method public launchSearch()V
    .locals 4

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/samsung/android/app/music/search/SearchContainerFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/search/SearchContainerFragment;-><init>()V

    const-string v2, "SearchContainerFragment"

    const v3, 0x7f130011

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7c0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 124
    invoke-static {p3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Intent;)Lcom/samsung/android/app/music/navigate/NaviData;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->a()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->b()Ljava/lang/String;

    move-result-object p3

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/navigate/NaviData;->d()Landroid/os/Bundle;

    move-result-object p1

    .line 126
    invoke-static {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0401e3

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/SearchActivity;->setContentView(I)V

    .line 87
    new-instance p1, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/SearchActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 89
    new-instance p1, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->c:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->c:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/SearchActivity$1;-><init>(Lcom/samsung/android/app/music/activity/SearchActivity;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->a()V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->initMiniPlayer()V

    .line 100
    new-instance p1, Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    .line 159
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/SearchActivity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.SEARCH"

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SearchContainerFragment"

    .line 112
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchContainerFragment;

    if-eqz v0, :cond_0

    const-string v1, "query"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "query"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/SearchActivity;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 153
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/SearchActivity;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SearchActivity;->finish()V

    :cond_0
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity;->b:Z

    return-void
.end method
