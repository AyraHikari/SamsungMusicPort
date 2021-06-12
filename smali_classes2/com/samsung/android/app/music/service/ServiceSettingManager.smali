.class public abstract Lcom/samsung/android/app/music/service/ServiceSettingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/service/ServiceSettingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager$1;-><init>(Lcom/samsung/android/app/music/service/ServiceSettingManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a:Landroid/content/Context;

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a:Landroid/content/Context;

    const-string v1, "music_service_pref"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 1

    .line 47
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;F)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePreferences key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePreferences key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePreferences key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePreferences key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected b(Ljava/lang/String;F)F
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    const-string v0, "SMUSIC-SV"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferencesFloat key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public b(Ljava/lang/String;I)I
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "SMUSIC-SV"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferencesInt key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SMUSIC-SV"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferencesString key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected b(Ljava/lang/String;Z)Z
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "SMUSIC-SV"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferencesBoolean key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getActiveQueueType()I
    .locals 2

    const-string v0, "queue_type"

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBargeIn()Z
    .locals 2

    const-string v0, "barge_in"

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDuplicateOption()Z
    .locals 1

    .line 198
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->c()Z

    move-result v0

    return v0
.end method

.method public getEdgeLighting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLastPlayedSongPosition(J)J
    .locals 6

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "last_played_media_id"

    const-wide/16 v2, 0x0

    .line 240
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, p1, v4

    if-eqz p1, :cond_0

    return-wide v2

    :cond_0
    const-string p1, "last_played_position"

    .line 244
    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLockScreen()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a:Landroid/content/Context;

    .line 129
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v0

    const-string v1, "lock_screen"

    .line 130
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 2

    const-string v0, "play_speed"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getRepeat()I
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "repeat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenOffMusic()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "screen_off_music"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    const-string v2, "screen_off_music"

    .line 142
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->setScreenOffMusic(Z)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "screen_off_music"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v2, "screen_off_music"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShuffle()I
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b:Landroid/content/SharedPreferences;

    const-string v1, "shuffle"

    const/4 v2, 0x0

    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSkipSilence()Z
    .locals 2

    const-string v0, "skip_silences"

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSmartVolume()Z
    .locals 2

    const-string v0, "smart_volume"

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDataUsageAgreed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLegalAgreed()Z
    .locals 4

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    const-string v1, "SV"

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isLegalAgreed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isMobileDataOn()Z
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SV"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isMobileDataOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isMyMusicMode()Z
    .locals 4

    .line 219
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 222
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    const-string v1, "SV"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isMyMusicMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setActiveQueueType(I)V
    .locals 1

    const-string v0, "queue_type"

    .line 206
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public setBargeIn(Z)V
    .locals 1

    const-string v0, "barge_in"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDuplicateOption(Z)V
    .locals 0

    .line 193
    invoke-static {p1}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(Z)V

    return-void
.end method

.method public setEdgeLighting(Z)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "edge_lighting"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastPlayedSongInfo(JJ)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "last_played_media_id"

    .line 230
    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putLong(Ljava/lang/String;J)V

    const-string p1, "last_played_position"

    .line 231
    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLockScreen(Z)V
    .locals 1

    const-string v0, "lock_screen"

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    const-string v0, "play_speed"

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public setRepeat(I)V
    .locals 1

    const-string v0, "repeat"

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public setScreenOffMusic(Z)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "screen_off_music"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShuffle(I)V
    .locals 1

    const-string v0, "shuffle"

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public setSkipSilence(Z)V
    .locals 1

    const-string v0, "skip_silences"

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSmartVolume(Z)V
    .locals 1

    const-string v0, "smart_volume"

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSupportAod(I)V
    .locals 1

    const-string v0, "support_aod"

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public startObserving()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    return-void
.end method

.method public stopObserving()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/ServiceSettingManager;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/ServiceSettingManager;->c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    return-void
.end method
