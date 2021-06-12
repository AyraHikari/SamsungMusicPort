.class public Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader$JsonData;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x400

.field private static final DEFAULT_TIME_OUT:I = 0xbb8

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MilkLyricsDownloader"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private downloadInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)I
    .locals 9

    .line 77
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->serverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->fileUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    .line 88
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->serverUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v5, "GET"

    .line 90
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0xbb8

    .line 91
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_8

    const/16 v5, 0x400

    .line 96
    new-array v5, v5, [B

    .line 98
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 99
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    :goto_0
    :try_start_3
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 102
    invoke-virtual {v7, v5, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 104
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_3

    .line 105
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz v4, :cond_4

    .line 112
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return v3

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 99
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_1
    if-eqz v3, :cond_5

    .line 104
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_8
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 98
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v2, :cond_6

    .line 105
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catch_3
    move-exception v3

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_7
    :goto_4
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_8
    if-eqz v4, :cond_9

    .line 112
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v2, v4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v2, v4

    goto :goto_5

    :catchall_4
    move-exception p1

    goto :goto_7

    :catch_5
    move-exception v0

    .line 109
    :goto_5
    :try_start_c
    sget-object v3, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Milk lyrics download failed url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->serverUrl:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v2, :cond_9

    .line 112
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    :goto_6
    return v1

    :goto_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw p1
.end method


# virtual methods
.method public download(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)I
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;->downloadInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    instance-of p1, p1, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;

    return p1
.end method

.method public getUpdateTime(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)J
    .locals 5

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;->downloadInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;)I

    .line 51
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader$Request;->fileUrl:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 53
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    const-class v2, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader$JsonData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader$JsonData;

    if-eqz v1, :cond_0

    .line 56
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, v1, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader$JsonData;->updateDate:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getUpdateStatus() - failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method
