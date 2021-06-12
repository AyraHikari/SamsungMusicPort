.class final Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "CloseWorker: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mIsReleased:Z

.field private final mPlayers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    return-void
.end method

.method private getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 108
    monitor-exit p0

    return-object v1

    .line 110
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseWorker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseWorker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private release(Landroid/media/MediaPlayer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWork player released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method private releaseRemainPlayer()V
    .locals 1

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release(Landroid/media/MediaPlayer;)V

    if-nez v0, :cond_0

    return-void
.end method

.method private waitWork()V
    .locals 1

    .line 90
    monitor-enter p0

    .line 92
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    if-nez v0, :cond_0

    const-string v0, "waitWork"

    .line 93
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method addWork(Landroid/media/MediaPlayer;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWork "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/FadeOutController;->start(Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaFadeController;Landroid/media/MediaPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    if-eqz v0, :cond_3

    const-string p2, "addWork but worker is already released"

    .line 77
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release(Landroid/media/MediaPlayer;)V

    return-void

    .line 81
    :cond_3
    monitor-enter p0

    if-nez p2, :cond_4

    .line 83
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 85
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method isReleased()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    return v0
.end method

.method release()V
    .locals 1

    const-string v0, "release"

    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 124
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 125
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->waitWork()V

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->releaseRemainPlayer()V

    const-string v0, "work finished"

    .line 131
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method
