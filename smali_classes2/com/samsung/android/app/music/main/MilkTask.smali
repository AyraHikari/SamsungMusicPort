.class public Lcom/samsung/android/app/music/main/MilkTask;
.super Lcom/samsung/android/app/music/main/AbsMainActivityTask;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/music/main/MainActivity;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private c:Lio/reactivex/disposables/CompositeDisposable;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final e:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

.field private final f:Lcom/samsung/android/app/music/advertise/IAdImpressionListener;

.field private final g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;-><init>()V

    .line 66
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->c:Lio/reactivex/disposables/CompositeDisposable;

    .line 260
    new-instance v0, Lcom/samsung/android/app/music/main/MilkTask$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MilkTask$3;-><init>(Lcom/samsung/android/app/music/main/MilkTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->d:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 270
    new-instance v0, Lcom/samsung/android/app/music/main/MilkTask$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MilkTask$4;-><init>(Lcom/samsung/android/app/music/main/MilkTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->e:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 294
    new-instance v0, Lcom/samsung/android/app/music/main/MilkTask$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MilkTask$5;-><init>(Lcom/samsung/android/app/music/main/MilkTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->f:Lcom/samsung/android/app/music/advertise/IAdImpressionListener;

    .line 328
    new-instance v0, Lcom/samsung/android/app/music/main/MilkTask$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MilkTask$6;-><init>(Lcom/samsung/android/app/music/main/MilkTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/main/MilkTask;)Lcom/samsung/android/app/music/main/MainActivity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/samsung/android/app/music/main/MilkTask;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->b(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 215
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Single;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 216
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Single;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/music/main/MilkTask$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/main/MilkTask$2;-><init>(Lcom/samsung/android/app/music/main/MilkTask;Lcom/samsung/android/app/music/update/AppUpdateChecker;)V

    .line 217
    invoke-virtual {v0, v3}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 225
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object v1

    .line 226
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 225
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 214
    invoke-virtual {v2, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "launch_download_basket"

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/MilkTask;->b(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "extra_with"

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "withDownloadBasket"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "extra_with_data"

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "withDiscover"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    const/4 v0, 0x2

    .line 242
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 248
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->releaseDormancyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MActivity"

    const-string v1, "releaseDormancyMode"

    .line 249
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    .line 251
    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "download_requested_audio_ids"

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    .line 143
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 144
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->d:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 147
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    .line 146
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "fragment_tag=1"

    .line 80
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchContainerFragment;

    if-eqz v1, :cond_0

    const-string v2, "query"

    .line 82
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->a(Ljava/lang/String;)V

    :cond_0
    const-string v1, "query"

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 87
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "key_target_tab_id"

    const/4 v3, -0x1

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_2

    const-string v2, "key_target_tab_id"

    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(I)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->dismissFullPlayer(Z)V

    .line 94
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/main/MilkTask;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 110
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c()Z

    :cond_0
    if-eqz p3, :cond_1

    .line 114
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b()V

    .line 115
    invoke-static {v0}, Lcom/samsung/android/app/music/fcm/FcmController;->b(Landroid/content/Context;)V

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/app/music/main/MilkTask$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/music/main/MilkTask$1;-><init>(Lcom/samsung/android/app/music/main/MilkTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Context;)V

    .line 119
    invoke-virtual {p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;)V

    .line 131
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/MilkTask;->a(Landroid/content/Intent;)V

    if-nez p2, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MilkTask;->a()V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->d:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    .line 193
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a()V

    return-void
.end method

.method public bridge synthetic b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    .line 181
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a()Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->f:Lcom/samsung/android/app/music/advertise/IAdImpressionListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b(Lcom/samsung/android/app/music/advertise/IAdImpressionListener;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 186
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a()Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MilkTask;->f:Lcom/samsung/android/app/music/advertise/IAdImpressionListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a(Lcom/samsung/android/app/music/advertise/IAdImpressionListener;)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MilkTask;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 158
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MilkTask;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    :cond_0
    const-string v1, "MActivity"

    const-string v2, "onResume - in SUPPORT_MILK"

    .line 162
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MilkTask;->b()V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 167
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c()Z

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->b()V

    .line 175
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a()V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b()V

    .line 200
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    .line 202
    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->b()V

    return-void
.end method

.method public bridge synthetic f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->f(Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public bridge synthetic g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->g(Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->b()V

    return-void
.end method
