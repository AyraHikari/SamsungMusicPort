.class final Lcom/samsung/android/app/music/AllProcessApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/RxConfigurations;->a(Landroid/content/Context;)V

    const-string v1, "com.sec.android.app.music"

    .line 30
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->setAppId(Ljava/lang/String;)V

    const-string v1, "16.2.19-5"

    .line 31
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;)V

    const-string v1, "16.2.19-5"

    .line 32
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->a(Ljava/lang/String;)V

    .line 33
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 34
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->g(Landroid/content/Context;)V

    .line 39
    :cond_0
    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->setTheme(I)V

    .line 42
    invoke-static {v0}, Lcom/samsung/android/app/music/util/AndroidUtils;->a(Landroid/content/Context;)V

    .line 43
    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/ServerTime;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b(Landroid/app/Application;)V
    .locals 2

    .line 48
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "16.2.19-5"

    .line 50
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;)V

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    .line 52
    invoke-static {v0}, Lcom/samsung/android/app/music/fcm/FcmController;->a(Landroid/content/Context;)V

    :cond_0
    const-string v0, "MusicApplication"

    const-string v1, "SamsungAnalytics Init"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method
