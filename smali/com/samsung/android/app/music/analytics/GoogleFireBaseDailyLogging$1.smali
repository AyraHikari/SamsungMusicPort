.class final Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging;->a(Landroid/content/Context;)V
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

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "GoogleFireBaseDailyLogging"

    const-string v1, "sendDailyLogging - run"

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v1, "saDailyLoggingTest"

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v3, "key_daily_logging_last_time"

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-nez v0, :cond_0

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    sub-long v0, v8, v6

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    const-string v0, "GoogleFireBaseDailyLogging"

    const-string v1, "sendDailyLogging - (currentTime - lastLoggingTime) < ONE_DAY"

    .line 52
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;)I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "app_open"

    const-string v4, "count_playlist"

    .line 62
    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->c(Landroid/content/Context;)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "app_open"

    const-string v4, "recently_added"

    .line 66
    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    .line 70
    invoke-static {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->e(Landroid/content/Context;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "app_open"

    const-string v4, "recently_played"

    .line 72
    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->d(Landroid/content/Context;)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "app_open"

    const-string v4, "most_played"

    .line 77
    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_current_playlist_count"

    .line 81
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v3, "app_open"

    const-string v4, "current_playlist_tracks"

    .line 84
    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_bt"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "play_info"

    const-string v3, "content_type"

    const-string v4, "bluetooth"

    .line 92
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_bt"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_headset"

    .line 98
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "play_info"

    const-string v3, "content_type"

    const-string v4, "headset_plug"

    .line 101
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_headset"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_smart_view"

    .line 107
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "play_info"

    const-string v3, "content_type"

    const-string v4, "smart_view"

    .line 110
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_smart_view"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_device"

    .line 116
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "play_info"

    const-string v2, "content_type"

    const-string v3, "default"

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_play_info_sound_path_device"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/favorite/Favorite;->getFavoriteCategoryFireBaseLoggingValues(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 126
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v2, :cond_6

    if-ltz v1, :cond_6

    .line 130
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v3

    const-string v4, "favorite"

    .line 131
    invoke-virtual {v3, v4, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    const-string v0, "GoogleFireBaseDailyLogging"

    const-string v1, "sendDailyLogging - HashMap is null or HashMap size is zero"

    .line 135
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->a:Landroid/content/Context;

    const-string v1, "key_daily_logging_last_time"

    invoke-static {v0, v1, v8, v9}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
