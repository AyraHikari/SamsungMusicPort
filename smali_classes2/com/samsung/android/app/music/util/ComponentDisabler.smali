.class public Lcom/samsung/android/app/music/util/ComponentDisabler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 20
    const-class v0, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    if-eq p0, p2, :cond_0

    const/4 p0, 0x1

    .line 45
    invoke-virtual {v0, v1, p2, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string p0, "Ui"

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setComponentsSetting() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;)Z
    .locals 2

    :try_start_0
    const-string v0, "com.sec.android.mmapp"

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 25
    const-class v0, Lcom/samsung/android/app/music/activity/SoundPickerActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method

.method public static b(Landroid/content/pm/PackageManager;)Z
    .locals 2

    :try_start_0
    const-string v0, "com.samsung.android.app.soundpicker"

    const/16 v1, 0x80

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 30
    const-class v0, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .line 35
    const-class v0, Lcom/samsung/android/app/music/activity/SoundPickerActivity;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method
