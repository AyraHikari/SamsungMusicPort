.class public final Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;
    .locals 4

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    if-nez v1, :cond_0

    .line 18
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->setBasePath(Ljava/lang/String;)V

    .line 22
    new-instance v2, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;->obtain()Lcom/samsung/android/app/musiclibrary/core/service/streaming/downloader/DownloaderManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    move-result-object p0

    .line 27
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->start()V

    .line 29
    sput-object p0, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 33
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    return-object p0
.end method
