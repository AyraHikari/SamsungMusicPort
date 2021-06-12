.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final COLON:C = ':'

.field private static final DEBUG:Z = false

.field private static final DEBUG_PATH:Z = false

.field private static final HTTP:Ljava/lang/String; = "http://"

.field public static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final PORT_END:I = 0xabe0

.field private static final PORT_START:I = 0xab90

.field private static final SLASH:C = '/'

.field private static final SMUSIC_MEDIA_SERVER:Ljava/lang/String; = "smusic_media_server"

.field private static final STREAMING:Ljava/lang/String; = "streaming"

.field private static volatile sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

.field private mIsCancel:Z

.field private mIsRunning:Z

.field private final mServerSocket:Ljava/net/ServerSocket;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsCancel:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsRunning:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->bind()Ljava/net/ServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method private bind()Ljava/net/ServerSocket;
    .locals 3

    const v0, 0xab90

    .line 113
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->createSocket(I)Ljava/net/ServerSocket;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;
    .locals 2

    .line 90
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    if-nez v0, :cond_1

    .line 91
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    .line 95
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 97
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    return-object p0
.end method

.method private createSocket(I)Ljava/net/ServerSocket;
    .locals 2

    .line 135
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->printErrorLog(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    const v0, 0xabe0

    if-ge v0, p1, :cond_0

    const-string p1, "fail to create server socket."

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->printErrorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->createSocket(I)Ljava/net/ServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "streaming"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getPathUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 305
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isDirectUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v1, "file"

    .line 288
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dcf"

    .line 289
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isRunning()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsRunning:Z

    return v0
.end method

.method private static obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;
    .locals 2

    .line 101
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;
    .locals 1

    .line 73
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;IZZ)Landroid/net/Uri;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const-string p1, "Socket server is null!. Please check socket server."

    .line 258
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->printErrorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->throwIfFileChainIsAbsent()V

    .line 262
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    move-result-object v0

    .line 263
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->putPlayingItem(ILjava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 266
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getPlayingUri()Landroid/net/Uri;

    move-result-object p2

    .line 267
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->isDirectUri(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    :cond_1
    if-eqz p4, :cond_2

    .line 272
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/IpUtils;->getDeviceIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "localhost"

    .line 273
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "http://"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {p2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    .line 274
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getRandomPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private throwIfFileChainIsAbsent()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please make sure setFileChain() was called before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsCancel:Z

    return-void
.end method

.method public requestCacheOnly(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->throwIfFileChainIsAbsent()V

    .line 206
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->requestCacheOnly(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    return-void
.end method

.method public requestLocalContentsUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 232
    invoke-static {p2, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;Ljava/lang/String;)V

    const-string v8, "0"

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object p1

    .line 244
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;IZZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;I)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;IZZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 3

    .line 171
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->throwIfFileChainIsAbsent()V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServerResponder;-><init>(Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 177
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsRunning:Z

    return-void

    .line 180
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 184
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :cond_2
    :goto_3
    throw v0
.end method

.method public setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->mIsRunning:Z

    .line 83
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "smusic_media_server"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
