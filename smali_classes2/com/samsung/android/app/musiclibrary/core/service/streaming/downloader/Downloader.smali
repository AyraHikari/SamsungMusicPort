.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "Downloader> "

.field private static sRandCount:I


# instance fields
.field private final mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

.field private final mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    .line 30
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    return-void
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private randomException(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    sget v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->sRandCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->sRandCount:I

    rem-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    mul-long p1, p1, v0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Random exception during download"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDownloadFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    return-object v0
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->download()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getAvailableBytes()J

    move-result-wide v1

    .line 63
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getTotalBytes()J

    move-result-wide v3

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " path : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    .line 65
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taken "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-wide v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->requestedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->printInfoLog(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->finished(Z)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->notifyChanges()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->clearObservers()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 59
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->printErrorLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getAvailableBytes()J

    move-result-wide v2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getTotalBytes()J

    move-result-wide v4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished! "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " path : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    .line 65
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " taken "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-wide v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->requestedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->printInfoLog(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->finished(Z)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->notifyChanges()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->clearObservers()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 62
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getAvailableBytes()J

    move-result-wide v2

    .line 63
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getTotalBytes()J

    move-result-wide v4

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " path : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    .line 65
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " taken "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-wide v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->requestedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->printInfoLog(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->finished(Z)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->notifyChanges()V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->clearObservers()V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    .line 73
    :cond_1
    throw v0
.end method
