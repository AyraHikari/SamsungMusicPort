.class final Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "CurrentMediaTask: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private final mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private mIsCancel:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-nez v1, :cond_0

    const-string v1, "SMUSIC-SV-PlayerMedia"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentMediaTask: Cancel to get playing id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 43
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->cancel()V

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRunning()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-eqz v1, :cond_0

    .line 54
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "SV-PlayerMedia"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentMediaTask: Trying to prepare playing id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 58
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "SV-PlayerMedia"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentMediaTask: Playing uri Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_2
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-nez v2, :cond_1

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 76
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_3
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-nez v2, :cond_2

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 68
    :cond_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 56
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
