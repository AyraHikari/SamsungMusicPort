.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;
    }
.end annotation


# static fields
.field private static final COLON:C = ':'

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;

.field private static final DEBUG:Z = false

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Server"

.field private static final SLASH:C = '/'

.field private static final SMUSIC_SERVER:Ljava/lang/String; = "smusic_server"


# instance fields
.field private final context:Landroid/content/Context;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private function:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/Socket;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private isCancel:Z

.field private isRunning:Z

.field private final port:I

.field private responder:Ljava/lang/Runnable;

.field private final serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->context:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->bind()Ljava/net/ServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->port:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;

    return-void
.end method

.method private final bind()Ljava/net/ServerSocket;
    .locals 4

    .line 29
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 30
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerSocket InetAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".inetAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;->access$printInfoLog(Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerSocket getLocalSocketAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".localSocketAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;->access$printInfoLog(Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->isCancel:Z

    return-void
.end method

.method public final getBaseUrl(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/IpUtils;->getDeviceIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "localhost"

    :goto_0
    const-string v0, "if (useDeviceIp) IpUtils\u2026) else IpUtils.LOCAL_HOST"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->port:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getFunction()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/net/Socket;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->function:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getResponder()Ljava/lang/Runnable;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->responder:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->cancel()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 87
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;

    return-void
.end method

.method public run()V
    .locals 4

    .line 64
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->isCancel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->function:Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "socket"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->release()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->isRunning:Z

    return-void

    .line 71
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->release()V

    throw v0
.end method

.method public final setFunction(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/Socket;",
            "+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setResponder(Ljava/lang/Runnable;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->responder:Ljava/lang/Runnable;

    return-void
.end method

.method public final setRunnable(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/Socket;",
            "+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final start()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ProxyServer;->isRunning:Z

    .line 49
    new-instance v0, Ljava/lang/Thread;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "smusic_server"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
