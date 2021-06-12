.class public final Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;
.super Lcom/samsung/android/app/music/service/ServiceSettingManager;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# instance fields
.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;-><init>(Landroid/content/Context;)V

    const-string v0, "radio_queue_pref"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getAddedSeqQueue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlacSupportNetwork()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForceStreamingPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListenQuality(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPlayListId()Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "playlist_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryKey()Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "query_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/lang/String;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "list_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQueueVersion()J
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "queue_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSortMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getStreamingCacheSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUnionShuffleRepeat()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUriType()I
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    const-string v1, "uri_type"

    const/4 v2, 0x1

    .line 135
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExplicitAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreamingCacheEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setForceStreamingPermission(Z)V
    .locals 0

    return-void
.end method

.method public setPlayListId(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "playlist_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 147
    iget-object p4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "queue"

    .line 148
    invoke-interface {p4, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p3, "list_position"

    .line 149
    invoke-interface {p4, p3, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p3, "uri_type"

    .line 150
    invoke-interface {p4, p3, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p3, "query_key"

    .line 151
    invoke-interface {p4, p3, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p3, "queue_version"

    .line 152
    invoke-interface {p4, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQueuePosition(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "list_position"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQueueVersion(J)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSortMode(I)V
    .locals 0

    return-void
.end method

.method public setUnionShuffleRepeat(I)V
    .locals 0

    return-void
.end method
