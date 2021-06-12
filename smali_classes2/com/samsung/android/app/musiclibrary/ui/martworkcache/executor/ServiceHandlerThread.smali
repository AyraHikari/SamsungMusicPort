.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Landroid/os/Handler;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Runnable;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-object v0
.end method

.method private static a()V
    .locals 3

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 46
    monitor-exit v0

    return-void

    .line 48
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ServiceHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a:Landroid/os/Handler;

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;I)V
    .locals 3

    .line 16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a()V

    .line 17
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
