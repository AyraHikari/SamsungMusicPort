.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/android/volley/Cache;

.field private final f:Lcom/android/volley/Network;

.field private final g:Lcom/android/volley/ResponseDelivery;

.field private final h:[Lcom/android/volley/NetworkDispatcher;

.field private i:Lcom/android/volley/CacheDispatcher;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .locals 3

    .line 105
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 59
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->j:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/android/volley/RequestQueue;->e:Lcom/android/volley/Cache;

    .line 92
    iput-object p2, p0, Lcom/android/volley/RequestQueue;->f:Lcom/android/volley/Network;

    .line 93
    new-array p1, p3, [Lcom/android/volley/NetworkDispatcher;

    iput-object p1, p0, Lcom/android/volley/RequestQueue;->h:[Lcom/android/volley/NetworkDispatcher;

    .line 94
    iput-object p4, p0, Lcom/android/volley/RequestQueue;->g:Lcom/android/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    .line 208
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->a(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    .line 209
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(I)Lcom/android/volley/Request;

    const-string v0, "add-to-queue"

    .line 215
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 211
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 6

    .line 124
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->b()V

    .line 126
    new-instance v0, Lcom/android/volley/CacheDispatcher;

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->e:Lcom/android/volley/Cache;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->g:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->i:Lcom/android/volley/CacheDispatcher;

    .line 127
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->i:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->h:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 131
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->f:Lcom/android/volley/Network;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->e:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->g:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    .line 133
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->h:[Lcom/android/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 134
    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->i:Lcom/android/volley/CacheDispatcher;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->i:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->a()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->h:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v3}, Lcom/android/volley/NetworkDispatcher;->a()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method b(Lcom/android/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->j:Ljava/util/List;

    monitor-enter v1

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestFinishedListener;

    .line 238
    invoke-interface {v2, p1}, Lcom/android/volley/RequestQueue$RequestFinishedListener;->a(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 240
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 235
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
