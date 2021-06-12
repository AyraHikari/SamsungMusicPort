.class public Lcom/samsung/android/app/music/settings/ResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "play_speed"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "smart_volume"

    const/4 v3, 0x0

    .line 58
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "skip_silences"

    .line 60
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const-string v2, "screen_off_music"

    .line 64
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v0

    const-string v2, "lock_screen"

    .line 69
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "shuffle"

    .line 70
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "repeat"

    .line 71
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    .line 75
    invoke-interface {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setEdgeLighting(Z)V

    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "cross_fade"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->c(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SMUSIC-Backup"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->v_:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/ResetReceiver;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
