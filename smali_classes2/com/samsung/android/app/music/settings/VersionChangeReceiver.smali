.class public Lcom/samsung/android/app/music/settings/VersionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 24
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->b(Landroid/content/Context;)V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {p2}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->d(Landroid/content/Context;)V

    .line 28
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    .line 29
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/util/ComponentDisabler;->b(Landroid/content/pm/PackageManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->d(Landroid/content/Context;)V

    .line 37
    :cond_1
    :goto_0
    const-class p2, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setComponentEnabledIfNotEnabled(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/settings/VersionManager;->a(Landroid/content/Context;)V

    .line 41
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_2

    .line 42
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->b(Landroid/content/Context;)V

    const-string p2, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_COPYRIGHT"

    .line 43
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
