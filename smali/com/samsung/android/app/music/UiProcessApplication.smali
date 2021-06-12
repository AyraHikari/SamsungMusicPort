.class public final Lcom/samsung/android/app/music/UiProcessApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->init(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->which()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/UiProcessApplication;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/UiProcessApplication;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/UiProcessApplication;->d(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/UiProcessApplication;->e(Landroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Landroid/content/Context;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->init(Landroid/content/Context;)V

    return-void
.end method

.method private final c(Landroid/app/Application;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/app/Application;ZZ)V

    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/util/LocaleChangedBroadcastReceiver;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/LocaleChangedBroadcastReceiver;-><init>()V

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Music"

    .line 122
    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 123
    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;

    invoke-direct {v2}, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;-><init>()V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;

    .line 121
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;)V

    .line 125
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 126
    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenControlExecutor;

    invoke-direct {v2}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenControlExecutor;-><init>()V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 127
    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 128
    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 p1, 0x2

    aput-object v2, v1, p1

    .line 125
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->addLockScreenCommandExecutor([Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    return-void
.end method

.method private final e(Landroid/content/Context;)V
    .locals 1

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    new-instance v2, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->createInstance(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/UiProcessApplication;->c(Landroid/app/Application;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/UiProcessApplication;->a(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/RxConfigurations;->a(Landroid/app/Application;)V

    .line 49
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a()V

    return-void
.end method

.method public b(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/UiProcessApplication;->b(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/UiProcessApplication;->c(Landroid/content/Context;)V

    .line 64
    invoke-static {v0}, Lcom/samsung/android/app/music/settings/VersionManager;->a(Landroid/content/Context;)V

    .line 67
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;-><init>()V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
