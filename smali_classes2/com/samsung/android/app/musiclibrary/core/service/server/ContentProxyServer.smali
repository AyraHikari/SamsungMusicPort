.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;
    }
.end annotation


# static fields
.field private static final COLON:C = ':'

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

.field private static final DEBUG:Z = false

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-ContentServer"

.field private static final SLASH:C = '/'

.field private static final SMUSIC_CONTENT_SERVER:Ljava/lang/String; = "smusic_content_server"


# instance fields
.field private activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private callback:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;

.field private final context:Landroid/content/Context;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isCancel:Z

.field private isRunning:Z

.field private musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final port:I

.field private final serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->context:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->bind()Ljava/net/ServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->port:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    return-void
.end method

.method private final bind()Ljava/net/ServerSocket;
    .locals 5

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 112
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 115
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 117
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerSocket InetAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;->access$printInfoLog(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerSocket getLocalSocketAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;->access$printInfoLog(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerSocket fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->printErrorLog(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fail to create server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object p0

    return-object p0
.end method

.method private final printErrorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 130
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->isCancel:Z

    return-void
.end method

.method public final getBaseUrl(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/IpUtils;->getDeviceIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "localhost"

    :goto_0
    const-string v0, "if (useDeviceIp) IpUtils\u2026(context) else LOCAL_HOST"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->port:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->cancel()V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 50
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->isCancel:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "socket"

    .line 55
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    if-nez v4, :cond_0

    const-string v1, "activeQueue"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    if-nez v5, :cond_1

    const-string v1, "musicContent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 58
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->callback:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;

    move-object v1, v7

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;-><init>(Landroid/content/Context;Ljava/net/Socket;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;)V

    check-cast v7, Ljava/lang/Runnable;

    .line 52
    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 63
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->isRunning:Z

    return-void

    .line 66
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :goto_3
    throw v0
.end method

.method public final setCallback(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->callback:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;

    return-void
.end method

.method public final setMusicContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 1

    const-string v0, "musicContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-void
.end method

.method public final setPlayerQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-void
.end method

.method public final start()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->isRunning:Z

    .line 79
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "smusic_content_server"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
