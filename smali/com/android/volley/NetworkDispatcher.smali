.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/volley/Network;

.field private final c:Lcom/android/volley/Cache;

.field private final d:Lcom/android/volley/ResponseDelivery;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->e:Z

    .line 62
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    .line 63
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->b:Lcom/android/volley/Network;

    .line 64
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->c:Lcom/android/volley/Cache;

    .line 65
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->d:Lcom/android/volley/ResponseDelivery;

    return-void
.end method

.method private a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 172
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->d:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/volley/NetworkDispatcher;->a(Lcom/android/volley/Request;)V

    return-void
.end method

.method private b(Lcom/android/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/android/volley/Request;->b()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->e:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method a(Lcom/android/volley/Request;)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    const-string v2, "network-queue-take"

    .line 118
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/android/volley/Request;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "network-discard-cancelled"

    .line 123
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/volley/Request;->x()V

    return-void

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkDispatcher;->b(Lcom/android/volley/Request;)V

    .line 131
    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->b:Lcom/android/volley/Network;

    invoke-interface {v2, p1}, Lcom/android/volley/Network;->a(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v2

    const-string v3, "network-http-complete"

    .line 132
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 136
    iget-boolean v3, v2, Lcom/android/volley/NetworkResponse;->e:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/volley/Request;->w()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "not-modified"

    .line 137
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/android/volley/Request;->x()V

    return-void

    .line 143
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v2

    const-string v3, "network-parse-complete"

    .line 144
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/volley/NetworkDispatcher;->c:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    invoke-interface {v3, v4, v5}, Lcom/android/volley/Cache;->a(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string v3, "network-cache-written"

    .line 150
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->v()V

    .line 155
    iget-object v3, p0, Lcom/android/volley/NetworkDispatcher;->d:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v3, p1, v2}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 156
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Lcom/android/volley/Response;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unhandled exception %s"

    const/4 v4, 0x1

    .line 162
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 165
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->d:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v3}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 166
    invoke-virtual {p1}, Lcom/android/volley/Request;->x()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 159
    invoke-direct {p0, p1, v2}, Lcom/android/volley/NetworkDispatcher;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 160
    invoke-virtual {p1}, Lcom/android/volley/Request;->x()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 87
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/volley/NetworkDispatcher;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    iget-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->e:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const-string v0, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    const/4 v1, 0x0

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
