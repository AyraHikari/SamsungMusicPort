.class public Lcom/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/CacheDispatcher$WaitingRequestManager;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/android/volley/Cache;

.field private final e:Lcom/android/volley/ResponseDelivery;

.field private volatile f:Z

.field private final g:Lcom/android/volley/CacheDispatcher$WaitingRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/volley/VolleyLog;->b:Z

    sput-boolean v0, Lcom/android/volley/CacheDispatcher;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->f:Z

    .line 71
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    .line 72
    iput-object p2, p0, Lcom/android/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    .line 73
    iput-object p3, p0, Lcom/android/volley/CacheDispatcher;->d:Lcom/android/volley/Cache;

    .line 74
    iput-object p4, p0, Lcom/android/volley/CacheDispatcher;->e:Lcom/android/volley/ResponseDelivery;

    .line 75
    new-instance p1, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-direct {p1, p0}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;-><init>(Lcom/android/volley/CacheDispatcher;)V

    iput-object p1, p0, Lcom/android/volley/CacheDispatcher;->g:Lcom/android/volley/CacheDispatcher$WaitingRequestManager;

    return-void
.end method

.method static synthetic a(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/CacheDispatcher;)Lcom/android/volley/ResponseDelivery;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/volley/CacheDispatcher;->e:Lcom/android/volley/ResponseDelivery;

    return-object p0
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/volley/CacheDispatcher;->a(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->f:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method a(Lcom/android/volley/Request;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/android/volley/Request;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cache-discard-canceled"

    .line 128
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->d:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/volley/Cache;->a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "cache-miss"

    .line 135
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->g:Lcom/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a(Lcom/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 144
    :cond_2
    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "cache-hit-expired"

    .line 145
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 147
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->g:Lcom/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a(Lcom/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const-string v1, "cache-hit"

    .line 154
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/android/volley/NetworkResponse;

    iget-object v2, v0, Lcom/android/volley/Cache$Entry;->a:[B

    iget-object v3, v0, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 156
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v1

    const-string v2, "cache-hit-parsed"

    .line 158
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 162
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->e:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v1}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_0

    :cond_5
    const-string v2, "cache-hit-refresh-needed"

    .line 167
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, v1, Lcom/android/volley/Response;->d:Z

    .line 172
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->g:Lcom/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a(Lcom/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->e:Lcom/android/volley/ResponseDelivery;

    new-instance v2, Lcom/android/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/android/volley/CacheDispatcher$1;-><init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->e:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v1}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 89
    sget-boolean v0, Lcom/android/volley/CacheDispatcher;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 90
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->d:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->a()V

    .line 97
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/volley/CacheDispatcher;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    iget-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->f:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 104
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
