.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "DownloaderManager> "

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;


# instance fields
.field private final mDownloaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private download(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] requested"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->printInfoLog(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->getDownloadFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] requested to already running"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->printLog(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->getDownloadFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static obtain()Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    return-object v0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloaderManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloaderManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloaderManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getFileRequestIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRunningCount()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] removed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->printInfoLog(Ljava/lang/String;)V

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->download(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] find! "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->printInfoLog(Ljava/lang/String;)V

    return-object v0
.end method
