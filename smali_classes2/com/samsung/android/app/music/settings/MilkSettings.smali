.class public Lcom/samsung/android/app/music/settings/MilkSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/settings/MilkSettings;->a:J

    return-void
.end method

.method public static a()I
    .locals 3

    .line 23
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "play_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "streaming"

    .line 97
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "streaming"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 108
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const-string p1, "milk_streaming_quality_wifi"

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const-string p1, "milk_streaming_quality_mobile"

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const-string p1, "milk_streaming_quality_last_listen"

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const-string p1, "milk_download_quality"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(I)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "play_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(J)V
    .locals 2

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "streaming_cache_size"

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "my_music_mode_show_confirm_on"

    goto :goto_0

    :cond_0
    const-string v0, "my_music_mode_show_confirm_off"

    :goto_0
    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 75
    sget-object p1, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 76
    invoke-static {}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->a()Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/settings/MilkSettings;->c(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "duplicate_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()I
    .locals 3

    .line 31
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 35
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "enqueue_option"

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "enqueue_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "similar_station"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Z)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c()Z
    .locals 3

    .line 45
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "duplicate_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Z)V
    .locals 2

    .line 88
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "push_notification"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d()Z
    .locals 3

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "similar_station"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 3

    .line 61
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 3

    .line 84
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "push_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()J
    .locals 4

    .line 137
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "streaming_cache_size"

    sget-wide v2, Lcom/samsung/android/app/music/settings/MilkSettings;->a:J

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
