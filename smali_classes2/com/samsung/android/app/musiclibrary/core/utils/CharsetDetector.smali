.class public Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final CACHE_SIZE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CharsetDetector"

.field private static final sCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedCharsets:[Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [Ljava/nio/charset/Charset;

    const-string v1, "UTF-8"

    .line 33
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "UTF-16BE"

    .line 34
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "UTF-32"

    .line 35
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "UTF-32BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "UTF-32LE"

    .line 36
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "EUC-KR"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sSupportedCharsets:[Ljava/nio/charset/Charset;

    .line 38
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCharset(Ljava/io/BufferedInputStream;)Ljava/nio/charset/Charset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sSupportedCharsets:[Ljava/nio/charset/Charset;

    array-length v0, v0

    .line 72
    new-array v1, v0, [Ljava/nio/charset/CharsetDecoder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 74
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sSupportedCharsets:[Ljava/nio/charset/Charset;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/io/InputStream;[Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-nez p0, :cond_1

    .line 83
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static findCharset(Ljava/io/InputStream;[Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/Charset;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    array-length v0, p1

    const/16 v1, 0x1000

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_0

    .line 96
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->TAG:Ljava/lang/String;

    const-string v3, "No available"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 100
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    new-array v1, v1, [B

    .line 108
    new-array v2, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    const/4 v5, 0x1

    .line 110
    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v5, v0

    const/4 v4, 0x0

    .line 112
    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_8

    move v7, v4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_6

    .line 114
    aget-boolean v8, v2, v4

    if-nez v8, :cond_2

    goto :goto_5

    .line 118
    :cond_2
    :try_start_1
    aget-object v8, p1, v4

    invoke-static {v1, v3, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    add-int/lit8 v5, v5, -0x1

    .line 121
    aput-boolean v3, v2, v4

    if-ne v4, v7, :cond_5

    add-int/lit8 v8, v4, 0x1

    :goto_4
    move v10, v8

    move v8, v7

    move v7, v10

    if-ge v7, v0, :cond_4

    .line 125
    aget-boolean v8, v2, v7

    if-eqz v8, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v8, v7, 0x1

    goto :goto_4

    :cond_4
    move v7, v8

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-nez v5, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    move v4, v7

    goto :goto_2

    .line 136
    :cond_8
    aget-object p0, p1, v4

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 4

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 46
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/io/BufferedInputStream;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 47
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p0, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 45
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 49
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 53
    :catch_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static findCharset([B)Ljava/nio/charset/Charset;
    .locals 2

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p0, 0x0

    .line 59
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/io/BufferedInputStream;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p0, :cond_0

    .line 60
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 61
    :catch_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_2
    return-object v1
.end method
