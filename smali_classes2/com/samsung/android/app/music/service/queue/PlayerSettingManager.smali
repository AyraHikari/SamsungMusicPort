.class public final Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;
.super Lcom/samsung/android/app/music/service/ServiceSettingManager;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# instance fields
.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;-><init>(Landroid/content/Context;)V

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAddedSeqQueue()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "recently_queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlacSupportNetwork()I
    .locals 3

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "flac_support_network"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getForceStreamingPermission()Z
    .locals 3

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "force_streaming_permission"

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getListenQuality(I)I
    .locals 3

    const v0, 0x40002

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x80002

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v0, "quality_when_listen"

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    const-string p1, "SV"

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getListenQuality "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getPlayListId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryKey()Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "query_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/lang/String;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "list_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQueueVersion()J
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "queue_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSortMode()I
    .locals 3

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "sort"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStreamingCacheSize()J
    .locals 2

    .line 55
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnionShuffleRepeat()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUriType()I
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "uri_type"

    const/4 v2, 0x1

    .line 157
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isExplicitAllowed()Z
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStreamingCacheEnabled()Z
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "streaming_cache_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setForceStreamingPermission(Z)V
    .locals 2

    .line 91
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "force_streaming_permission"

    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPlayListId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue"

    .line 170
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p3, "recently_queue"

    .line 171
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p3, "list_position"

    .line 172
    invoke-interface {v0, p3, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p3, "uri_type"

    .line 173
    invoke-interface {v0, p3, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p3, "query_key"

    .line 174
    invoke-interface {v0, p3, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p3, "queue_version"

    .line 175
    invoke-interface {v0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQueuePosition(I)V
    .locals 1

    const-string v0, "list_position"

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public setQueueVersion(J)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSortMode(I)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "sort"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUnionShuffleRepeat(I)V
    .locals 0

    return-void
.end method
