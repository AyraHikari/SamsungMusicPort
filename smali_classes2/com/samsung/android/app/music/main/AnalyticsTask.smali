.class public Lcom/samsung/android/app/music/main/AnalyticsTask;
.super Lcom/samsung/android/app/music/main/AbsMainActivityTask;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Lcom/samsung/android/app/music/main/MainActivity;

.field private final c:Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->a:Z

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/main/AnalyticsTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/AnalyticsTask$1;-><init>(Lcom/samsung/android/app/music/main/AnalyticsTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->c:Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;

    .line 212
    new-instance v0, Lcom/samsung/android/app/music/main/AnalyticsTask$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/AnalyticsTask$2;-><init>(Lcom/samsung/android/app/music/main/AnalyticsTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->d:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v0, Lcom/samsung/android/app/music/main/AnalyticsTask$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/AnalyticsTask$3;-><init>(Lcom/samsung/android/app/music/main/AnalyticsTask;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->b:Lcom/samsung/android/app/music/main/MainActivity;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->b:Lcom/samsung/android/app/music/main/MainActivity;

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "main_current_tab"

    const/4 v2, -0x1

    .line 257
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "discover_tab"

    goto :goto_1

    :pswitch_1
    const-string v0, "search_tab"

    goto :goto_1

    :pswitch_2
    const-string v0, "my_music_tab"

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/main/AnalyticsTask;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/AnalyticsTask;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->b:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AnalyticsTask"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMainTabAnalytics  sendScreenLogV2- tabId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 154
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "my_music_tab"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "search_tab"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "discover_tab"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;)V

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "discover_tab"

    .line 194
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "search_tab"

    .line 184
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "my_music_tab"

    .line 174
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/main/AnalyticsTask;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/AnalyticsTask;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/main/AnalyticsTask;)Lcom/samsung/android/app/music/main/MainActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->b:Lcom/samsung/android/app/music/main/MainActivity;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 132
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "MainActivity - onServiceConnected"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsInitializer;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d()I

    move-result p3

    .line 67
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 71
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_INITIALIZE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "ACTION_REPORT_DEVICE_ACCESS"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->a:Z

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->c:Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;)V

    const-string p1, "AnalyticsTask"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated sendMainTabAnalytics - tabId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/main/AnalyticsTask;->a(I)V

    .line 81
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a()V

    .line 82
    invoke-static {p2}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging;->a(Landroid/content/Context;)V

    .line 83
    invoke-static {p2}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging;->a(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 4

    .line 108
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f130028

    if-ne v0, v1, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 112
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "product_btn_click"

    const-string v2, "where"

    const-string v3, "from_product_radio"

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 116
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "product_btn_click"

    const-string v2, "where"

    const-string v3, "from_product_store"

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "product_btn_click"

    const-string v2, "where"

    const-string v3, "from_product_my_music"

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->c(Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->d(Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->b:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->f(Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public bridge synthetic g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->g(Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/AbsMainActivityTask;->h(Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method
