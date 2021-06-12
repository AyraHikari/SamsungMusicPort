.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile$IllegalTotalBytesException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final BYTES_3M:I = 0x300000

.field private static final BYTES_4K:I = 0x1000

.field private static final CACHE_CONTROL_NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final CONNECTION_TIME_OUT:I = 0x1388

.field private static final DASH:Ljava/lang/String; = "-"

.field private static final DEBUG:Z = false

.field private static final DOWNLOAD_BYTES_LIMIT_AT_ONCE:I = 0x300000

.field private static final HTTP_RANGE_NOT_SATISFIED:I = 0x1a0

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final NOTIFY_BYTE_THRESHHOLD:I = 0x20000

.field private static final PROPERTY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static final PROPERTY_RANGE:Ljava/lang/String; = "Range"

.field private static final READ_TIME_OUT:I = 0x2710

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final SUB_TAG:Ljava/lang/String; = "Downloader> "

.field private static final TEST_RANDOM_FAIL:Z = false

.field private static final TEST_SLOW_NETWORK:Z = false

.field private static final VALUE_FORMAT_RANGE_BYTES:Ljava/lang/String; = "bytes=%d-"

.field private static final VALUE_FORMAT_RANGE_BYTES_FROM_TO:Ljava/lang/String; = "bytes=%d-%d"


# instance fields
.field private mExistBytes:J

.field private mFinished:Z

.field private mHasError:Z

.field private mIsActive:Z

.field private final mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Ljava/lang/String;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

.field private mTotalBytes:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mFinished:Z

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mHasError:Z

    const/4 v2, 0x1

    .line 88
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mIsActive:Z

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mPath:Ljava/lang/String;

    .line 93
    iget-wide v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_0

    .line 94
    iget-wide p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    :cond_0
    return-void
.end method

.method private calculateTotalBytes(Ljava/net/HttpURLConnection;J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 381
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v0, p2

    return-wide v0

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method private computeByteRange(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;JJ)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->isPreCache()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 334
    iget-object p4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide p4, p4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    cmp-long p4, p4, p2

    if-lez p4, :cond_0

    .line 338
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p5, "bytes=%d-%d"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v3

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    .line 339
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    .line 338
    invoke-static {p4, p5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    new-instance p4, Ljava/io/IOException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already downloaded : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 340
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->partialDownload:Z

    if-eqz p1, :cond_2

    const-wide/32 v4, 0x300000

    cmp-long p1, p4, v4

    if-lez p1, :cond_2

    .line 342
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "bytes=%d-%d"

    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p5, v3

    add-long/2addr p2, v4

    .line 343
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p5, v2

    .line 342
    invoke-static {p1, p4, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 346
    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "bytes=%d-"

    new-array p5, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p5, v3

    invoke-static {p1, p4, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private computeExistBytesAndMakePathIfEmpty()J
    .locals 5

    .line 313
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-wide v0

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_1
    return-wide v2
.end method

.method private computeTotalBytesWhenUnknown(Ljava/net/HttpURLConnection;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;J)J
    .locals 1

    .line 366
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->isPreCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->calculateTotalBytes(Ljava/net/HttpURLConnection;J)J

    move-result-wide p3

    .line 368
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1

    .line 375
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->calculateTotalBytes(Ljava/net/HttpURLConnection;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private debugTotalBytes(Ljava/net/HttpURLConnection;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;JJ)V
    .locals 1

    .line 352
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->calculateTotalBytes(Ljava/net/HttpURLConnection;J)J

    move-result-wide p3

    cmp-long p1, p5, p3

    if-eqz p1, :cond_0

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Total bytes is wrong, requested "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, " but response "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SMUSIC-SV-PlayerServer"

    .line 359
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Downloader> [id: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private getTotalSizeFromUrlConnection(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 284
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1388

    .line 286
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x2710

    .line 287
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "GET"

    .line 288
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    .line 290
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 294
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "bytes=%d-"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    .line 295
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 297
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP response error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytesRange: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method private prepare(Ljava/net/HttpURLConnection;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v6, p1

    move-object/from16 v8, p2

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->computeExistBytesAndMakePathIfEmpty()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    .line 225
    iget-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 227
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    .line 229
    :cond_0
    iget-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 230
    :goto_0
    iget-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    iget-wide v4, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    sub-long v4, v0, v4

    if-nez v11, :cond_3

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    goto :goto_1

    .line 232
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes was wrong mTotalBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mExistBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    :goto_1
    iget-wide v2, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->computeByteRange(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;JJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    .line 236
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 241
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 242
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_4

    if-eqz v11, :cond_4

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getDownloadingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getTotalSizeFromUrlConnection(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "SMUSIC-SV-PlayerServer"

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downloader> [id: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] responseCode "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bytesRange "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " connection.getContentLength() "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " mExistBytes "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-wide v4, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 252
    iget-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    iput-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->notifyChanges()V

    return v9

    :cond_4
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_6

    const/16 v2, 0xce

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 260
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP response error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytesRange: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    .line 267
    iget-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    invoke-direct {p0, p1, v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->computeTotalBytesWhenUnknown(Ljava/net/HttpURLConnection;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    goto :goto_3

    .line 269
    :cond_7
    iget-object v1, v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    iget-wide v3, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    :cond_8
    iget-wide v3, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    iget-wide v11, v7, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->debugTotalBytes(Ljava/net/HttpURLConnection;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;JJ)V

    :cond_9
    :goto_3
    return v10
.end method

.method private testSleep(J)V
    .locals 0

    .line 425
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private testThrowRandomFail()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0xa

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 390
    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "random fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const/high16 p2, 0x20000

    const/4 v1, 0x0

    .line 400
    :try_start_0
    new-array v2, p2, [B

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 401
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 402
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mIsActive:Z

    if-nez v6, :cond_1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    if-lt v4, p2, :cond_0

    .line 408
    iget-wide v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->notifyChanges()V

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v4, p2, :cond_3

    .line 417
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    int-to-long v2, v4

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->notifyChanges()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 396
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_4

    .line 420
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_3
    throw p1
.end method


# virtual methods
.method public active(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mIsActive:Z

    return-void
.end method

.method clearObservers()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->clear()V

    return-void
.end method

.method public download()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getDownloadingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 187
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x1388

    .line 188
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    .line 189
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    .line 190
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    .line 192
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 195
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->prepare(Ljava/net/HttpURLConnection;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->writeToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 202
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    return-void

    :catchall_1
    move-exception v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 202
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 213
    :catch_1
    :cond_4
    throw v2
.end method

.method finished(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mFinished:Z

    .line 437
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mHasError:Z

    return-void
.end method

.method public getAvailableBytes()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mExistBytes:J

    return-wide v0
.end method

.method public getDownloadingUrl()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "download"

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mUri:Landroid/net/Uri;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mTotalBytes:J

    return-wide v0
.end method

.method hasError()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mHasError:Z

    return v0
.end method

.method public isDead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mFinished:Z

    return v0
.end method

.method notifyChanges()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->notifyObservers()V

    :cond_0
    return-void
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    return-void
.end method

.method public setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    return-void
.end method
