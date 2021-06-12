.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/Thread;

.field private volatile f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;J[Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    .line 216
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    .line 218
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->c:[Ljava/util/concurrent/BlockingQueue;

    .line 219
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->b:J

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 1

    .line 341
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;

    if-eqz v0, :cond_0

    .line 342
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/Copyable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/concurrent/BlockingQueue;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)Z"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->b(Ljava/util/concurrent/BlockingQueue;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .line 309
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->e()V

    .line 319
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->z_()Z

    move-result v0

    if-nez v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during handling request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    const-string v2, "Request allocated in: "

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->c:Ljava/lang/Exception;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 332
    :cond_2
    throw v0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method private b(Ljava/util/concurrent/BlockingQueue;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;"
        }
    .end annotation

    .line 348
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object p1
.end method

.method private d()V
    .locals 10

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->b:J

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 274
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    invoke-virtual {v7, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-wide v5, v3

    .line 278
    :catch_1
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v5

    sub-long/2addr v1, v7

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a()V

    .line 285
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private e()Z
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->c:[Ljava/util/concurrent/BlockingQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 290
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a(Ljava/util/concurrent/BlockingQueue;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private f()Z
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->c:[Ljava/util/concurrent/BlockingQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 299
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    const-string v2, "worker shutdown requested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 225
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    const-string v2, "worker created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->b()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 243
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    const-string v1, "worker started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->d()V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->a:Ljava/lang/String;

    const-string v1, "worker finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
