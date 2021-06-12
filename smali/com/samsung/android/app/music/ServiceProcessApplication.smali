.class final Lcom/samsung/android/app/music/ServiceProcessApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p1, v0, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/app/Application;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->createInstance(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/ServiceProcessApplication;->c(Landroid/app/Application;)V

    .line 23
    const-class p1, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setComponentEnabledIfNotEnabled(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public b(Landroid/app/Application;)V
    .locals 0

    return-void
.end method
