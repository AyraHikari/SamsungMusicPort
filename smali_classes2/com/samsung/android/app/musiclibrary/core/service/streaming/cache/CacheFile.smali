.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final BYTES_1MB:J = 0x100000L

.field private static final DEBUG:Z = false

.field private static final DEBUG_LIFECYCLE:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MAX_ERROR_COUNT:I = 0x3

.field private static final NOTIFY_BYTE_THRESHHOLD:J = 0x100000L

.field private static final POST_FIX_TEMP:Ljava/lang/String; = "TEMP"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "

.field private static final WAIT_TIME_OUT:I = 0x1388

.field private static final WAIT_TIME_OUT_WHEN_DOWNLOAD_FAIL:I = 0x1f4


# instance fields
.field private mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDecryptedPath:Ljava/lang/String;

.field private mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

.field private mErrorCount:I

.field private mExistBytes:J

.field private mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

.field private mForceToReload:Z

.field private mHasExplicitRequest:Z

.field private mIsActive:Z

.field private mIsContentLoadFinished:Z

.field private mIsDead:Z

.field private final mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

.field private mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;Ljava/lang/String;)V
    .locals 3
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mErrorCount:I

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsContentLoadFinished:Z

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    .line 95
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    .line 96
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    if-nez p3, :cond_0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    .line 99
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseCp(Ljava/lang/String;)I

    move-result p3

    invoke-static {p5, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getBaseCachePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-boolean p2, p3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSameQuality:Z

    if-eqz p2, :cond_1

    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TEMP"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private decryptBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z
    .locals 10
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    .line 435
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->getCacheId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    .line 436
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x1000

    .line 439
    :try_start_2
    new-array v3, v3, [B

    :goto_0
    const/4 v4, 0x0

    .line 440
    :cond_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const-wide/32 v7, 0x100000

    if-eq v5, v6, :cond_1

    .line 441
    invoke-virtual {v2, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    int-to-long v5, v4

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    .line 444
    iget-wide v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    const/4 v4, 0x0

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V

    goto :goto_0

    :cond_1
    int-to-long v3, v4

    cmp-long v5, v3, v7

    if-gez v5, :cond_2

    .line 450
    iget-wide v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    const/4 v7, 0x0

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 434
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_1
    if-eqz v4, :cond_4

    .line 453
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :goto_2
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 434
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    .line 453
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_3
    move-exception p1

    :try_start_a
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    :goto_4
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private delete(Ljava/lang/String;)V
    .locals 1

    .line 568
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private deleteFileIfNotUse()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 559
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsContentLoadFinished:Z

    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->delete(Ljava/lang/String;)V

    return-void
.end method

.method private getDownloadFileTotalBytes()J
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheManager> [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 116
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->getPostFix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasClient()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasDecryptedFile()Z
    .locals 5

    .line 363
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 364
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCachingCondition(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z
    .locals 4

    .line 551
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->saveFullCacheOnly:Z

    if-eqz p1, :cond_1

    .line 552
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isExistFile()Z
    .locals 4

    .line 358
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getAvailableBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedToDownloadRemainBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z
    .locals 4

    if-eqz p2, :cond_1

    .line 540
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->partialDownload:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->isOverRequestSize(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isOverRequestSize(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 546
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->isPreCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    .line 547
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyChanges()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->notifyObservers()V

    :cond_0
    return-void
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printErrorWithCallStackLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LifeCycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LifeCycle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%-50s | %-20s | %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMUSIC-SV-PlayerServer"

    .line 614
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printWarningLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestDecrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->hasDecryptedFile()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->decryptBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z

    move-result v0

    .line 392
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->isPreCache()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CachedFile decoding result file size is already over request size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printInfoLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    .line 398
    iget-wide v4, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->downloadedBytes:J

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iget-wide v4, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_6

    iget-wide v4, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    iget-wide v6, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    goto :goto_1

    .line 407
    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    iget-wide v6, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 408
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsContentLoadFinished:Z

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CachedFile decoding result file size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printInfoLog(Ljava/lang/String;)V

    goto :goto_2

    .line 410
    :cond_3
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    iget-wide v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 411
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedFile decoding result file size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and try to download remain bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printInfoLog(Ljava/lang/String;)V

    .line 413
    iget-boolean p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSameQuality:Z

    if-eqz p2, :cond_5

    .line 414
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    goto :goto_2

    .line 416
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->retryCache(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    goto :goto_2

    .line 401
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached data is wrong, delete it and cache it again. bytesPrepared: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mExistBytes: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " CacheData: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printErrorLog(Ljava/lang/String;)V

    .line 403
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->delete(Ljava/lang/String;)V

    .line 404
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    .line 405
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->retryCache(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;
        }
    .end annotation

    const-string v0, "start download"

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->isPreCache()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->hasFreeSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " partial cache requested but space is not enough"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "failed download"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 471
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;-><init>()V

    throw p1

    .line 474
    :cond_1
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;

    iget-wide v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    iget v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->secureType:I

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    .line 475
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object v0

    const/4 v2, 0x0

    .line 478
    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->isNeedToDownloadRemainBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;)V

    .line 480
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    .line 481
    invoke-virtual {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 483
    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->download()V

    const/4 v3, 0x0

    .line 484
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mErrorCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_2
    invoke-virtual {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "ArrayIndexOutOfBoundsException but this seems okhttp bug."

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "failed download"

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 489
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->throwDownloadExceptionIfExceedMaxCount(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 495
    :goto_3
    invoke-virtual {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    throw p1

    .line 499
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mErrorCount:I

    if-gtz v0, :cond_6

    const-string v0, "finished download"

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 506
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->isCachingCondition(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->getSecureType()I

    move-result v0

    if-ne v0, v1, :cond_3

    return-void

    .line 510
    :cond_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-direct {v0, v1, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;)V

    const-string v1, "start encrypt"

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->encrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSkippableFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    :cond_4
    const-string v0, "finished encrypt"

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 501
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 502
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;

    invoke-direct {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;)V

    throw p1
.end method

.method private retryCache(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;
        }
    .end annotation

    const-string v0, "Abnormal cache file, delete original one and download again."

    .line 423
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printErrorLog(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->delete(Ljava/lang/String;)V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->deleteFileIfNotUse()V

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    .line 429
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    return-void
.end method

.method private throwDownloadExceptionIfExceedMaxCount(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;
        }
    .end annotation

    .line 522
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mErrorCount:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 527
    monitor-enter p0

    const-wide/16 v2, 0x1f4

    .line 529
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 530
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 535
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mErrorCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mErrorCount:I

    return-void

    .line 535
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 524
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 525
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;)V

    throw v0
.end method

.method private waitNewClient()V
    .locals 1

    .line 196
    monitor-enter p0

    .line 197
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    if-eqz v0, :cond_0

    .line 203
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z

    if-eqz v0, :cond_1

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 212
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 217
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private waitNewClientInSecond()V
    .locals 2

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasObserver()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 227
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 228
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    .line 230
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 235
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private waitNoClient()V
    .locals 1

    .line 174
    monitor-enter p0

    .line 175
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->hasClient()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->isExistFile()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 177
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 183
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method


# virtual methods
.method public active(Z)V
    .locals 1

    .line 334
    monitor-enter p0

    .line 338
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->active(Z)V

    .line 347
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAvailableBytes()J
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "cache"

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mUri:Landroid/net/Uri;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    return-wide v0

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->getDownloadFileTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDead()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isDead()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsContentLoadFinished:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    .line 272
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isLoadFinished()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    .line 266
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->obtainInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onChangedFileLoad()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mExistBytes:J

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 1

    .line 303
    monitor-enter p0

    const/4 v0, 0x0

    .line 304
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-eqz v1, :cond_7

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->waitNewClient()V

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z

    .line 127
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    if-nez v2, :cond_1

    goto :goto_2

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    .line 134
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    if-nez v3, :cond_2

    .line 135
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSkippableFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    goto :goto_1

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->requestDecrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)V

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->isOverRequestSize(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->deleteFileIfNotUse()V

    .line 146
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->deleteFileIfNotUse()V

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V

    return-void

    .line 150
    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    if-eqz v2, :cond_5

    .line 151
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->waitNewClientInSecond()V

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->isLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->waitNoClient()V

    .line 157
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->hasClient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->deleteFileIfNotUse()V
    :try_end_1
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->deleteFileIfNotUse()V

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    .line 162
    :try_start_2
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile$DownloadFailException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->printErrorLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    .line 164
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->deleteFileIfNotUse()V

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsDead:Z

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V

    throw v1
.end method

.method public setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mForceToReload:Z

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->notifyChanges()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsContentLoadFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsContentLoadFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 1

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 317
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasObserver()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;->mHasExplicitRequest:Z

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
