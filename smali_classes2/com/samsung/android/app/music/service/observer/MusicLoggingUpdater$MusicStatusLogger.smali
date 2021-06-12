.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicStatusLogger"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 327
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->b(Landroid/content/Context;)[Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->loggingMusicStatus(Landroid/content/Context;[Landroid/content/ContentValues;)V

    return-void
.end method

.method private b(Landroid/content/Context;)[Landroid/content/ContentValues;
    .locals 5

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-static {p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 336
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "feature"

    const-string v4, "CTTR"

    .line 337
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra"

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "CTPL"

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    .line 345
    invoke-static {p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "value"

    .line 346
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->c(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "SCLS"

    .line 351
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 352
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "SSOM"

    .line 357
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 358
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "feature"

    const-string v3, "SKSL"

    .line 363
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 364
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ContentValues;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    return-object p1
.end method

.method private static c(Landroid/content/Context;)I
    .locals 9

    const-string v0, "SELECT count(*) FROM audio_playlists_map WHERE playlist_id IN (SELECT _id FROM audio_playlists WHERE name NOT IN (?, ?));"

    const-string v1, "FavoriteList#328795!432@1341"

    const-string v2, "now playing list 0123456789"

    .line 375
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    .line 379
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 380
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 381
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 385
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :catchall_1
    move-exception v0

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 385
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 394
    invoke-static {p0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getLockScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1000"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 405
    invoke-static {p0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getScreenOffMusic()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1000"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 416
    invoke-static {p0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSkipSilence()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1000"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;->a(Landroid/content/Context;)V

    return-void
.end method
