.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final TAG:Ljava/lang/String; = "com.sec.android.app.music.session.PlayControl"

.field private static sInstance:Landroid/media/session/MediaSession;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;
    .locals 3

    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Landroid/media/session/MediaSession;

    const-string v2, "com.sec.android.app.music.session.PlayControl"

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    .line 31
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized releasePlayer()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 36
    monitor-exit v0

    return-void

    .line 38
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    const/4 v1, 0x0

    .line 39
    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 44
    monitor-exit v0

    return-void

    .line 47
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 p0, 0x0

    :cond_2
    invoke-virtual {v1, p0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    const-string p0, "SMUSIC-SV-MediaBrowser"

    const-string v1, "Set a now playing queue"

    .line 48
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0

    throw p0
.end method
