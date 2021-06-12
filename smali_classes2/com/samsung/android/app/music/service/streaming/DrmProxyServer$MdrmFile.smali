.class final Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/ServerProxyResponsor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MdrmFile"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_fileRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->b:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->b:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p2

    const-string v0, "drmServer.open(context, _fileRequest.url, true)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getPlayingUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;->a(Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 62
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-void

    .line 59
    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IllegalDrmStateException;-><init>(I)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 62
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    throw v0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 10

    .line 137
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    .line 140
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v0, 0x1388

    .line 141
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "Range: "

    .line 142
    invoke-static {p2, v2, v1, v0, v1}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 143
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeResponse range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;->a(Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;Ljava/lang/String;)V

    .line 144
    :cond_1
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Range"

    .line 145
    invoke-virtual {p1, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 148
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    const/16 v4, 0xce

    if-eq v2, v3, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 150
    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HTTP response error code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_4
    :goto_1
    const-string v3, "Content-Range"

    .line 152
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    sget-object v5, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Range "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;->a(Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    const-string v6, "connection.headerFields"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 156
    sget-object v7, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;->a(Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-ne v2, v4, :cond_6

    const-string p2, "HTTP/1.1 206 Partial Content"

    .line 161
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Range: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v4, "HTTP/1.1 200 OK"

    .line 164
    invoke-static {p3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 165
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    if-nez v3, :cond_7

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Range: bytes 0-0/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 172
    :cond_7
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, "Content-Type: audio/mpeg"

    .line 173
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, "Accept-Ranges: bytes"

    .line 174
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, "Connection: close"

    .line 175
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p2, ""

    .line 176
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtainInputStream responseCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;->a(Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;Ljava/lang/String;)V

    .line 179
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v3, p2

    check-cast v3, Ljava/io/InputStream;

    const-string v4, "input"

    .line 180
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, p3, v4, v0, v1}, Lkotlin/io/ByteStreamsKt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p3

    goto :goto_4

    :catch_0
    move-exception p3

    move-object v2, p3

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_1
    move-exception p2

    .line 183
    :try_start_5
    sget-object p3, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;->a(Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :goto_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p2

    .line 138
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public active(Z)V
    .locals 0

    return-void
.end method

.method public getAvailableBytes()J
    .locals 3

    .line 79
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->b:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_fileRequest.url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 3

    .line 102
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 3

    .line 75
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public isDead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 3

    .line 110
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 2

    .line 83
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 2

    .line 106
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 2

    .line 87
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public writeResponse(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->b:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v1

    const-string v2, "drmServer.open(context, _fileRequest.url, true)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getPlayingUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content.playingUri.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p1}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDRM "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;->b:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 127
    :try_start_4
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 118
    monitor-exit p0

    throw p1
.end method
