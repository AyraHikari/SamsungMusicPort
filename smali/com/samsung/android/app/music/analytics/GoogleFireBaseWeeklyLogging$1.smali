.class final Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "GoogleFireBaseWeeklyLogging"

    const-string v1, "sendWeeklyLogging - run"

    .line 59
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v1, "saWeeklyLoggingTest"

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v3, "key_weekly_logging_last_time"

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-nez v0, :cond_0

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    sub-long v0, v8, v6

    const-wide/32 v3, 0x240c8400

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    const-string v0, "GoogleFireBaseWeeklyLogging"

    const-string v1, "sendWeeklyLogging - (currentTime - lastLoggingTime) < ONE_WEEK"

    .line 73
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 85
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    .line 86
    invoke-static {v4}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "|"

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    .line 93
    invoke-static {v4}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "|"

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const v3, 0x10030

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_heart_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const v3, 0x10004

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    .line 107
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_playlist_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const v3, 0x110001

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    .line 112
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_tracks_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const v3, 0x10002

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    .line 117
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_albums_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const v3, 0x10003

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_artists_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const v3, 0x10006

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8

    .line 127
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_genres_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const v3, 0x10007

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_9

    .line 132
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_folders_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const v3, 0x10008

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_a

    .line 137
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v4, "setting"

    const-string v6, "setting"

    const-string v7, "setting_composers_tab"

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x10100

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_b

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v3, "setting"

    const-string v4, "setting"

    const-string v6, "setting_spotify_tab"

    invoke-static {v1, v3, v4, v6}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "setting"

    const-string v4, "setting"

    const-string v6, "lock_screen"

    .line 150
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "lockscreen_control_on"

    goto :goto_2

    :cond_c
    const-string v6, "lockscreen_control_off"

    .line 149
    :goto_2
    invoke-virtual {v1, v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "setting"

    const-string v4, "setting"

    const-string v6, "smart_volume"

    .line 160
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "smart_volume_on"

    goto :goto_3

    :cond_d
    const-string v6, "smart_volume_off"

    .line 159
    :goto_3
    invoke-virtual {v1, v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "setting"

    const-string v4, "setting"

    const-string v6, "skip_silences"

    .line 166
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "skip_silences_on"

    goto :goto_4

    :cond_e
    const-string v0, "skip_silences_off"

    .line 165
    :goto_4
    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "setting"

    const-string v3, "setting"

    .line 173
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v4

    const-string v6, "edge_lighting"

    .line 174
    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "edge_lighting_on"

    goto :goto_5

    :cond_f
    const-string v4, "edge_lighting_off"

    .line 172
    :goto_5
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_12

    .line 181
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "setting"

    const-string v3, "setting"

    .line 183
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v4

    const-string v6, "mobile_data"

    .line 184
    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "mobile_data_on"

    goto :goto_6

    :cond_11
    const-string v4, "mobile_data_off"

    .line 182
    :goto_6
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_14

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "setting"

    const-string v3, "setting"

    .line 193
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v4

    const-string v6, "dark_theme"

    .line 194
    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "dark_theme_on"

    goto :goto_7

    :cond_13
    const-string v4, "dark_theme_off"

    .line 192
    :goto_7
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_14
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 201
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v3, "milk_streaming_quality_mobile"

    .line 202
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_8

    :pswitch_0
    const-string v0, "streaming_320K"

    goto :goto_8

    :pswitch_1
    const-string v0, "streaming_192K"

    goto :goto_8

    :pswitch_2
    const-string v0, "streaming_AAC"

    :goto_8
    if-eqz v0, :cond_15

    .line 220
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v3

    const-string v4, "setting"

    const-string v6, "setting"

    .line 221
    invoke-virtual {v3, v4, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_15
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v3, "milk_streaming_quality_wifi"

    .line 227
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-object v0, v1

    goto :goto_9

    :pswitch_3
    const-string v0, "WIFI_320K"

    goto :goto_9

    :pswitch_4
    const-string v0, "WIFI_192K"

    goto :goto_9

    :pswitch_5
    const-string v0, "WIFI_AAC"

    :goto_9
    if-eqz v0, :cond_16

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v3

    const-string v4, "setting"

    const-string v6, "setting"

    .line 246
    invoke-virtual {v3, v4, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v3, "play_option"

    .line 254
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    move-object v2, v1

    goto :goto_a

    :pswitch_6
    const-string v2, "play_back_mode_play_selected"

    goto :goto_a

    :pswitch_7
    const-string v2, "play_back_mode_play_all"

    :goto_a
    if-eqz v2, :cond_17

    .line 269
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v3

    const-string v4, "setting"

    const-string v6, "setting"

    .line 270
    invoke-virtual {v3, v4, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    if-ne v0, v5, :cond_19

    .line 274
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v2, "enqueue_option"

    .line 275
    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_18

    packed-switch v0, :pswitch_data_3

    goto :goto_b

    :pswitch_8
    const-string v1, "add_order_bottom"

    goto :goto_b

    :pswitch_9
    const-string v1, "add_order_after_current"

    goto :goto_b

    :cond_18
    const-string v1, "add_order_top"

    :goto_b
    if-eqz v1, :cond_19

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v2, "setting"

    const-string v3, "setting"

    .line 294
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    :cond_19
    :goto_c
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_weekly_logging_last_time"

    invoke-static {v0, v1, v8, v9}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
