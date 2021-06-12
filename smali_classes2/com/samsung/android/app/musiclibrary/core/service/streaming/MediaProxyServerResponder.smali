.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;
    }
.end annotation


# static fields
.field private static final ACCEPT_RANGES:[B

.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final BYTES_1M:J = 0x100000L

.field private static final BYTES_400K:J = 0x64000L

.field private static final BYTES_500K:J = 0x7d000L

.field private static final BYTES_8K:I = 0x2000

.field private static final BYTES_PARAM:Ljava/lang/String; = "bytes="

.field private static final CONNECTION_CLOSE:[B

.field private static final CONNECTION_HTTP_HEADER:Ljava/lang/String; = "Connection"

.field private static final CONTENT_LENGTH:[B

.field private static final CONTENT_LENGTH_HTTP_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_RANGE:[B

.field private static final CONTENT_RANGE_HTTP_HEADER:Ljava/lang/String; = "Content-Range"

.field private static final CONTENT_TYPE_AAC:[B

.field private static final CONTENT_TYPE_APP:[B

.field private static final CONTENT_TYPE_HTTP_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final CONTENT_TYPE_MP3:[B

.field private static final CONTENT_TYPE_MP4:[B

.field private static final CONTENT_TYPE_MULTIPART:[B

.field private static final DEBUG:Z = false

.field private static final FEATURE_PARTIAL_RESPONSE:Z = false

.field private static final HTTP_1_1:[B

.field private static final LINGER_TIME_OUT:I = 0x3c

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MIME_TYPE_AAC:Ljava/lang/String; = "audio/aac"

.field private static final MIME_TYPE_APP:Ljava/lang/String; = "application/octet-stream"

.field private static final MIME_TYPE_MP3:Ljava/lang/String; = "audio/mpeg"

.field private static final MIME_TYPE_MP4:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field private static final NEW_LINE_BYTES:[B

.field private static final RANGE_DASH:Ljava/lang/String; = "-"

.field private static final RANGE_HTTP_HEADER:Ljava/lang/String; = "Range"

.field private static final RESPONSE_CODE_200:[B

.field private static final RESPONSE_CODE_206:[B

.field private static final SUB_TAG:Ljava/lang/String; = "Responder> "

.field private static final TYPE_AAC:Ljava/lang/String; = "AAC"

.field private static final TYPE_MP3:Ljava/lang/String; = "MP3"

.field private static final TYPE_MP4:Ljava/lang/String; = "MP4"


# instance fields
.field private mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

.field private mId:Ljava/lang/String;

.field private final mSocket:Ljava/net/Socket;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r\n"

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->NEW_LINE_BYTES:[B

    const-string v0, "HTTP/1.1 "

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->HTTP_1_1:[B

    const-string v0, "200 OK\r\n"

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->RESPONSE_CODE_200:[B

    const-string v0, "206 Partial content\r\n"

    .line 455
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->RESPONSE_CODE_206:[B

    const-string v0, "Content-Length: "

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_LENGTH:[B

    const-string v0, "Content-Range: bytes "

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_RANGE:[B

    const-string v0, "Content-Type: multipart/byteranges; boundary=THIS_STRING_SEPARATES\r\n"

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_MULTIPART:[B

    const-string v0, "Content-Type: audio/mpeg\r\n"

    .line 488
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_MP3:[B

    const-string v0, "Content-Type: audio/mp4a-latm\r\n"

    .line 491
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_MP4:[B

    const-string v0, "Content-Type: audio/aac\r\n"

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_AAC:[B

    const-string v0, "Content-Type: application/octet-stream\r\n"

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_APP:[B

    const-string v0, "Accept-Ranges: bytes\r\n"

    .line 499
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->ACCEPT_RANGES:[B

    const-string v0, "Connection: close\r\n"

    .line 504
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONNECTION_CLOSE:[B

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1    # Ljava/net/Socket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method private close(Ljava/net/Socket;)V
    .locals 2

    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    const-string p1, "socket closed."

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error during socket close. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printErrorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getContentType(Ljava/lang/String;)[B
    .locals 2

    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xfc23

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "MP4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_1
    const-string v0, "MP3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-string v0, "AAC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 435
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_APP:[B

    return-object p1

    .line 433
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_MP4:[B

    return-object p1

    .line 431
    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_AAC:[B

    return-object p1

    .line 429
    :pswitch_4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_TYPE_MP3:[B

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x12af0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;J)J
    .locals 5

    .line 223
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 224
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_1

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    sub-long/2addr p2, v1

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    sub-long p1, p2, v1

    :goto_0
    return-wide p1
.end method

.method private parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;)I
    .locals 3

    .line 238
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 239
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 240
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    const-string v2, "bytes="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

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

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

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

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readHeader(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "GET"

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header GET line = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    const-string v4, "Range"

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header RANGE line = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 128
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printLog(Ljava/lang/String;)V

    .line 134
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;

    invoke-direct {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private response(Ljava/net/Socket;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v11, p0

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    const/4 v13, 0x0

    .line 139
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 141
    :try_start_1
    invoke-direct {v11, v14}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->readHeader(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;

    move-result-object v3

    .line 142
    iget-object v0, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->get:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Header Unable to parse GET"

    .line 143
    invoke-direct {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printErrorLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    .line 147
    :cond_1
    :try_start_3
    iget-object v0, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->get:Ljava/lang/String;

    iget-object v1, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->get:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->get:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    .line 150
    iget-object v0, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->request(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested to chain ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    .line 152
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/ServerProxyResponsor;

    if-eqz v1, :cond_3

    .line 154
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/ServerProxyResponsor;

    iget-object v1, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    invoke-interface {v0, v12, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/ServerProxyResponsor;->writeResponse(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void

    .line 157
    :cond_3
    :try_start_5
    iput-object v0, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    .line 158
    invoke-interface {v0, v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 159
    invoke-direct {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->waitUntilTotalBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)V

    .line 160
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v9

    .line 162
    iget-object v1, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 163
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v7

    .line 164
    invoke-direct {v11, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;)I

    move-result v1

    int-to-long v5, v1

    sub-long v1, v5, v7

    const-wide/32 v15, 0x7d000

    cmp-long v1, v1, v15

    if-lez v1, :cond_5

    sub-long v1, v9, v5

    const-wide/32 v15, 0x64000

    cmp-long v1, v1, v15

    if-gez v1, :cond_5

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v0

    move-wide v15, v5

    move-wide v5, v9

    move-wide v9, v15

    .line 170
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->temporaryPartialDownload(Ljava/io/OutputStream;Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;JJJ)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    :cond_4
    return-void

    .line 176
    :cond_5
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request to chain ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] and ready to send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {v11, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    .line 179
    iget-object v1, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;->range:Ljava/lang/String;

    if-nez v1, :cond_6

    const-wide/16 v1, 0x0

    .line 189
    invoke-direct {v11, v12, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->setupHeader(Ljava/io/OutputStream;J)V

    move-wide v4, v1

    goto :goto_0

    .line 192
    :cond_6
    invoke-direct {v11, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;)I

    move-result v1

    int-to-long v7, v1

    .line 193
    invoke-direct {v11, v3, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;J)J

    move-result-wide v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v9

    move-wide v5, v7

    move-wide/from16 v17, v7

    move-wide v7, v15

    .line 194
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->setupPartialHeader(Ljava/io/OutputStream;JJJ)V

    move-wide/from16 v4, v17

    .line 196
    :goto_0
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request to chain ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Head finished -----------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    sub-long v6, v9, v1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v12

    .line 198
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->sendBody(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;Ljava/io/OutputStream;JJ)V

    .line 199
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to chain ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Body finished -----------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 138
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_8

    .line 201
    :try_start_a
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v0

    .line 138
    :try_start_c
    throw v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_3
    if-eqz v12, :cond_a

    if-eqz v13, :cond_9

    .line 201
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v13, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    :cond_a
    :goto_4
    throw v1
.end method

.method private sendBody(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;Ljava/io/OutputStream;JJ)V
    .locals 17
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-wide/32 v7, 0x20000

    .line 302
    invoke-direct {v1, v0, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;J)V

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->obtainInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x0

    add-long v10, p3, v7

    const/4 v12, 0x0

    .line 306
    :try_start_0
    invoke-direct {v1, v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;J)V

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    cmp-long v10, p3, v10

    if-lez v10, :cond_1

    const/4 v10, 0x0

    :goto_0
    int-to-long v10, v10

    cmp-long v14, v10, p3

    if-gez v14, :cond_1

    sub-long v14, p3, v10

    .line 310
    invoke-virtual {v9, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v14

    const/16 v16, 0x0

    add-long/2addr v10, v14

    long-to-int v10, v10

    .line 311
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendBody >> bytes skipped: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    if-eqz v10, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Can\'t skip!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 v10, 0x20000

    .line 319
    new-array v10, v10, [B

    move-wide/from16 v3, p3

    .line 320
    :goto_1
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_3

    .line 321
    invoke-virtual {v2, v10, v13, v11}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v14, v11

    add-long/2addr v3, v14

    add-long v14, v3, v7

    cmp-long v11, p5, v14

    if-gez v11, :cond_2

    const-wide/16 v7, 0x1

    add-long v5, p5, v7

    sub-long/2addr v5, v3

    add-long/2addr v3, v5

    .line 326
    invoke-direct {v1, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;J)V

    .line 327
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    long-to-int v0, v5

    .line 328
    invoke-virtual {v2, v10, v13, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 337
    :cond_2
    invoke-direct {v1, v0, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;J)V

    goto :goto_1

    .line 345
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBody >> bytes sent completed [sent byte:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    .line 347
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 304
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v12, :cond_5

    .line 347
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v12, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_6
    :goto_4
    throw v2
.end method

.method private setLinger(Ljava/net/Socket;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3c

    .line 102
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore error during set linger."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupHeader(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->HTTP_1_1:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 245
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->RESPONSE_CODE_200:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "setupHeader >> response code 200"

    .line 246
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupHeader >> contentLength "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 252
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_LENGTH:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 253
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 254
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const-string p2, "MP3"

    .line 257
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->getContentType(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "setupHeader >> contentType MP3"

    .line 258
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printLog(Ljava/lang/String;)V

    .line 259
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->ACCEPT_RANGES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 260
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONNECTION_CLOSE:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 261
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private setupPartialHeader(Ljava/io/OutputStream;JJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 271
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->HTTP_1_1:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 272
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->RESPONSE_CODE_206:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "setupPartialHeader >> response code 206"

    .line 273
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    sub-long v2, p6, p4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupPartialHeader >> contentLength "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 279
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_LENGTH:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 280
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 281
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupPartialHeader >> contentLength has error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printErrorLog(Ljava/lang/String;)V

    .line 287
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONTENT_RANGE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 289
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setupPartialHeader >> rangeLine "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 291
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "MP3"

    .line 293
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->getContentType(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "setupPartialHeader >> contentType MP3"

    .line 294
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printLog(Ljava/lang/String;)V

    .line 295
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->ACCEPT_RANGES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 296
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->CONNECTION_CLOSE:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 297
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Trying to response of partial request but total bytes is abnormal "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private temporaryPartialDownload(Ljava/io/OutputStream;Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;JJJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v9, p4

    move-object/from16 v0, p2

    .line 206
    invoke-direct {v8, v0, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder$Header;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p8

    move-wide v6, v13

    .line 207
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->setupPartialHeader(Ljava/io/OutputStream;JJJ)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to chain ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Partial Head finished ----------------------- existBytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    .line 211
    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v3, p8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v1

    move-object v10, v0

    move-object/from16 v11, p1

    move-wide v5, v13

    move-wide/from16 v13, p8

    move-wide v15, v5

    move-object/from16 v17, p3

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;JJLcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)V

    .line 216
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/HttpPartialDownloader;->download()V

    .line 217
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to chain ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Partial Body finished -----------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method private waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;J)V
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 385
    monitor-enter p0

    .line 387
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isDead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    monitor-exit p0

    return-void

    .line 393
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v0

    .line 394
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 398
    monitor-exit p0

    return-void

    :cond_1
    cmp-long v0, v0, p2

    if-ltz v0, :cond_2

    .line 401
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 409
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 411
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 418
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitUntilBytesPrepared wake up ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string p2, "File object already in dead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 423
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private waitUntilTotalBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 351
    monitor-enter p0

    .line 353
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isDead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    monitor-exit p0

    return-void

    .line 359
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 360
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 367
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 369
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 375
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitUntilBytesPrepared wake up ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "File object already in dead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 380
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public onChangedFileLoad()V
    .locals 1

    .line 441
    monitor-enter p0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 443
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
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->setLinger(Ljava/net/Socket;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->response(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->close(Ljava/net/Socket;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->printErrorLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;->close(Ljava/net/Socket;)V

    throw v0
.end method
