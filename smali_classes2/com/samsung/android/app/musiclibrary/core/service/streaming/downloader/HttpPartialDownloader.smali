.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final CACHE_CONTROL_NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final CONNECTION_TIME_OUT:I = 0x1388

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final PROPERTY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static final PROPERTY_RANGE:Ljava/lang/String; = "Range"

.field private static final READ_TIME_OUT:I = 0x2710

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final SUB_TAG:Ljava/lang/String; = "HttpDownloader> "


# instance fields
.field private final mEndByte:J

.field private final mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mPartialRange:Ljava/lang/String;

.field private final mStartByte:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;JJLcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mUrl:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mOutputStream:Ljava/io/OutputStream;

    .line 56
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mPartialRange:Ljava/lang/String;

    .line 57
    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mStartByte:J

    .line 58
    iput-wide p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mEndByte:J

    .line 59
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    return-void
.end method

.method private prepare(Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Range"

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mPartialRange:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 110
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 112
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xce

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP response error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private write(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000

    .line 128
    new-array v0, v0, [B

    .line 129
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v1

    add-long/2addr p3, v3

    const-wide/32 v3, 0x20000

    add-long/2addr v3, p3

    cmp-long v1, p5, v3

    if-gez v1, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr p5, v3

    sub-long/2addr p5, p3

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    long-to-int p1, p5

    .line 135
    invoke-virtual {p2, v0, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public download()V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x1388

    .line 69
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    .line 70
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    .line 71
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    .line 73
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 76
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->prepare(Ljava/net/HttpURLConnection;)V

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mOutputStream:Ljava/io/OutputStream;

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mStartByte:J

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->mEndByte:J

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->write(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_0

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 89
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 100
    :catch_1
    :cond_3
    throw v2
.end method
